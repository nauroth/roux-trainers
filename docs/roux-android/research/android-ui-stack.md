# Android UI stack: Roux trainer (as of 2026-10-28)

Input for an AI developer working in a Linux x86_64 container with **no /dev/kvm and no emulator**.
Versions come from Google Maven / Maven Central metadata or official release notes; links are inline.
`UNVERIFIED` means no primary source confirmed the claim.

## Recommendation

1. **Stack:** Kotlin 2.4.21 + Jetpack Compose (BOM 2026.09.00) + Material 3. Use **material3 1.5.0-beta02** (pinned over the BOM's 1.4.0) because M3 Expressive (`MaterialExpressiveTheme`, `MotionScheme.expressive()`, the new components) only exists in 1.5.x. Build with AGP 9.5.0 (built-in Kotlin) on Gradle ≥ 9.6, with compileSdk/targetSdk 37 and minSdk 26.
2. **Navigation:** Navigation 3 (1.2.0) + material3-adaptive 1.3.0. Single activity, edge-to-edge, predictive back.
3. **Virtual cube:** a **custom renderer in Compose `Canvas`/`DrawScope`**, written as pure-Kotlin 3D math (quaternion camera, per-layer turn rotation, perspective projection, back-face culling, depth-sorted quads). It renders in every JVM screenshot tool, costs only draw-phase invalidation per frame, makes sticker masking a colour lookup, and ports the existing three.js `CubeSim.tsx` logic. Keep Filament/SceneView as a later "premium look" option that sits behind the same `CubeState` API.
4. **Seeing the UI headlessly:** **Roborazzi 1.77 + Robolectric 4.17 (Native Graphics)** is the main tool. It drives real Compose UI tests (drag the cube, advance the clock) and writes PNGs plus a deterministic UI-tree JSON that an agent can read. Add `android preview render` (Android CLI) or compose-ai-tools for quick one-off `@Preview` renders. GL, SurfaceView and WebView content will **not** render in any JVM tool.
5. **Libraries:** ViewModel + StateFlow + `collectAsStateWithLifecycle`; Hilt 2.60.1 via KSP; Room 3.0.x for solves and DataStore 1.3.0 for settings; Vico 3.3.1 for charts; Kable later for smart-cube BLE.
6. **Agent tooling:** install Google's `android/skills` plugin and the Android CLI (headless parts only), the Roborazzi skill, and chrisbanes/skills. The emulator-based plugins and `mobile-mcp` are useless here unless a remote device is attached.

---

## 1. UI toolkit: Kotlin + Compose + Material 3 (confirmed current)

- **Official stance.** Google's architecture guidance is Compose-era. It strongly recommends ViewModels at screen level, collecting state with `collectAsStateWithLifecycle`, a single-activity app, and "Use Navigation 3 to navigate between screens" ([arch recommendations](https://developer.android.com/topic/architecture/recommendations)). Material says "Material Android is Compose-first" ([m3 blog](https://m3.material.io/blog/material-is-compose-first)).
- **Compose BOM 2026.09.00** (Sep 9 2026) maps to ui/foundation/runtime/animation **1.12.1** and material3 **1.4.0** ([BOM pom](https://dl.google.com/android/maven2/androidx/compose/compose-bom/2026.09.00/compose-bom-2026.09.00.pom), [mapping](https://developer.android.com/develop/ui/compose/bom/bom-mapping)). Compose 1.13.0-beta02 is the current pre-release ([GMaven](https://dl.google.com/android/maven2/androidx/compose/ui/ui/maven-metadata.xml)). Compose 1.12 added Grid named areas and FlexBox config, on top of an experimental **Style API** introduced in 1.11 ([foundation notes](https://developer.android.com/jetpack/androidx/releases/compose-foundation)).
- **Material3 versions** ([release notes](https://developer.android.com/jetpack/androidx/releases/compose-material3)):
  - Stable is still **1.4.0** (Sep 24 2025). Its 1.4.0-beta01 notes say: "All public APIs tagged with ExperimentalMaterial3ExpressiveApi … have been removed, please switch to 1.5.0-alpha".
  - Latest is **1.5.0-beta02** (Oct 21 2026), following beta01 on Oct 7. Beta means the API surface is near-final.
  - Expressive APIs promoted to non-experimental in 1.5.0-alpha: ButtonGroup, SplitButton, FloatingToolbar, flexible TopAppBars and BottomAppBar, FAB/FAB Menu, ToggleButtons, expressive menus and list items, WavyProgressIndicator. `materialExpressiveTheme`/`expressiveLightColorScheme` were also promoted (alpha18).
  - **Still experimental:** `MaterialShapes` and `LoadingIndicator`, whose promotions were reverted ([same page](https://developer.android.com/jetpack/androidx/releases/compose-material3)).
  - Breaking change in alpha29: `Slider`/`RangeSlider` now take a `SliderState`.
  - `LocalMotionScheme` was removed in favour of `MaterialTheme.motionScheme`.
  - A stable date for 1.5.0 is UNVERIFIED.
- **Motion physics.** `MotionScheme` provides spring-based spatial and effects specs, with `MotionScheme.expressive()` for hero interactions ([MotionScheme ref](https://developer.android.com/reference/kotlin/androidx/compose/material3/MotionScheme), [M3 motion blog](https://m3.material.io/blog/m3-expressive-motion-theming)). Androidify, Google's reference expressive app, uses `MaterialExpressiveTheme` + `MotionScheme.expressive()` + `MaterialShapes` for shared-element shape morphs ([blog](https://android-developers.googleblog.com/2025/05/androidify-building-delightful-ui-with-compose.html)).
- **Shape morphing.** `androidx.graphics:graphics-shapes` **1.1.0** provides `RoundedPolygon` and `Morph` (progress 0→1); 1.1.0 adds SVG path import ([graphics notes](https://developer.android.com/jetpack/androidx/releases/graphics)). Chips and icon buttons in 1.5.0 have built-in morph overloads ([m3 notes](https://developer.android.com/jetpack/androidx/releases/compose-material3)).
- **Icons.** `material-icons-*` is no longer recommended (and no longer pulled in by M3 1.4+). Use Material Symbols vector XMLs from fonts.google.com/icons ([m3 1.4.0 notes](https://developer.android.com/jetpack/androidx/releases/compose-material3)).
- **Kotlin 2.4.21** is the latest stable (bug-fix release, Oct 8 2026). 2.5.0 is planned for Dec 2026 and 2.5.0-Beta2 is out ([kotlinlang releases](https://kotlinlang.org/docs/releases.html), [Maven Central](https://repo1.maven.org/maven2/org/jetbrains/kotlin/kotlin-gradle-plugin/maven-metadata.xml)). The Compose compiler plugin `org.jetbrains.kotlin.plugin.compose` uses the same version as Kotlin ([m3 setup snippet](https://developer.android.com/jetpack/androidx/releases/compose-material3)).
- **AGP 9.5.0** was published Oct 28 2026 ([GMaven pom date](https://dl.google.com/android/maven2/com/android/tools/build/gradle/maven-metadata.xml)). It requires Gradle 9.6.0+ and JDK 17+, and supports up to API 37 ([AGP 9.5 notes](https://developer.android.com/build/releases/agp-9-5-0-release-notes)). Gradle 9.8.2 is current ([services.gradle.org](https://services.gradle.org/versions/current)).
  - AGP 9 has **built-in Kotlin**: remove `org.jetbrains.kotlin.android`. `kotlin-kapt` is incompatible, so use KSP ([migrate guide](https://developer.android.com/build/migrate-to-built-in-kotlin)).
  - AGP 10 will force the new Variant API ([AGP notes](https://developer.android.com/build/releases/gradle-plugin)).
- **SDK levels.**
  - **Play target requirement:** "New apps and app updates must target Android 16 (API level 36) or higher" from Aug 31 2026 ([Play target SDK](https://developer.android.com/google/play/requirements/target-sdk)).
  - **Android 17 / API 37:** reported stable on Jun 16 2026 by secondary sources ([Android Authority](https://www.androidauthority.com/android-17-3561251/), [Wikipedia](https://en.wikipedia.org/wiki/Android_17)). The developer.android.com release-notes page still lists betas, so primary confirmation is UNVERIFIED. However, Robolectric registers API 37 as `"17" … "REL"` ([DefaultSdkProvider](https://github.com/robolectric/robolectric/blob/master/robolectric/src/main/java/org/robolectric/plugins/DefaultSdkProvider.java)).
  - **compileSdk/targetSdk 37 recommended.** A new, adaptive-by-design Compose app loses nothing from the orientation changes below.
  - **minSdk:** AndroidX's default minSdk moved to 23 ([compose-ui notes](https://developer.android.com/jetpack/androidx/releases/compose-ui)), and Vico needs 23+. **minSdk 26** is a judgment call. Gate AGSL (API 33+) and dynamic color (API 31+) behind runtime checks ([AGSL](https://developer.android.com/develop/ui/views/graphics/agsl), [M3 dynamic color](https://developer.android.com/develop/ui/compose/designsystems/material3)).
- **Must-handle platform behaviour (targetSdk ≥ 36)** ([Android 16 behaviour changes](https://developer.android.com/about/versions/16/behavior-changes-16)):
  - **Edge-to-edge** is mandatory: the `windowOptOutEdgeToEdgeEnforcement` opt-out is disabled. Use `enableEdgeToEdge()` and window insets ([insets](https://developer.android.com/develop/ui/compose/layouts/insets)).
  - **Predictive back** system animations are on by default and `onBackPressed` is no longer called.
  - On displays **≥ 600dp**, orientation, resizability and aspect-ratio locks are ignored. Android 17 (targetSdk 37) removes the opt-out ([blog](https://developer.android.com/blog/posts/prepare-your-app-for-the-resizability-and-orientation-changes-in-android-17)). Do not portrait-lock the timer; design for compact, medium and expanded widths.
- **Navigation 3.** 1.0.0 shipped Nov 19 2025. **1.2.0** is stable (Sep 23 2026) and adds a result API, KMP deep links, and `NavigationBackHandler` predictive-back integration. 1.1 added shared elements between scenes and `List<SceneStrategy>` ([Nav3 notes](https://developer.android.com/jetpack/androidx/releases/navigation3), [guide](https://developer.android.com/guide/navigation/navigation-3)). Companion artifacts are `lifecycle-viewmodel-navigation3` 2.11.0 and `material3-adaptive-navigation3` 1.3.0 ([GMaven](https://dl.google.com/android/maven2/androidx/compose/material3/adaptive/adaptive-navigation3/maven-metadata.xml)). The general navigation page still shows navigation-compose 2.10.2 ([guide](https://developer.android.com/guide/navigation)), but the architecture page is the stronger signal for a new app.
- **Also new.**
  - Compose Multiplatform **1.12.2** (Oct 15) tracks Jetpack Compose 1.12.1 and Material3 1.5.0-alpha22 ([CMP releases](https://github.com/JetBrains/compose-multiplatform/releases)).
  - Lightbuild, a YAML build config, is experimental; Google recommends Kotlin DSL for production ([Lightbuild](https://developer.android.com/tools/agents/lightbuild)).

## 2. Rendering the virtual cube

The existing web app's `src/components/CubeSim.tsx` draws the cube with three.js `MeshBasicMaterial`, which is unlit and flat-coloured. Masked stickers are drawn as a grey fill with a coloured border. The target "look" therefore needs no physically based rendering.

| Option | Look | 60–120 fps | Effort | JVM screenshot (Roborazzi/Paparazzi) | KMP | Verdict |
|---|---|---|---|---|---|---|
| **Compose `Canvas`/`DrawScope` + own 3D projection** | Flat or gradient shading, rounded stickers, Skia anti-aliasing; AGSL sheen on API 33+ | Fine: ~81 visible quads per frame; state read only in the draw lambda means "Compose UI runs only the draw phase" ([phases](https://developer.android.com/develop/ui/compose/phases)) | Medium (math + depth sort); estimate UNVERIFIED | **Yes**: plain Canvas drawing renders in RNG and layoutlib | **Yes** (common Compose Canvas) | **Recommended** |
| Android `View` Canvas (`drawVertices`, `Camera`) | Same as above | Same | Medium | Yes | No | Only if you need `drawVertices`; reachable from Compose via `drawIntoCanvas { it.nativeCanvas }` ([draw overview](https://developer.android.com/develop/ui/compose/graphics/draw/overview)) |
| `Modifier.graphicsLayer` rotationX/Y per face | 6 flat faces only; layer turns are awkward | Good | Low, but a dead end | Yes | Yes | Use for card flips, not for the cube ([graphics modifiers](https://developer.android.com/develop/ui/compose/graphics/draw/modifiers)) |
| Raw OpenGL ES (GLSurfaceView / `androidx.graphics` GLRenderer) | Anything | Best | High | **No**: Robolectric's `ShadowGLES20` is a counter-only fake ([source](https://github.com/robolectric/robolectric/blob/master/shadows/framework/src/main/java/org/robolectric/shadows/ShadowGLES20.java)) | No | Overkill |
| **Filament** 1.77.3 (Maven Central; GitHub tag v1.79.0) | Physically based rendering, image-based lighting, shadows | Best | High (materials compiled with `matc`; JNI) | No (GPU backends only: GLES 3 / Vulkan) ([repo](https://github.com/google/filament)) | No | Premium path later |
| **SceneView** 4.62.0 (Filament inside Compose; has a `CubeNode` primitive) | PBR, bloom, SSAO | Good | Medium | No (GPU) | Alpha in CMP ([repo](https://github.com/sceneview/sceneview)) | Requires compileSdk 37, minSdk 24, AGP 9.4+, JVM 21; candidate for a v2 "3D mode" |
| WebView + **cubing.js** `<twisty-player>` (three.js) | Good, and battle-tested | WebGL in WebView: OK, but adds startup latency and a JS bridge | Low to start; high to integrate gestures, timer and theming | No (`ShadowWebView`, [source](https://github.com/robolectric/robolectric/blob/master/shadows/framework/src/main/java/org/robolectric/shadows/ShadowWebView.java)); inferred | n/a | Licence is `MPL-2.0 OR GPL-3.0-or-later` ([package.json](https://github.com/cubing/cubing.js/blob/main/package.json)). Has built-in Roux stickerings (FirstBlock, SecondBlock, CMLL, L6E, L6EO, L10P) ([stickerings](https://github.com/cubing/cubing.js/blob/main/src/cubing/puzzles/stickerings/puzzle-stickerings.ts)), so use it as a **visual and spec reference**, not a runtime |
| libGDX 1.14.2 | Anything | Good | High (separate GL surface, game loop) | No | Partial | Wrong tool for a Material app ([Maven](https://repo1.maven.org/maven2/com/badlogicgames/gdx/gdx-backend-android/maven-metadata.xml)) |

**Recommended design** (engineering judgment, not a cited fact):

- **Pure Kotlin `cube-core` module** with no Android dependencies, holding three pieces:
  - The facelet/cubie state and move application, ported from `CubeLib.tsx`.
  - A `CubeView` model: camera quaternion, the active layer turn as an axis, a slice set and an angle, and a per-sticker colour/mask array.
  - The geometry pass: emit cubie quads, rotate the turning slab, project, cull back faces, and sort.
- **Depth sorting.** While a layer turns, the static block and the turning slab are separated by a plane, so draw the far group first and then depth-sort the cubies inside each group. Unit-test the projection and sort on the JVM.
- **Composable `CubeCanvas(state, mask, modifier)`.** Read the `Animatable` turn angle and the drag rotation only inside the `Canvas` lambda, so animation causes draw-only invalidation. Drive turns with `MaterialTheme.motionScheme` springs (or a fixed TPS for alg playback). Apply drag rotation with `detectDragGestures`, then fling with decay.
- **Masking.** Map each sticker to a colour, or to a grey fill with a coloured outline (matching the current web app). The 2D net and top-view CMLL diagrams reuse the same mask logic on the same Canvas.
- **Swap point.** Put a `CubeRenderer` interface in front of the Canvas renderer so Filament/SceneView can be added later without touching trainer logic.

## 3. Screenshot / UI verification without a device

| Tool | Engine | Status / version | Headless Linux JVM | Compose + custom Canvas | Interactions / animation | Notes |
|---|---|---|---|---|---|---|
| **Roborazzi** | Robolectric Native Graphics (real hwui) | 1.77.0, Oct 22 2026 ([releases](https://github.com/takahirom/roborazzi/releases)); Robolectric 4.17 (Sep 10), "supports SDK 37" ([releases](https://github.com/robolectric/robolectric/releases)) | **Yes on x86_64 only**: the native runtime supports Linux x86_64, macOS arm64/x86_64 and Windows x86_64, **not Linux arm64** ([loader](https://github.com/robolectric/robolectric/blob/master/nativeruntime/src/main/java/org/robolectric/nativeruntime/DefaultNativeRuntimeLoader.java)) | Yes; set `robolectric.pixelCopyRenderMode=hardware` for shadows and shapes ([README](https://github.com/takahirom/roborazzi)) | **Yes**: full Compose UI tests (`performTouchInput`, clock control via `mainClock`, see [sync](https://developer.android.com/develop/ui/compose/testing/synchronization)); generates tests from `@Preview` via ComposablePreviewScanner | Writes `*.uitree.json` (deterministic bounds and semantics) plus a Set-of-Mark `*.annotated.png`, explicitly to let "an AI agent prove its UI fixes" ([UI tree dump](https://takahirom.github.io/roborazzi/ui-tree-dump.html)). Has an accessibility-check module, an experimental Compose Desktop mode, and the agent skill `npx skills add takahirom/roborazzi`. Tasks: `recordRoborazziDebug`, `compareRoborazziDebug`, `verifyRoborazziDebug` |
| **Compose Preview Screenshot Testing** (Google) | Layoutlib (AGP test suites extract the Layoutlib runtime) | Engine 0.0.1-alpha16; **the standalone plugin `com.android.compose.screenshot` is no longer maintained**. Replaced by **AGP test suites** (AGP ≥ 9.5.0-alpha03, experimental flags `android.experimental.enableScreenshotTest` / `testSuiteSupport`) ([doc](https://developer.android.com/studio/preview/compose-screenshot-testing), [test suites](https://developer.android.com/studio/preview/compose-screenshot-testing-with-testsuites)) | Yes (host-side Gradle tasks, no IDE needed) | Yes (`@PreviewTest` previews only) | No interaction; static previews only | Google's `testing-setup` skill defaults to this tool for screenshots, and to Robolectric for UI tests ([skill](https://github.com/android/skills/blob/main/testing/testing-setup/SKILL.md)) |
| **Paparazzi** | Layoutlib 16.2.3 | 2.0.0-alpha05.1 (Sep 28 2026); stable 1.3.5 is older ([CHANGELOG](https://github.com/cashapp/paparazzi/blob/master/CHANGELOG.md)) | Yes (pure JVM, Java 21+ since 2.0.0-alpha04) | Yes | `paparazzi.gif { }` for animations; no real input | **AGP 9 support only in the 2.0 alphas.** "Paparazzi is incompatible with Robolectric" in the same module ([Roborazzi README](https://github.com/takahirom/roborazzi)) |
| **Android CLI `android preview render`** | Not named (likely Layoutlib, UNVERIFIED) | Android CLI 1.0 (May 2026) | Yes: "renders … headlessly on the host machine (without a running device, emulator, or Android Studio instance)" ([preview](https://developer.android.com/tools/agents/android-cli/commands/preview), [render](https://developer.android.com/tools/agents/android-cli/commands/preview_render)) | Yes (previews) | No | `--component-tree` writes JSON with bounds, semantics and source locations; `--daemon` keeps it warm. Good for quick one-off renders |
| compose-ai-tools (`compose-preview` CLI, yschimke) | Robolectric (Android); `ImageComposeScene` (Desktop) | v2.74.1 ([repo](https://github.com/yschimke/compose-ai-tools)) | Yes (x86_64, same Robolectric limit) | Yes | No | Built "so your AI coding agent can actually *look* at the screen"; ships skills and MCP |

- **Caveat for all of these:** nothing that needs a GPU surface (GL, SurfaceView, TextureView, WebView, Filament) renders on the JVM. This is the decisive reason the cube renderer should be Canvas-based.
- **Pixel drift:** goldens differ across operating systems, so record them on the same Linux CI image ([Roborazzi FAQ](https://github.com/takahirom/roborazzi)).
- **Recommended setup:**
  - Roborazzi as the single source of truth, with goldens in `src/test/screenshots`.
  - A 3×3 size matrix (widths 400/610/900dp × heights 400/500/1000dp) plus fontScale 1.5 and dark theme. The size matrix follows Google's skill ([testing-setup](https://github.com/android/skills/blob/main/testing/testing-setup/SKILL.md)).
  - Cube tests that capture mid-turn frames by pausing `mainClock`.
- **Real-device escape hatch.** `android device remote` reserves Google-hosted physical devices and attaches them to local adb. Billing goes to a Google Cloud project with device streaming enabled ([device_remote](https://developer.android.com/tools/agents/android-cli/commands/device_remote)). Whether adb reaches those devices through this container's proxy is UNVERIFIED.

## 4. Architecture and libraries (2026 mainstream)

- **State:** AAC ViewModel exposing one `StateFlow<UiState>` (`stateIn(WhileSubscribed(5_000))`), collected with `collectAsStateWithLifecycle`; no ViewModel→UI events ([arch recs](https://developer.android.com/topic/architecture/recommendations)). Circuit 0.39.0 and Molecule 2.2.0 are niche alternatives ([circuit](https://github.com/slackhq/circuit), [molecule](https://github.com/cashapp/molecule)).
- **DI:** Hilt is officially "Recommended" over manual DI once you have several screens with ViewModels ([arch recs](https://developer.android.com/topic/architecture/recommendations)). Use hilt-android **2.60.1** with KSP ([Maven](https://repo1.maven.org/maven2/com/google/dagger/hilt-android/maven-metadata.xml)). Use Koin 4.2.2 only if going KMP ([Maven](https://repo1.maven.org/maven2/io/insert-koin/koin-android/maven-metadata.xml)).
- **Persistence:**
  - **Room 3.0.3** (`androidx.room3`) for the solve history. It reached stable on Jul 1 2026, is KSP- and Kotlin-only, coroutine-first, uses SQLiteDriver, and is KMP ([Room3 notes](https://developer.android.com/jetpack/androidx/releases/room3)). Room 2.8.5 remains available if AI-generated code keeps emitting Room 2 APIs.
  - **DataStore 1.3.0** (Oct 21 2026) for settings ([GMaven](https://dl.google.com/android/maven2/androidx/datastore/datastore/maven-metadata.xml)).
  - SQLDelight 2.4.1 is the KMP SQL-first alternative ([Maven](https://repo1.maven.org/maven2/app/cash/sqldelight/android-driver/maven-metadata.xml)).
- **Charts:** Vico **3.3.1** (`com.patrykandpatrick.vico:compose` + `compose-m3`; line, column and candlestick charts; Compose Multiplatform; minSdk 23) ([guide](https://guide.vico.patrykandpatrick.com/getting-started.md)). Sparklines can be plain Canvas.
- **BLE (smart cubes, later):** Kable **0.45.0**, a coroutine-based KMP BLE library ([repo](https://github.com/JuulLabs/kable), [Maven](https://repo1.maven.org/maven2/com/juul/kable/kable-core/maven-metadata.xml)). Nordic Kotlin-BLE-Library 2.0 is still beta (`2.0.0-beta09` tag; [repo](https://github.com/NordicSemiconductor/Kotlin-BLE-Library)). GAN cube protocol reference (JS): [gan-web-bluetooth](https://github.com/afedotov/gan-web-bluetooth).
- **Misc:** kotlinx-coroutines 1.11.0, kotlinx-serialization 1.12.0 (Nav3 keys are `@Serializable`) ([Maven](https://repo1.maven.org/maven2/org/jetbrains/kotlinx/kotlinx-serialization-json/maven-metadata.xml)), KSP 2.3.12 ([releases](https://github.com/google/ksp/releases)).

## 5. Claude Code tooling for Android in a headless Linux container

| Tool | What it gives | Works here (no emulator)? |
|---|---|---|
| **Google `android/skills`** (Claude Code plugin: `/plugin marketplace add android/skills` then `/plugin install android-skills@android-skills`) | 36 official SKILL.md files, including `navigation-3`, `edge-to-edge`, `adaptive`, `jetpack-compose-performance`, `testing-setup`, `agp-9-upgrade` and `r8-analyzer`. Version 1.0.18, updated Oct 26 2026 ([repo](https://github.com/android/skills)) | **Yes** (instructions only) |
| **Android CLI 1.0** + `android/android-cli-plugin` (Claude Code plugin) | Linux x86_64/arm64 installer ([skill](https://github.com/android/skills/blob/main/devtools/android-cli/SKILL.md)). Commands: `sdk`, `create`, `docs search/fetch`, `preview list/render`, `analyze`, `skills`; `run/install/screen/layout/input/emulator` need a device ([CLI](https://developer.android.com/tools/agents/android-cli), [plugin](https://developer.android.com/tools/agents/android-cli/agent-plugins), [blog](https://developer.android.com/blog/posts/android-cli-now-stable-1-accelerate-developing-for-android-using-any-agent)) | **Partly.** SDK setup, docs and preview rendering work; device commands do not (`android studio *` needs Android Studio running) |
| Roborazzi agent skill (`npx skills add takahirom/roborazzi`) | Setup and usage docs for the agent ([README](https://github.com/takahirom/roborazzi)) | **Yes** |
| compose-ai-tools / `yschimke/skills` | `compose-preview` CLI, skills, local and hosted MCP ([repo](https://github.com/yschimke/compose-ai-tools)) | **Yes** (x86_64) |
| chrisbanes/skills (tag 2026.10.26) | `compose-animations`, `compose-performance`, `compose-state-and-effects`, `compose-ui-testing-patterns`, `compose-component-design`, `kotlin-concurrency-and-flow`, `gradle-run` ([repo](https://github.com/chrisbanes/skills)) | **Yes** |
| aldefy/compose-skill, skydoves/compose-performance-skills | Compose expert and performance skills; community-maintained, quality UNVERIFIED ([aldefy](https://github.com/aldefy/compose-skill), [skydoves](https://github.com/skydoves/compose-performance-skills)) | Yes |
| KotlinSense / kotlin-lsp | JetBrains Kotlin LSP is **Alpha** with "experimental Android Gradle Plugin support" ([repo](https://github.com/Kotlin/kotlin-lsp)) | Yes, but expect gaps on AGP 9 projects; the Gradle compile is the source of truth |
| Anthropic "Design" plugin | Design critique and accessibility review | Yes, when fed Roborazzi PNGs |
| Android Emulator QA Plugin, `mobile-mcp` | Drive an emulator or device ([mobile-mcp](https://github.com/mobile-next/mobile-mcp): needs a running emulator/device + adb, or paid Mobile Next Cloud devices) | **No** (no KVM). Possible only with a remote device attached; UNVERIFIED |
| Oh My Android | macOS app | **No** |
| Figma MCP (remote `https://mcp.figma.com/mcp`) | Design context from Figma files; Claude Code supported ([docs](https://developers.figma.com/docs/figma-mcp-server/)) | Yes if the user has Figma; Compose output quality UNVERIFIED. Google's Relay (Figma→Compose) was sunset on Apr 30 2025 according to secondary sources ([newsletter](https://jetpackcomposeapp.beehiiv.com/p/dispatch-issue-13)) |
| Material Theme Builder | Seed colour → Compose `Color.kt` and `Theme.kt` export ([tool](https://material-foundation.github.io/material-theme-builder/), [M3 doc](https://developer.android.com/develop/ui/compose/designsystems/material3)) | Web UI (human step). Headless alternative: generate schemes in code with [material-color-utilities](https://github.com/material-foundation/material-color-utilities) (has `kotlin/` and `java/` ports) |
| Google Stitch skills | AI UI mockups; build skills target React, React Native and shadcn only ([repo](https://github.com/google-labs-code/stitch-skills)) | Mockups only, no Compose output |

## Versions to pin (as of 2026-10-28)

| Component | Version | Released | Source |
|---|---|---|---|
| AGP | 9.5.0 | 2026-10-28 | [GMaven](https://dl.google.com/android/maven2/com/android/tools/build/gradle/maven-metadata.xml), [notes](https://developer.android.com/build/releases/agp-9-5-0-release-notes) |
| Gradle | ≥ 9.6.0 (9.8.2 current) | 2026-10-19 | [AGP notes](https://developer.android.com/build/releases/agp-9-5-0-release-notes), [gradle](https://services.gradle.org/versions/current) |
| JDK | 17 minimum (21 needed for Robolectric SDK 36+ and Paparazzi 2.x) | n/a | [AGP notes](https://developer.android.com/build/releases/agp-9-5-0-release-notes), [Robolectric](https://github.com/robolectric/robolectric/releases) |
| Kotlin + Compose compiler plugin | 2.4.21 | 2026-10-08 | [kotlinlang](https://kotlinlang.org/docs/releases.html) |
| KSP | 2.3.12 | 2026-09-09 | [releases](https://github.com/google/ksp/releases) |
| compileSdk / targetSdk / minSdk | 37 / 37 / 26 | n/a | [Play](https://developer.android.com/google/play/requirements/target-sdk), [AGP max API 37](https://developer.android.com/build/releases/agp-9-5-0-release-notes) |
| Compose BOM | 2026.09.00 (ui 1.12.1) | 2026-09-09 | [BOM pom](https://dl.google.com/android/maven2/androidx/compose/compose-bom/2026.09.00/compose-bom-2026.09.00.pom) |
| material3 (override BOM) | 1.5.0-beta02 (stable: 1.4.0) | 2026-10-21 | [notes](https://developer.android.com/jetpack/androidx/releases/compose-material3) |
| material3-adaptive (+ navigation3) | 1.3.0 | 2026-08-12 | [GMaven](https://dl.google.com/android/maven2/androidx/compose/material3/adaptive/adaptive/maven-metadata.xml) |
| navigation3-runtime / -ui | 1.2.0 | 2026-09-23 | [notes](https://developer.android.com/jetpack/androidx/releases/navigation3) |
| lifecycle (viewmodel-compose, -navigation3) | 2.11.0 | 2026-06-17 | [GMaven](https://dl.google.com/android/maven2/androidx/lifecycle/lifecycle-viewmodel-compose/maven-metadata.xml) |
| activity-compose | 1.13.0 | 2026-03-11 | [GMaven](https://dl.google.com/android/maven2/androidx/activity/activity-compose/maven-metadata.xml) |
| navigationevent-compose | 1.2.0 | 2026-10-07 | [GMaven](https://dl.google.com/android/maven2/androidx/navigationevent/navigationevent-compose/maven-metadata.xml) |
| graphics-shapes | 1.1.0 | 2025-10-22 | [notes](https://developer.android.com/jetpack/androidx/releases/graphics) |
| core-ktx | 1.19.1 | n/a | [GMaven](https://dl.google.com/android/maven2/androidx/core/core-ktx/maven-metadata.xml) |
| Room 3 (`androidx.room3`) | 3.0.3 | 2026-09-09 | [notes](https://developer.android.com/jetpack/androidx/releases/room3) |
| DataStore | 1.3.0 | 2026-10-21 | [GMaven](https://dl.google.com/android/maven2/androidx/datastore/datastore/maven-metadata.xml) |
| Hilt (dagger) / hilt-lifecycle-viewmodel-compose | 2.60.1 / 1.4.0 | 2026-07-06 / 2026-07-01 | [Maven](https://repo1.maven.org/maven2/com/google/dagger/hilt-android/maven-metadata.xml), [GMaven](https://dl.google.com/android/maven2/androidx/hilt/hilt-lifecycle-viewmodel-compose/maven-metadata.xml) |
| kotlinx-coroutines / serialization | 1.11.0 / 1.12.0 | n/a / 2026-10-19 | [Maven](https://repo1.maven.org/maven2/org/jetbrains/kotlinx/kotlinx-serialization-json/maven-metadata.xml) |
| Vico | 3.3.1 | 2026-08-28 | [guide](https://guide.vico.patrykandpatrick.com/getting-started.md) |
| Kable | 0.45.0 | 2026-09-15 | [Maven](https://repo1.maven.org/maven2/com/juul/kable/kable-core/maven-metadata.xml) |
| Robolectric | 4.17 | 2026-09-10 | [releases](https://github.com/robolectric/robolectric/releases) |
| Roborazzi (plugin + roborazzi, -compose, -junit-rule) | 1.77.0 | 2026-10-22 | [releases](https://github.com/takahirom/roborazzi/releases) |
| Paparazzi (if used instead) | 2.0.0-alpha05.1 | 2026-09-28 | [CHANGELOG](https://github.com/cashapp/paparazzi/blob/master/CHANGELOG.md) |
| Compose screenshot engine (if used) | 0.0.1-alpha16 (with AGP test suites) | 2026-07-27 | [doc](https://developer.android.com/studio/preview/compose-screenshot-testing-with-testsuites) |
| Filament / SceneView (future 3D) | 1.77.3 (Maven Central) / 4.62.0 | 2026-10-08 / 2026-10-22 | [Maven](https://repo1.maven.org/maven2/com/google/android/filament/filament-android/maven-metadata.xml), [SceneView](https://github.com/sceneview/sceneview) |

## Open questions / unverified

- When material3 **1.5.0 goes stable** is UNVERIFIED. Pinning a beta is a deliberate trade-off. `MaterialShapes` and `LoadingIndicator` remain `@ExperimentalMaterial3ExpressiveApi`, so opt in.
- Android 17 stable date (Jun 16 2026) comes from secondary sources only. The developer.android.com release-notes page was not updated.
- The rendering engine behind `android preview render` is unnamed, and whether it handles AGP 9.5 + Compose 1.12 projects on Linux is UNVERIFIED. Also UNVERIFIED: whether the Android CLI installer works through this container's proxy (the install URL returned HTTP 200).
- The claim that Layoutlib tools (Paparazzi, Compose screenshot testing) cannot draw GL/SurfaceView content is inferred; it is confirmed only for Robolectric (`ShadowGLES20`, `ShadowWebView`).
- Robolectric Native Graphics does not support **Linux arm64**. If the cloud container ever runs on arm64, Roborazzi breaks; fall back to Layoutlib-based tools.
- Compose Canvas cube performance on low-end devices at 120Hz is not benchmarked. Measure with Macrobenchmark on a real device eventually; benchmark-macro 1.5.0 ([GMaven](https://dl.google.com/android/maven2/androidx/benchmark/benchmark-macro-junit4/maven-metadata.xml)).
- Room 3 adoption risk: LLM-written code tends toward Room 2 APIs (`androidx.room`). Pick one and enforce it with lint or grep.
- Whether `android device remote` (Google-hosted devices) gives this container a usable adb path, and what it costs, is UNVERIFIED.
- Robolectric's experimental `simulator` module (a Swing window that runs the app on the JVM) exists in the repo ([source](https://github.com/robolectric/robolectric/tree/master/simulator)). Its maturity and whether it can record frames headlessly are UNVERIFIED.
- The 2.0.0-beta status of the Nordic BLE library and its support for smart-cube protocols (GAN, MoYu, QiYi encryption) are out of scope and UNVERIFIED.
