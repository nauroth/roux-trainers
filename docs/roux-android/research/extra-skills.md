# Extra skills: writing, diagrams, slides, DESIGN.md

Researched 2026-10-29 for the setup in `HANDOFF.md`: Claude Code in a headless Linux container, Kotlin + Compose + M3 Expressive, Roborazzi PNGs instead of an emulator. Each repo was shallow-cloned and its SKILL.md, plugin manifests, hooks and scripts were read. Nothing was run. Stars are the rounded values on each repo's GitHub page that day; the GitHub API is blocked in this session. "Last commit" is the clone's HEAD. The Compose/M3 skills are covered in `design-plugins.md`.

## Verdicts

| # | Name as given | Repo | Verdict | Reason |
|---|---|---|---|---|
| 1 | UI/UX Pro Max | nextlevelbuilder/ui-ux-pro-max-skill | skip | Same HEAD (`28b3b8d`) as the 2026-10-28 review, so the verdict stands. |
| 2 | Impeccable | pbakaus/impeccable | skip | Only the README changed since the review. The Edit/Write hooks are identical. |
| 3 | "Slide 4" (ambiguous) | zarazhangrui/frontend-slides (best guess) | skip | It makes HTML slide decks, and the app project needs none. |
| 4 | Humanizer | blader/humanizer | **install** | Covers the store listing, in-app strings, docs and PR text. No hooks, MIT, already enabled in freeshape. |
| 5 | Understand Anything | Egonex-AI/Understand-Anything (was Lum1104) | skip | Needs a pnpm build, adds hooks and serves a localhost dashboard, all for a 4,900-line `src/lib` that Claude can read directly. |
| 6 | Diagram design | cathrynlavery/diagram-design | optional | Polished HTML/SVG diagrams. Mermaid in Markdown is enough for in-repo docs. |
| 7 | Stop Slop | hardikpandya/stop-slop | skip | Does the same job as Humanizer with blunter rules. Install only one of the two. |
| 8 | awesome-design-md | VoltAgent/awesome-design-md | skip | 84 DESIGN.md files copied from websites (CSS px, brand fonts). Nothing for M3 or Compose. |
| 9 | design.md | google-labs-code/design.md | skip | Alpha spec plus an npm linter. Units are px/em/rem only, export targets are Tailwind/DTCG, and there is no Compose output. |

| Repo | ★ | Last commit | License | Code that runs automatically |
|---|---|---|---|---|
| nextlevelbuilder/ui-ux-pro-max-skill | 142.3k | 2026-10-26 `28b3b8d` | MIT | none |
| pbakaus/impeccable | 94.3k | 2026-10-28 `5e745ac` | Apache-2.0 | **3 hooks** (SessionStart, PostToolUse Edit\|Write, Stop) |
| zarazhangrui/frontend-slides | 31.5k | 2026-06-23 `9906a34` | MIT | none |
| blader/humanizer | 62.2k | 2026-10-28 `0ef9fe5` | MIT | none |
| Egonex-AI/Understand-Anything | 88.8k | 2026-10-26 `4e6d329` | MIT | **2 hooks** (SessionStart, PostToolUse Bash) |
| cathrynlavery/diagram-design | 62.7k | 2026-10-27 `0cf73c3` | MIT | none |
| hardikpandya/stop-slop | 18.5k | 2026-03-18 `8da1f03` | MIT | none |
| VoltAgent/awesome-design-md | 124.4k | 2026-10-28 `fcc7028` | MIT | none (not a skill) |
| google-labs-code/design.md | 28.6k | 2026-10-16 `6e5da53` | Apache-2.0 | none (the CLI runs through `npx` only when called) |

**Recommended change.** Add these keys to `.claude/settings.json`, keeping the entries already there. It is the same block freeshape uses.
```json
"extraKnownMarketplaces": { "humanizer": { "source": { "source": "github", "repo": "blader/humanizer" } } },
"enabledPlugins": { "humanizer@humanizer": true }
```

