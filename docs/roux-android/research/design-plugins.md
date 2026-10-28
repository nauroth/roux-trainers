# Claude Code design plugins/skills for the Roux Android app (Compose + M3/M3 Expressive)

Researched 2026-10-28. Stars and dates come from the GitHub search API that day. "Last commit" is the HEAD commit of a shallow clone (`git log -1`) unless marked *(api)*. For every repo marked "cloned", the SKILL.md/manifests/hooks/scripts were read directly. Nothing was executed. Constraints for this project: an agent developer, a headless Linux container, no emulator, UI checked with Roborazzi/Paparazzi JVM screenshots.

## Recommendation

There is no Android equivalent of the big web "design-intelligence" skills (ui-ux-pro-max, taste, impeccable) that is both popular and Compose-first. The useful Android pieces are small and more specific. Install these, in this order:

1. **android/skills (official Google)**: platform-correct UI (edge-to-edge, adaptive layouts/Nav3) and Google's own screenshot-test matrix guidance. Pure markdown, plugin marketplace, Apache-2.0.
2. **mfskys/md3e-skill**: the most current Compose **M3 Expressive API** reference. It was checked against androidx source on 2026-10-23 and includes a seed-color to `Color.kt`/`Theme.kt` generator. Copy into `.claude/skills/`.
3. **skydashnet/material-design-3-ui-skill**: compact M3 *design-judgment* rules (hierarchy, roles, "fake Material" anti-patterns). MIT. Copy into `.claude/skills/`. It complements #2: #2 covers what to call, #3 covers when and why.
4. **chrisbanes/skills**: Compose component-API, animation and screenshot-test patterns from a well-known Compose author. Plugin marketplace, Apache-2.0. Engineering quality, not visuals.
5. **Anthropic Design, `design-critique` + `accessibility-review` only**: platform-agnostic, and both take a *screenshot*, so they can critique our Roborazzi PNGs. Copy the two skill folders. Installing the whole plugin also registers 9 remote MCP servers.

Optional or trial: **yschimke/skills `compose-preview`** (renders any `@Preview` to PNG via Robolectric, built for cloud sandboxes, but it bootstraps a CLI with `curl | bash` and injects itself into Gradle), **yamixst/material-icons-skills** (Material Symbols to `ImageVector`/VectorDrawable, 557-line script, 2★), **AThevon/genjutsu** (Compose motion, AGSL and Canvas, useful for cube visuals).

Skip:
- **ui-ux-pro-max**: its Compose rows are generic architecture rules, and its stack detection ignores Gradle.
- **taste-skill / Superdesign / frontend-design**: web-first.
- **impeccable**: auto-running hooks, and it verifies through adb/emulator.
- **Stitch**: no Compose export; HTML only, plus an API key.
- **spyglass**: Android previews are not supported yet.
- **abhixv m3-expressive**: a 951 MB clone.
- **charliesbot/android-design and gdlbo/material-skill**: excellent content but **no license file**.

## Comparison table

Coverage means real (Compose/M3 guidance or code that is verified and Android-specific), partial (some Android content), or none. "Auto-run" means code that executes without the agent deciding to: hooks, an `.mcp.json` server start, or a postinstall step.

