#!/usr/bin/env bash
# Idempotent Android SDK setup for Claude Code cloud containers (Linux x86_64, JDK 17+).
# Verified 2026-10-28; see docs/roux-android/research/cloud-toolchain.md.
#
# Usage (cloud environment setup script, SessionStart hook, or by hand):
#   bash docs/roux-android/setup-android-sdk.sh [ANDROID_PROJECT_DIR]
#
# What it does (each step is skipped when already done):
#   1. installs Android cmdline-tools (sha1-checked) into $ANDROID_SDK_DIR
#   2. installs platform-tools, platforms;android-$ANDROID_PLATFORM, build-tools;$ANDROID_BUILD_TOOLS
#      (cmdline-tools >= 23 accept the SDK license implicitly and write licenses/)
#   3. writes a Gradle init script that redirects Maven Central to Google's mirror
#      (the cloud egress IP gets HTTP 429 from repo.maven.apache.org)
#   4. writes sdk.dir into <project>/local.properties (if a Gradle project dir is found)
#   5. persists ANDROID_HOME/PATH via $CLAUDE_ENV_FILE (SessionStart hooks) and ~/.bashrc
#
# Tunables (environment variables):
#   ANDROID_SDK_DIR        install dir                     (default: $HOME/android-sdk)
#   ANDROID_PLATFORM       platform package suffix         (default: 37.0  -> compileSdk = 37)
#   ANDROID_BUILD_TOOLS    build-tools version             (default: 37.0.0; pin it via buildToolsVersion,
#                          otherwise AGP 9.5 auto-downloads its default 36.0.0 on first build)
#   ANDROID_PROJECT_DIR    Gradle project for local.properties (default: $1, $CLAUDE_PROJECT_DIR or $PWD)
#   GRADLE_CENTRAL_MIRROR  1 = write the Maven Central mirror init script (default: 1)
#   ANDROID_PERSIST_BASHRC 1 = add ANDROID_HOME/PATH exports to ~/.bashrc (default: 1)
#   ANDROID_WARM_GRADLE    1 = run ./gradlew assembleDebug once to fill caches (~3 min cold; default: 0)
set -euo pipefail

SDK="${ANDROID_SDK_DIR:-$HOME/android-sdk}"
PLATFORM="${ANDROID_PLATFORM:-37.0}"
BUILD_TOOLS="${ANDROID_BUILD_TOOLS:-37.0.0}"
# cmdline-tools 23.0 (from https://dl.google.com/android/repository/repository2-3.xml)
CLT_ZIP="commandlinetools-linux-16111833_latest.zip"
CLT_SHA1="e025545c62a8e64c7559119566a569fb1dec5f60"
MIRROR="https://maven-central.storage-download.googleapis.com/maven2/"

log() { echo "[setup-android-sdk] $*" >&2; }
die() { log "ERROR: $*"; exit 1; }

# --- 0. prerequisites ---------------------------------------------------------------
command -v java >/dev/null || die "java not found (need JDK 17+; the cloud image ships OpenJDK 21)"
java_major=$(java -XshowSettings:properties -version 2>&1 | sed -n 's/^ *java.specification.version = //p' | cut -d. -f1)
[ "${java_major:-0}" -ge 17 ] || die "JDK 17+ required, found ${java_major:-unknown}"
command -v curl >/dev/null || die "curl not found"

# --- 1. cmdline-tools ---------------------------------------------------------------
SDKMANAGER="$SDK/cmdline-tools/latest/bin/sdkmanager"
if [ ! -x "$SDKMANAGER" ]; then
  log "installing cmdline-tools into $SDK/cmdline-tools/latest"
  tmp=$(mktemp -d)
  trap 'rm -rf "$tmp"' EXIT
  curl -fsSL --retry 3 -o "$tmp/clt.zip" "https://dl.google.com/android/repository/$CLT_ZIP"
  echo "$CLT_SHA1  $tmp/clt.zip" | sha1sum -c --quiet - || die "cmdline-tools checksum mismatch"
  mkdir -p "$tmp/x"
  if command -v unzip >/dev/null; then
    unzip -q "$tmp/clt.zip" -d "$tmp/x"
  else
    python3 -I -c 'import sys, zipfile; zipfile.ZipFile(sys.argv[1]).extractall(sys.argv[2])' "$tmp/clt.zip" "$tmp/x"
    chmod +x "$tmp/x/cmdline-tools/bin/"*
  fi
  mkdir -p "$SDK/cmdline-tools"
  rm -rf "$SDK/cmdline-tools/latest"
  mv "$tmp/x/cmdline-tools" "$SDK/cmdline-tools/latest"
fi