## 1. UI/UX Pro Max: skip (re-check only)

- Repo: https://github.com/nextlevelbuilder/ui-ux-pro-max-skill
- Change since the last review: none. `git ls-remote` HEAD on 2026-10-29 is `28b3b8dee8c9`, the commit `design-plugins.md` was based on.
- Install, for reference only: `/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill` then `/plugin install ui-ux-pro-max@ui-ux-pro-max-skill`.

## 2. Impeccable: skip (re-check only)

- Repo: https://github.com/pbakaus/impeccable
- Change since the last review: HEAD moved from `7510e23` to `5e745ac`, "Restructure README around steer, review, and catch slop (#1204)". `diff -r` against the earlier clone shows only `README.md` and a new `docs/images/`.
- The plugin is still v4.8.0, and the hooks are unchanged. `plugin/hooks/hooks.json` still runs `scripts/impeccable hook` on:
  - `SessionStart`
  - `PostToolUse`, matcher `Edit|Write` ("Checking UI changes")
  - `Stop` ("Design deep pass", 30 s timeout)
- `reference/android.md` is unchanged, so it still verifies through adb.
- Install, for reference only: `/plugin marketplace add pbakaus/impeccable` then `/plugin install impeccable@impeccable`.

## 3. "Slide 4": skip, and the name is ambiguous

- No match for the name: web searches and two 2026 roundups of slide skills found nothing called "Slide 4", "Slide4" or "slides-4". One roundup's only hit was an example prompt, "make slide 4 a comparison table".
- Best guess: **https://github.com/zarazhangrui/frontend-slides**, the most-starred slide skill that ships as a Claude Code plugin.
- Other candidates, all UNVERIFIED (from opendesigner.io):
  - hugohe3/ppt-master: editable .pptx, described there as "not strictly a skill".
  - op7418/guizang-ppt-skill: AGPL-3.0.
  - Anthropic's `pptx` skill: source-available, not open.
  - Slidev: a presentation framework, not a skill.
- What frontend-slides does: *"Create zero-dependency, animation-rich HTML presentations that run entirely in the browser"* on a *"Fixed 16:9 Stage (NON-NEGOTIABLE)"*. It also converts PPTX files.
- Relevance: none for building the app. If a pitch deck is ever needed, this session already has the `pptx` skill and claude.ai's Slides artifact type.
- Code that runs automatically: none. Two scripts run only when asked:
  - `scripts/deploy.sh` publishes to Vercel, and runs `npm install -g vercel` if the CLI is missing.
  - `export-pdf.sh` uses Playwright.
- Install: `/plugin marketplace add zarazhangrui/frontend-slides` then `/plugin install frontend-slides@frontend-slides`.

## 4. Humanizer: install

- Repo: https://github.com/blader/humanizer, plugin v3.1.0. The latest commit fixed the plugin manifest (PR #307, `fix/plugin-manifest-schema-key`).
- What it does: *"Rewrite AI-sounding text so it reads like the writer without changing what it says."* It ranks 26 patterns, strongest first, taken from Wikipedia's "Signs of AI writing". It also forbids invention: *"Do not add a fact, name, number, date, quote, or citation unless it comes from the source or the user."*
- Uses in this project:
  - Play Store short and full descriptions, and release notes. Pattern §16 "Sales language" flags words like "stunning" and "groundbreaking".
  - In-app strings: onboarding, trainer hints, empty states.
  - Docs, ADRs, issue bodies and PR text. Its "Embedded mode" (*"for a pull request, commit message, or document, return only the final text"*) fits these.
  - Editing files directly. "File mode" keeps *"code blocks, inline code, commands, paths, YAML metadata, data, and link targets unchanged."*