| Name | URL | Android/Compose | ★ | Last commit | License | Auto-run |
|---|---|---|---|---|---|---|
| Android skills (Google) | github.com/android/skills | real (platform; no M3 design skill) | 9,978 | 2026-10-26 | Apache-2.0 | no |
| md3e-skill | github.com/mfskys/md3e-skill | real (M3E Compose APIs) | 14 | 2026-10-23 | Apache-2.0 | no |
| material-design-3-ui-skill | github.com/skydashnet/material-design-3-ui-skill | real (design rules; thin Compose section) | 157 | 2026-10-01 | MIT | no |
| chrisbanes/skills | github.com/chrisbanes/skills | real (Compose eng.) | 1,125 | 2026-10-27 | Apache-2.0 | no |
| Anthropic Design plugin | github.com/anthropics/knowledge-work-plugins (`design/`) | none, but works on screenshots | 33,598 | 2026-10 *(api)* | Apache-2.0 | `.mcp.json` registers 9 remote HTTP MCPs (Slack, Figma, Linear…) |
| compose-preview skills + CLI | github.com/yschimke/skills, github.com/yschimke/compose-ai-tools | real (renders `@Preview` headless) | 2 / 124 | 2026-10-16 / 10-26 | Apache-2.0 | no hooks; CLI stub runs `curl …install.sh \| bash` on first use |
| material-icons-skills | github.com/yamixst/material-icons-skills | real (icons as Compose/VectorDrawable) | 2 | 2026-10-25 | MIT | no (network on call) |
| genjutsu | github.com/AThevon/genjutsu | real (motion/AGSL/Canvas sub-skills) | 697 | 2026-10-06 | MIT | no |
| compose-skill (compose-expert) | github.com/aldefy/compose-skill | real (incl. `theming-material3.md`, M3E) | 598 | 2026-07-08 | MIT | no |
| android-design | github.com/charliesbot/android-design | real (best M3E design judgment) | 4 | 2026-10-24 | **none** | no (explore skill needs Chrome + Node) |
| material-skill | github.com/gdlbo/material-skill | real | 12 | 2026-08-21 | **none** | no |
| google-m3-expressive-design-skill | github.com/abhixv/google-m3-expressive-design-skill | partial (tokens/dp specs; Compose via `platforms.md`) | 25 | 2026-10-24 | MIT + CC-BY (Google content) | no; 495 MB of images |
| platform-design-skills (android) | github.com/ehmo/platform-design-skills | real (1,051-line M3 SKILL.md) | 631 | 2026-03-18 | MIT | no |
| MiniMax android-native-dev | github.com/MiniMax-AI/skills | real (883 lines + refs) | 13,734 | 2026-04-18 | MIT | no; plugin pulls whole multi-domain library |
| ui-ux-pro-max | github.com/nextlevelbuilder/ui-ux-pro-max-skill | partial (52 generic Compose rows) | 141,976 | 2026-10-26 | MIT | no (`stack/.mcp.json` is not at plugin root) |
| mobile-app-uiux-pro-max | github.com/noumanzindani/mobile-app-uiux-pro-max-skill | partial (~400 lines Compose) | 3 | 2026-07-02 | Apache-2.0 | no |
| android-compose-design-skill | github.com/NI3singh/android-compose-design-skill | real but small (418 lines) | 3 | 2026-06-04 | MIT | no |
| compose-skill (Compose Kit) | github.com/Meet-Miyani/compose-skill | partial (opinionated MVI/Koin/Ktor) | 306 | 2026-10-23 | MIT | no |
| awesome-android-agent-skills | github.com/new-silvermoon/awesome-android-agent-skills | partial (49-line compose-ui) | 992 | 2026-07-27 | Apache-2.0 | no |
| impeccable | github.com/pbakaus/impeccable | partial (46-line `android.md`, adb-based) | 92,135 | 2026-10-28 | Apache-2.0 | **yes**: SessionStart/PostToolUse(Edit\|Write)/Stop hooks run a launcher that downloads a Rust engine |
| taste-skill | github.com/Leonxlnx/taste-skill | none | 104,202 | 2026-10-25 | MIT | no |
| stitch-skills (+ Stitch MCP) | github.com/google-labs-code/stitch-skills | none (React/RN/shadcn builds) | 8,629 | 2026-08-17 | Apache-2.0 | no; remote MCP needs API key |
| stitch-mcp CLI | github.com/davideast/stitch-mcp | none | 982 | 2026-05-28 | Apache-2.0 | no |
| spyglass | github.com/zainkhalid91/spyglass | none yet ("Android-only previews are on the roadmap") | 17 | 2026-10-16 | MIT | no |
| superdesign-skill | github.com/superdesigndev/superdesign-skill | none | 911 | 2026-10 *(api)* | UNVERIFIED | runs `npx @superdesign/cli@latest` + browser login |
| frontend-design | github.com/anthropics/claude-plugins-official | none (generic) | 45,084 | 2026-10 *(api)* | see repo | no |
| claude-md3-expressive | github.com/ShlomyShLev/claude-md3-expressive | none (web markup) | 2 | 2026-10-09 | MIT | **yes**: `.mcp.json` starts `node mcp-server/server.js` |

