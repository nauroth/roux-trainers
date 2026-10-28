# Vendored skills

Copied from upstream at a pinned commit; each folder keeps its upstream `LICENSE`.
Don't edit them in place: put project-specific guidance in `CLAUDE.md` instead, and
re-copy from upstream to update.

| Skill | Upstream | Commit | License | What was copied |
| --- | --- | --- | --- | --- |
| `md3e` | [mfskys/md3e-skill](https://github.com/mfskys/md3e-skill) | `640264b063c592d25191b8dd2c6c7734c6f16356` | Apache-2.0 | `SKILL.md`, `assets/`, `references/`, `scripts/generate_theme.py` |
| `material-design-3-ui` | [skydashnet/material-design-3-ui-skill](https://github.com/skydashnet/material-design-3-ui-skill) | `82783f76de4a5b08a60421cae935cf8de7ca1ee8` | MIT | `SKILL.md`, `references/` |
| `design-critique` | [anthropics/knowledge-work-plugins](https://github.com/anthropics/knowledge-work-plugins) `design/skills/design-critique` | `2574e29377c7173d0cecffef29a6ecbd7f8ccb5d` | Apache-2.0 | `SKILL.md` |
| `accessibility-review` | [anthropics/knowledge-work-plugins](https://github.com/anthropics/knowledge-work-plugins) `design/skills/accessibility-review` | `2574e29377c7173d0cecffef29a6ecbd7f8ccb5d` | Apache-2.0 | `SKILL.md` |

Installed as plugins instead (see `.claude/settings.json`): `android-skills@android-skills`
([android/skills](https://github.com/android/skills)) and `chrisbanes-skills@chrisbanes-skills`
([chrisbanes/skills](https://github.com/chrisbanes/skills)), both Apache-2.0, no hooks.

`design-critique` and `accessibility-review` are written for the web (WCAG CSS pixels,
keyboard, VoiceOver/NVDA). On Android read them as: touch targets ≥ 48dp, TalkBack,
font scale up to 200%, and Roborazzi PNGs as the "screenshot" input.