- Watch out for cube notation (R U R' U', CMLL, LSE). Wrap it in inline code before a pass. The skill's "When not to act" section protects proper names but says nothing about notation.
- Code that runs automatically: none. There is no `hooks/` folder and no `.mcp.json`. `scripts/validate-package.py` only runs in the repo's own CI.
- Install: the settings block above, or `/plugin marketplace add blader/humanizer` then `/plugin install humanizer@humanizer`.

## 5. Understand Anything: skip

- Repo: https://github.com/Egonex-AI/Understand-Anything, plugin v2.9.8. Lum1104/Understand-Anything redirects there, and `plugin.json` names Egonex-AI.
- What it does:
  - `/understand` builds `.ua/knowledge-graph.json` in a 7-phase pipeline of subagents (project-scanner, file-analyzer, architecture-analyzer, tour-builder and others).
  - `/understand-dashboard` serves a web UI for the graph.
  - It ships a tree-sitter Kotlin extractor, so it could later read the Android code too.
- Why skip:
  - `src/lib` is 32 files and about 4,900 lines of TypeScript. Claude can read the solver directly, and `mattpocock-skills:domain-modeling` can record what it learns.
  - The first run does `pnpm install` and builds `@understand-anything/core`. That needs *"Node.js ≥ 22 and pnpm ≥ 10"* plus native tree-sitter grammars.
  - The dashboard runs `npx --yes https://github.com/Egonex-AI/Understand-Anything/releases/download/v${PLUGIN_VERSION}/understand-anything-viewer.tgz`. It then serves on `127.0.0.1`, which the user cannot open from a cloud container.
- Code that runs automatically:
  - `PostToolUse`, matcher `Bash`: runs `node hooks/post-tool-use-auto-update.mjs` after every Bash call. The script exits early unless the command was `git commit|merge|cherry-pick|rebase` and `.ua/config.json` has `autoUpdate: true`. Otherwise it injects *"You MUST read the file at … and execute its instructions … Do not ask the user for confirmation — just do it."*
  - `SessionStart`: a shell check that gives the same instruction when the graph is stale.
- Install, if ever needed: `/plugin marketplace add Egonex-AI/Understand-Anything` then `/plugin install understand-anything@understand-anything`.

## 6. Diagram design: optional

- Repo: https://github.com/cathrynlavery/diagram-design, plugin v2.6.136. It has one skill and six commands: `doctor`, `export-diagram`, `import-drawio`, `import-excalidraw`, `import-mermaid` and `profile`.
- What it does: *"Create diagrams as self-contained HTML files with inline SVG and an editorial design system."* It supports *"Forty-five visual types"*, including state machine, sequence, architecture and dependency graph, and can redraw an existing Mermaid block.
- Possible uses: the trainer-session state machine, the solver pipeline, or the module map in `docs/roux-android/`.
- Limits:
  - **Output format.** It produces HTML/SVG, not Markdown. GitHub renders a fenced `mermaid` block natively, and agents can diff and edit it. diagram-design pays off only for a diagram people view outside the repo, such as a README hero image or a blog post.
  - **PNG export.** It needs Playwright, which this container doesn't have (`ModuleNotFoundError: No module named 'playwright'`). `references/export.md` says *"Don't auto-install."* SVG export uses only the Python standard library.
  - **First-use prompt.** The first diagram stops at a style gate: *"This is your first diagram in this project and the style guide is still default. Customize now?"*
  - **Fonts.** Templates load Google Fonts. `PRIVACY.md` says it has *"no server, no accounts, no analytics, and no telemetry."*
- Code that runs automatically: none. There are no hooks and no MCP server. The scripts use only the standard library, except `export_png.py`.
- Install: `/plugin marketplace add cathrynlavery/diagram-design` then `/plugin install diagram-design@diagram-design`.

## 7. Stop Slop: skip