## Recommended items: evidence and install

**1. android/skills** (cloned, plugin v1.0.18, 36 skills). The README is explicit that it does not teach basics: *"We aren't prioritizing well-established areas where LLMs are already proficient, such as basic Jetpack Compose best practices."* The relevant skills are `system/edge-to-edge`, `jetpack-compose/adaptive`, `navigation/navigation-3` and `testing/testing-setup`. `testing-setup` gives a concrete screenshot matrix: *"Screen-level screenshot tests, where each screen is tested in nine different sizes, combining compact, medium and expanded widths (400, 610, 900 dp) and heights (400, 500 and 1000 dp)… Add a mobile (400x500) screenshot of: All the alternative themes… Font scale set to 1.5."* It names Roborazzi and Paparazzi explicitly. Its default recommendation is Compose Preview Screenshot Testing, and it says to respect the current stack.
- Security: no hooks or `.mcp.json`. The only scripts (`play-policy-insights/scripts/*.py`, the Perfetto `trace_processor` launcher) run only when invoked. The `android-cli` skill tells agents to `curl … dl.google.com/android/cli/… | bash` when asked to use the CLI.
- Headless: yes.
- Install: `/plugin marketplace add android/skills` then `/plugin install android-skills@android-skills`.

**2. mfskys/md3e-skill** (cloned, SKILL.md 192 lines, 3.5 MB references). Evidence: *"Knowledge baseline 2026-10-23. Recommended dependency for full M3E: `androidx.compose.material3:material3:1.5.0-beta02`… signatures in this skill were re-verified against the `androidx/androidx` source tree on 2026-10-23."* It catches real API traps, for example: *"there is no `SplitButton` composable (verified in source)"*. `scripts/generate_theme.py` builds `Color.kt` and `Theme.kt` from a seed. It needs `pip install material-color-utilities`; without it the script falls back to an HSL approximation that it says "will not match Google's output".
- Security: no plugin manifest and nothing auto-runs. The scripts use only the standard library apart from that optional pip package. `references/m3-content/` holds scraped m3.material.io text with no attribution note.
- Headless: yes.
- Install: `git clone https://github.com/mfskys/md3e-skill /tmp/md3e && git -C /tmp/md3e checkout 640264b063c5 && mkdir -p .claude/skills/md3e && cp -r /tmp/md3e/{SKILL.md,references,assets} .claude/skills/md3e/ && mkdir -p .claude/skills/md3e/scripts && cp /tmp/md3e/scripts/generate_theme.py .claude/skills/md3e/scripts/`

**3. skydashnet/material-design-3-ui-skill** (cloned, SKILL.md 241 lines + 673 lines of references). Evidence: *"Create interfaces that **behave like Material Design 3**, not interfaces that merely look rounded or 'Google-like.'"* Its MUST NOT list includes *"Do not wrap every section or list row in a card"* and *"Do not make all components equally expressive."* The Compose section is short: *"Prefer `androidx.compose.material3`… Do not assume every M3 Expressive API is stable."*
- Security: `install.sh`/`install.ps1` fetch from GitHub. Don't use them; copy by hand.
- Headless: yes.
- Install: `git clone https://github.com/skydashnet/material-design-3-ui-skill /tmp/m3ui && git -C /tmp/m3ui checkout 82783f76de4a && mkdir -p .claude/skills/material-design-3-ui && cp -r /tmp/m3ui/{SKILL.md,references} .claude/skills/material-design-3-ui/`

