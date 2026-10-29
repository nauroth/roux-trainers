# Handoff: native Android Roux trainer

Written 2026-10-28 at the end of the research session. Read this first, then the research
notes it links to. The notes hold the evidence; this file holds the decisions and the plan.

## Goal (user's words, condensed)

A **native Android app** with a **great-looking, modern UI** (Material 3 Expressive motion and
shape morphing) that contains every tool needed to get good at **Roux, and only Roux**: no
CFOP, ZZ or other methods anywhere in the app. It grows out of this repo (a fork of
onionhoney's web Roux Trainers, GPL-3.0), but it is a new Kotlin app, not a wrapper of the
web app.

## Decided (confirmed by the user)

- **Stack:** Kotlin + Jetpack Compose + Material 3, accepted as researched in
  [android-ui-stack.md](research/android-ui-stack.md): AGP 9.5.0, Kotlin 2.4.21, Compose BOM
  2026.09.00, Navigation 3, Hilt + KSP, Room 3, DataStore, Vico, Kable later for BLE.
- **Material 3 Expressive:** required. Pin `androidx.compose.material3:material3:1.5.0-beta02`
  over the BOM; stable 1.4.0 lacks `MaterialExpressiveTheme`, `MotionScheme.expressive()` and
  the new components. Some APIs (`MaterialShapes`, `LoadingIndicator`) need an experimental
  opt-in.
- **Feature map:** accepted as proposed in
  [roux-training-features.md §2](research/roux-training-features.md) (MVP / v1 / later per
  Roux stage).
- **Timer:** the app keeps **its own timer and stats** (the source of truth) and has an
  **"Export to Twisty/Cubic Timer"** action. It writes Twisty's *backup* `.txt` format, which
  both apps import, with categories like "Roux FB" / "CMLL". Format, gotchas and dedupe rules
  are in [timer-integration.md](research/timer-integration.md) (sections A, "Generator
  gotchas"). Zero-tap insertion is impossible: neither app exposes an entry point.
- **Virtual cube:** custom renderer on Compose `Canvas` with pure-Kotlin 3D math, ported from
  the web app's `src/components/CubeSim.tsx`. It is the only option that shows up in JVM
  screenshot tests. No OpenGL, Filament or WebView for the MVP.
- **Solver:** port the TS solver to Kotlin with sparse/hashed pruning tables. Do not embed the
  JS: its dense tables allocate 191–382 MB. Evidence:
  [roux-training-features.md §5](research/roux-training-features.md).

## Open decisions: settle these with the user before building

Run the `grilling` skill on these, one at a time, leading with the recommendation:

1. **Where the app lives.** Recommended: a new repo (e.g. `nauroth/roux-android`) that the
   user creates on GitHub and then attaches to the session with push access. Carry over
   `.claude/` and this `docs/roux-android/` folder. The alternative is an `android/` folder in
   this repo.
2. **App name and package id.** It must not reuse "Roux Trainers" / onionhoney branding
   without asking onionhoney.
3. **License:** GPL-3.0-only or -or-later. The app is GPL either way, since it ports this
   repo's solver and data. Optionally ask onionhoney whether they would relicense the solver.
4. **minSdk.** Research suggests 26; compile/target 37.
5. **Getting builds onto the phone:** a GitHub Actions debug-APK artifact. Store a fixed debug
   keystore as a secret, otherwise every CI build needs an uninstall first (see
   [cloud-toolchain.md](research/cloud-toolchain.md), "Limits").
6. **The user's current level and times.** This tailors the curriculum and decides what is
   built first.
7. **Smart-cube priority.** Research put native BLE (GAN/MoYu/QiYi) and automatic Roux splits
   at v1. Ask whether the user owns a smart cube and which model.
8. **Monetization.** Research ([monetization.md](research/monetization.md)) recommends:
   - A free app, with everything ported from roux-trainers kept free.
   - An optional one-time "Supporter" unlock (plus optional tip purchases) through Play
     Billing, covering new extras only.
   - The Ko-fi link only on GitHub, the website and a non-Play build flavor. Donation links
     inside the Play build get rejected.
   - No ads and no paid-upfront price. Note that a free app can never later become paid on
     the same package name.

   Ask onionhoney before monetizing a derivative. The user hasn't decided yet.

## What exists now (branch `claude/eloquent-davinci-0yl5z1`)

- `docs/roux-android/research/`: five notes, each with cited sources and an "open questions /
  unverified" list.
  - `android-ui-stack.md`: stack, cube-rendering options, screenshot tools, versions to pin.
  - `cloud-toolchain.md`: **verified in this container**. SDK install, build, Roborazzi
    screenshots and lint all work; exact commands, timings and five required fixes.
    `img/` holds the spike's light and dark screenshots.
  - `roux-training-features.md`: Roux learning path, feature map, existing tools, reuse and
    port assessment with `path:line` refs into this repo, licensing.
  - `timer-integration.md`: Twisty Timer / Cubic Timer analysis and the export format spec.
  - `design-plugins.md`: which design skills cover Compose/M3, and which to skip and why.
  - `extra-skills.md`: nine more skills reviewed. Only Humanizer (store listing and in-app
    copy) is worth installing.
  - `monetization.md`: Play policy on donations, purchases, paid apps and ads, plus account
    setup (closed test with 12 testers for 14 days) and GPL precedents.
- `docs/roux-android/setup-android-sdk.sh`: idempotent SDK + Gradle-mirror setup (52 s fresh,
  0 s warm). Not wired up yet: hook it into a SessionStart hook or the environment setup
  script.
- `.claude/settings.json`: plugins `ponytail`, `android-skills` (Google, official),
  `chrisbanes-skills`. They load at session start.
- `.claude/skills/`: vendored `md3e`, `material-design-3-ui`, `design-critique` and
  `accessibility-review`. Sources, commits and licenses are in `.claude/skills/VENDORED.md`.
- `CLAUDE.md` and `docs/agents/`: the mattpocock-skills setup (GitHub Issues tracker, default
  triage labels, single-context domain docs). Check that Issues are enabled on whichever repo
  hosts the work; forks default to off.

## Environment facts that will bite

From [cloud-toolchain.md](research/cloud-toolchain.md); read its "Gotchas and fixes" before
the first build.

- No `/dev/kvm`, so **no emulator**. You see the UI through **Roborazzi PNGs**: record, then
  open them with the Read tool. `verifyRoborazziDebug` produces a red-pixel diff. Anything
  GPU/OpenGL renders blank on the JVM.
- **Maven Central returns HTTP 429** from this container's IP. The setup script installs a
  Gradle init script that redirects to Google's Maven Central mirror. Keep `mavenCentral()` in
  the build files.
- Robolectric 4.17 + SDK 37 + JDK 21 needs `--add-opens=java.base/jdk.internal.access=ALL-UNNAMED`.
  Pin `espresso-core` 3.7.0 and `androidx.test:core` 1.7.0, and set
  `buildToolsVersion = "37.0.0"`.
- AGP 9 compiles Kotlin itself: don't apply `kotlin-android` in modules.
- Untestable here: touch feel, frame timing, BLE, haptics, audio. Those need the user's phone
  via the CI APK.

## Suggested plan

1. **Setup:** decisions 1–5 above; repo, CI APK workflow, SessionStart hook running
   `setup-android-sdk.sh`.
2. **Domain model:** `CONTEXT.md` with the Roux glossary (FB, SB, FS, SS, DR, LP, CMLL, NMCLL,
   LSE, EO, EOLR(b), MC, 4c, x2y/CN, AUF), via `domain-modeling`.
3. **Spec and tickets:** turn the feature map's MVP rows into a spec, then into tickets in
   GitHub Issues.
4. **Core, test-first:** port `CubieCube` / `Move` / `MoveSeq` with the parser fix noted in
   the feature map, the masks and the random-state generator. Port the existing TS tests
   (`src/lib/*.test.ts`) as the spec.
5. **Look and feel early:** theme from a seed colour (`md3e`'s `scripts/generate_theme.py`),
   `MaterialExpressiveTheme`, navigation skeleton, Canvas cube with masking and turn
   animation. Roborazzi baselines in light and dark from day one, and critique each new screen
   PNG.
6. **MVP trainers** in feature-map order: FB + inspection planner, FBLP(+DR), SS/SBLP, CMLL
   (2-look, full 42, recognition drill), LSE (EO, EOLR/EOLRb, 4c). Then the timer, sessions,
   stats and Twisty/Cubic export.
7. **v1:** spaced repetition, curriculum gates, smart-cube BLE with automatic splits,
   reconstruction analyzer, chain flow.

## Suggested skills (call via the Skill tool)

- **Deciding and planning:** `mattpocock-skills:grilling` (open decisions),
  `mattpocock-skills:domain-modeling` (CONTEXT.md), `to-spec` / `to-tickets` /
  `wayfinder` (spec → issues), `mattpocock-skills:codebase-design` (module seams: cube core,
  solver, trainers, UI).
- **Building:** `mattpocock-skills:tdd` (solver/cube port), `mattpocock-skills:diagnosing-bugs`.
  From `android-skills`: `navigation-3`, `edge-to-edge`, `adaptive`, `testing-setup`,
  `agp-9-upgrade`. From `chrisbanes-skills`: `compose-component-design`, `compose-animations`,
  `compose-state-and-effects`, `compose-ui-testing-patterns`.
- **Design:** `md3e` (M3 Expressive API and theme generator), `material-design-3-ui` (design
  judgment), then `design-critique` and `accessibility-review` on Roborazzi PNGs, read with
  Android rules (see VENDORED.md).
- **Environment:** `session-start-hook` to wire `setup-android-sdk.sh`;
  `mattpocock-skills:research` for any new research question.

## Don't

- Don't add non-Roux content: no CFOP/ZZ algorithms, methods or scramble types.
- Don't vendor skills or code without a license. `charliesbot/android-design` and
  `gdlbo/material-skill` have no license, so all rights are reserved.
- Don't use TNoodle (AGPL) or unlicensed alg data (SpeedCubeDB, Kian's sheets) without
  permission. Use this repo's GPL alg data, solver-generated algs or user-entered algs.
- Don't portrait-lock the timer. targetSdk 36+ ignores orientation locks on screens 600dp
  and wider.