- Repo: https://github.com/hardikpandya/stop-slop. It is a 68-line SKILL.md plus three reference files, with no plugin manifest.
- What it does: *"Remove AI writing patterns from prose."*
- Why skip: it covers the same ground as Humanizer. Installed together, both would trigger on the same prompts and give conflicting rules.
- Its rules are absolute where Humanizer's are weighted:
  - *"Kill all adverbs. No -ly words."*
  - *"No passive constructions."* (Humanizer marks passive voice *"Weak alone"*.)
  - *"Em-dash anywhere? Remove it."*
  - *"Sentence starts with a Wh- word? Restructure it."*
- Rules that strict would mangle short UI strings ("What's next?") and technical docs.
- Install, only if chosen instead of Humanizer: `git clone --depth 1 https://github.com/hardikpandya/stop-slop /tmp/stop-slop && mkdir -p .claude/skills/stop-slop && cp -r /tmp/stop-slop/{SKILL.md,references,LICENSE} .claude/skills/stop-slop/`

## 8. awesome-design-md: skip

- Repo: https://github.com/VoltAgent/awesome-design-md. It is a list, not a skill: 84 folders, each holding a `DESIGN.md` *"extracted from real websites"* such as Spotify, Stripe and Linear. The files total about 46.7k lines.
- Each file has nine sections: theme, palette, typography, components, layout, elevation, do's and don'ts, responsive behaviour, and an agent prompt guide.
- Why skip:
  - The values are web CSS: `px` sizes, `rgba(...)` shadows, `500px` pill radii.
  - The fonts are brand fonts, for example Spotify's proprietary "SpotifyMixUI".
  - Only 2 of the 84 files mention Android at all.
  - Copying a brand's look works against an M3E app with its own identity.
- Install: nothing to install. Copy a file by hand if one is ever useful.

## 9. google-labs-code/design.md: skip

- Repo: https://github.com/google-labs-code/design.md. It is a spec (`docs/spec.md`, *"version: alpha"*) and an npm CLI, `@google/design.md` 0.4.0, with `lint`, `diff` and `export` commands.
- It is not a Claude skill. The repo's `.agents/skills/` (tdd, ink and others) are for its own contributors.
- What it does: *"A format specification for describing a visual identity to coding agents."* A file pairs YAML tokens with prose that explains them.
- Why skip:
  - *"Valid units are: px, em, rem"*, with no dp or sp.
  - Export formats are `json-tailwind`, `css-tailwind` and `dtcg`. There is no Compose or Kotlin output.
  - Our tokens already live in `Theme.kt`/`Color.kt`, generated by the vendored md3e `generate_theme.py`. Design intent lives in the docs and `CLAUDE.md`. A DESIGN.md would be a second copy to keep in sync.
  - Google's own `design-md` skill (in stitch-skills) requires the Stitch MCP.
- If it's useful later, borrow its prose section layout (Overview, Colors, Typography…) for a short design brief in `docs/`.

## Open questions / unverified

- **"Slide 4":** which skill the user meant is unknown, so ask. The star counts and licenses for ppt-master and guizang come from a blog post and are UNVERIFIED.
- **Star counts:** read from github.com pages with WebFetch, rounded to "k". Exact counts were not available.
- **Humanizer on `strings.xml`:** File mode promises to keep code and data unchanged. How it handles Android resource XML (escaped apostrophes, `%1$s` placeholders) is UNVERIFIED. Passing the strings in as plain text is safer.
- **Humanizer manifest:** whether v3.1.0 loads cleanly after the manifest fix is UNVERIFIED in this session. freeshape enables it, but it wasn't loaded here.
- **Understand-Anything:** a Better Stack guide reports about 200k tokens and 30 minutes for a demo repo (UNVERIFIED). How well its Kotlin extractor handles Compose code is also UNVERIFIED.
- **diagram-design on GitHub:** SVGs shown through `<img>` can't load the external Google Fonts `@import`, so text probably falls back to system fonts. UNVERIFIED.
- **DTCG to Compose:** design.md's DTCG export could feed a DTCG-to-Compose converter. No such converter was searched for.