**4. chrisbanes/skills** (cloned, 19 skills). The relevant ones are `compose-component-design`, `compose-animations`, `compose-state-and-effects`, `compose-performance` and `compose-ui-testing-patterns`. That last skill's description reads: *"Use when writing or reviewing Jetpack Compose UI tests, screenshot tests or baseline-recording evidence, previews…"*. Its screenshot section: *"Use screenshots for visual contracts that semantics cannot prove: Layout spacing/alignment. Themed colors, typography, elevation…"*
- Security: no hooks. `package.json` has no install scripts. The `.opencode/` JS plugin is for OpenCode only. `gradle-run` and `run-github-project` run commands only when invoked.
- Headless: yes.
- Install: `/plugin marketplace add chrisbanes/skills` then `/plugin install chrisbanes-skills@chrisbanes-skills`. It installs all 19 skills, including non-design ones (shepherd, release-kotlin-library).

**5. Anthropic Design: `design-critique` + `accessibility-review`** (raw files read). Evidence: *"Get structured design feedback on usability, hierarchy, and consistency… when sharing a Figma link or screenshot for feedback"*. Claude can `Read` the Roborazzi PNGs and run this critique on them.
- Security: `design/.mcp.json` registers remote MCPs for Slack, Figma, Linear, Asana, Atlassian, Notion and Intercom, with empty Gmail/Calendar entries. The plugin has no hooks.
- Install (skills only): `git clone --depth 1 https://github.com/anthropics/knowledge-work-plugins /tmp/kwp && cp -r /tmp/kwp/design/skills/{design-critique,accessibility-review} .claude/skills/`
- Full plugin: `/plugin marketplace add anthropics/knowledge-work-plugins` then `/plugin install design@knowledge-work-plugins`.

**Cloud-container form** for the plugin items, in `.claude/settings.json`. Pinning a `ref` in marketplace sources is UNVERIFIED.
```json
{ "extraKnownMarketplaces": {
    "android-skills":    { "source": { "source": "github", "repo": "android/skills" } },
    "chrisbanes-skills": { "source": { "source": "github", "repo": "chrisbanes/skills" } } },
  "enabledPlugins": { "android-skills@android-skills": true, "chrisbanes-skills@chrisbanes-skills": true } }
```

**Optional: yschimke compose-preview** (cloned). Evidence: *"Render `@Preview` composables to PNG without Android Studio (Android via Robolectric, CMP Desktop via Skia)"*. It ships `references/agent-cloud.md` with a host allowlist and a session-start preflight for cloud sandboxes. It can also emit accessibility findings and theme tokens per render. This is more convenient than writing a Roborazzi test for each preview, but it overlaps with our Roborazzi setup.
- Risks:
  - **"The CLI injects itself into your build at runtime"**. It modifies the Gradle build.
  - `scripts/compose-preview` bootstraps with `curl -fsSL https://raw.githubusercontent.com/yschimke/skills/main/scripts/install.sh | bash` (unpinned `main`).
  - It is maintained by one person.
- Requirements: JDK 17+, the Android SDK, and network access to GitHub releases and Maven.
- Install: `/plugin marketplace add yschimke/skills` then `/plugin install compose-skills@yschimke-skills`. If adopted, pre-install a pinned CLI release in the environment setup script instead of relying on the bootstrap.

**Optional: yamixst/material-icons-skills** (cloned). `download_icon.py` (557 lines, stdlib only) fetches from `fonts.google.com` and `fonts.gstatic.com`, including `…/render/v1/{family}/{size}dp/{icon}.kt` for Compose. This matters because gdlbo's skill notes *"`androidx.compose.material:material-icons-extended` is no longer recommended or updated"*.
- Install: copy `skills/material-symbols-downloader` at `c50ad696b9bd` into `.claude/skills/`.

**Optional: AThevon/genjutsu**. The plugin bundles internal sub-skills `compose-motion`, `compose-graphics` (*"Material 3 Expressive motion physics, AGSL shaders (Android 13+), Canvas/DrawScope generative"*) and `mobile-principles`. It also bundles web sub-skills (GSAP, three.js) and a vendored `ui-ux-pro-max`.
- Install: `/plugin marketplace add AThevon/genjutsu` then `/plugin install genjutsu@genjutsu`.