# --- 2. SDK packages ------------------------------------------------------------------
pkgs=()
[ -x "$SDK/platform-tools/adb" ] || pkgs+=("platform-tools")
[ -f "$SDK/platforms/android-$PLATFORM/android.jar" ] || pkgs+=("platforms;android-$PLATFORM")
[ -d "$SDK/build-tools/$BUILD_TOOLS" ] || pkgs+=("build-tools;$BUILD_TOOLS")
if [ ${#pkgs[@]} -gt 0 ]; then
  log "installing ${pkgs[*]}"
  # sdkmanager is now a thin wrapper around the new `android` CLI (android sdk install);
  # it prints a deprecation banner and accepts the license itself. No `yes |` needed.
  if ! out=$("$SDKMANAGER" --sdk_root="$SDK" "${pkgs[@]}" 2>&1); then
    printf '%s\n' "$out" >&2
    die "sdkmanager failed (proxy problem? see /root/.ccr/README.md)"
  fi
  printf '%s\n' "$out" | grep -vE '^(Picked up|WARNING: The SDK Manager|The .android. binary|To learn more|$)' >&2 || true
fi
[ -f "$SDK/licenses/android-sdk-license" ] || die "license file missing in $SDK/licenses"

# --- 3. Maven Central mirror for Gradle (cloud egress is rate-limited by Sonatype) ----
if [ "${GRADLE_CENTRAL_MIRROR:-1}" = "1" ]; then
  init_dir="${GRADLE_USER_HOME:-$HOME/.gradle}/init.d"
  mkdir -p "$init_dir"
  cat > "$init_dir/cloud-maven-mirror.init.gradle.kts" <<EOF
// Written by setup-android-sdk.sh. Cloud-container only: Sonatype rate-limits the shared egress IP
// (HTTP 429 from repo.maven.apache.org / repo1.maven.org). Redirect Maven Central to Google's mirror.
val centralMirror = "$MIRROR"
val centralUrls = setOf("https://repo.maven.apache.org/maven2", "https://repo1.maven.org/maven2")

fun RepositoryHandler.useCentralMirror() = configureEach {
    if (this is MavenArtifactRepository && url.toString().trimEnd('/') in centralUrls) {
        setUrl(centralMirror)
    }
}

beforeSettings {
    pluginManagement.repositories.useCentralMirror()
    dependencyResolutionManagement.repositories.useCentralMirror()
}

allprojects {
    buildscript.repositories.useCentralMirror()
    repositories.useCentralMirror()
    // Robolectric downloads android-all-instrumented jars (~240 MB) at test runtime from Maven Central.
    tasks.withType<Test>().configureEach {
        systemProperty("robolectric.dependency.repo.url", centralMirror)
    }
}
EOF
fi

# --- 4. local.properties ----------------------------------------------------------------
proj="${ANDROID_PROJECT_DIR:-${1:-}}"
if [ -z "$proj" ]; then
  for d in "${CLAUDE_PROJECT_DIR:-}" "$PWD"; do
    if [ -n "$d" ] && { [ -f "$d/settings.gradle.kts" ] || [ -f "$d/settings.gradle" ]; }; then proj="$d"; break; fi
  done
fi
if [ -n "$proj" ]; then
  [ -d "$proj" ] || die "project dir $proj does not exist"
  lp="$proj/local.properties"
  if [ -f "$lp" ] && grep -q '^sdk.dir=' "$lp"; then
    sed -i "s|^sdk.dir=.*|sdk.dir=$SDK|" "$lp"
  else
    echo "sdk.dir=$SDK" >> "$lp"
  fi
  log "wrote sdk.dir to $lp (keep local.properties out of git)"
fi

# --- 5. persist environment ----------------------------------------------------------
exports="export ANDROID_HOME=\"$SDK\"
export ANDROID_SDK_ROOT=\"$SDK\"
export PATH=\"$SDK/cmdline-tools/latest/bin:$SDK/platform-tools:\$PATH\""
if [ -n "${CLAUDE_ENV_FILE:-}" ] && ! grep -qF "export ANDROID_HOME=\"$SDK\"" "$CLAUDE_ENV_FILE" 2>/dev/null; then
  printf '%s\n' "$exports" >> "$CLAUDE_ENV_FILE"
fi
if [ "${ANDROID_PERSIST_BASHRC:-1}" = "1" ] && ! grep -q '# >>> android-sdk >>>' "$HOME/.bashrc" 2>/dev/null; then
  printf '\n# >>> android-sdk >>>\n%s\n# <<< android-sdk <<<\n' "$exports" >> "$HOME/.bashrc"
fi

# --- 6. optional cache warm-up ----------------------------------------------------------
if [ "${ANDROID_WARM_GRADLE:-0}" = "1" ] && [ -n "$proj" ] && [ -x "$proj/gradlew" ]; then
  log "warming Gradle caches (assembleDebug)"
  (cd "$proj" && ANDROID_HOME="$SDK" ./gradlew --quiet assembleDebug) >&2
fi

echo "Android SDK ready: ANDROID_HOME=$SDK (platforms;android-$PLATFORM, build-tools;$BUILD_TOOLS)"