**Worth reading, not installing: charliesbot/android-design.** This is the strongest "taste for Android" content found. Example: *"a screen feels designed when emphasis is spent deliberately… Stock Material code gives every element equal weight, which is why it looks like a template."* It is blocked for three reasons:
- There is no LICENSE file, so all rights are reserved.
- It has 4★.
- It hard-codes its renderer: *"If a dependency is unavailable, report it… rather than installing tools or substituting another renderer"*. That conflicts with a Roborazzi workflow.

Ask the author for a license before vendoring it. gdlbo/material-skill (no license) has the same problem.

## Web-only projects that don't transfer

- **Leonxlnx/taste-skill**: *"Art direction for websites… in any stack (HTML/CSS, React, Next.js…)"*. It relies on a real-browser inspector.
- **superdesign-skill**: canvas service through `npx @superdesign/cli@latest` plus a login.
- **frontend-design**: generic, with no Android content.
- **ShlomyShLev/claude-md3-expressive**: web markup kit, and it auto-starts a Node MCP server.
- **shimonsalamon/m3-expressive-foundations**: *"for the web"*, per its description (not cloned).
- **draftbit/mobile-taste-skill**: React Native/Expo (not cloned).
- **google-labs-code/stitch-skills**: build skills cover React, shadcn, React Native and Remotion only. `grep` found no Compose or Kotlin. Stitch itself outputs HTML screens; `deviceType: MOBILE` exists, but there is **no Compose export**. The only path is Claude translating a Stitch screenshot to Compose by hand. aldefy's `design-to-compose.md` or yschimke's `design-parity-review` could help there.
- **pbakaus/impeccable**: its `android.md` is reasonable M3 advice, but it says *"Screenshots come from the emulator or a connected device, never a browser… `adb exec-out screencap`"*. That doesn't work headless, and its hooks run on every Edit/Write.

## Open questions / UNVERIFIED

- **Material Theme Builder**: not fetched; that it exports Compose `Theme.kt` is UNVERIFIED. Code alternatives:
  - jordond/MaterialKolor (961★): runtime seed to M3 scheme in Compose. Whether it supports M3E schemes is UNVERIFIED.
  - material-foundation/material-color-utilities (2,297★): Google's official library, which also has Java.
  - md3e's `generate_theme.py`. Which PyPI package provides `material-color-utilities` 0.2.x is UNVERIFIED (avanisubbiah's port is one candidate).
- **Google Android CLI `render-compose-preview`** (Android CLI 1.0, May 2026): spyglass's README says it needs Android Studio running with the project open. Headless use in our container is UNVERIFIED.
- **Gemini-in-Android-Studio reusable rules**: no public Google rules repo found. Android Studio imports `android/skills` (README links `developer.android.com/studio/gemini/skills`). The AndroidX `.agents/` skills on googlesource target AndroidX contributors, not app UI.
- **yschimke/compose-agent-plugins** (the hooks/MCP wiring for compose-preview): not inspected. Use the content-only `yschimke/skills` marketplace.
- Not cloned or inspected:
  - **skydoves/compose-performance-skills** (520★, performance, not design)
  - **Drjacky/claude-android-ninja** (129★, architecture)
  - **JusDots-Devs/m3e-skill** (3★)
  - **allexp1/android-design** (0★)
  - **Kotlin LSP / KotlinSense** (SUDARSHANCHAUDHARI/KotlinSense, 1★) and **Oh My Android** (ateymoori/oh-my-android, macOS Swift app, 73★). Not design tools, and Oh My Android is macOS-only.
  - "Android Emulator QA Plugin" source: UNVERIFIED.
- **Licenses**: Superdesign's license and the exact license of anthropics/claude-plugins-official are UNVERIFIED. aldefy and genjutsu show NOASSERTION on GitHub, but their LICENSE files read MIT.
- **Roborazzi** (not a plugin) reportedly emits UI-tree JSON and Set-of-Mark images for AI agents (search snippet, UNVERIFIED). Worth checking before adopting compose-preview.
- **Awesome lists mined** for Android/mobile entries: ComposioHQ, travisvn, BehiSecc, heilcheng, hesreallyhim, VoltAgent. Only VoltAgent had relevant entries (MiniMax android-native-dev, ehmo platform-design-skills). None of the lists include the official `android/skills`.
