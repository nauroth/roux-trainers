---
source: https://m3.material.io/components/text-fields/overview
title: "Text fields"
captured: 2026-09-14
---

# Text fields

> Text fields let users enter text into a UI

-   Make sure text fields look interactive

-   Two variants: filled Filled text fields have more visual emphasis than outlined text fields. They're often used in dialogs and short forms where their style draws more attention. and outlined Outlined text fields have less visual emphasis than filled text fields. They're often used in long forms where their reduced emphasis helps simplify the layout.

-   The text field’s state States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) (blank, with input, error, etc) should be visible at a glance

-   Keep labels and error messages brief and easy to act on

-   Text fields commonly appear in forms and dialogs Dialogs provide important prompts in a user flow. [More on dialogs](/m3/pages/dialogs/overview)

![2 variants of text fields, filled and outlined.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx2u2h3p-1.png?alt=media&token=71a990c4-03bd-4c34-afc6-130018ed186e)

1.  Filled text field
2.  Outlined text field

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/ThemeData/useMaterial3.html) | Available |
| [Jetpack Compose](https://developer.android.com/reference/kotlin/androidx/compose/material3/package-summary#textfield) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/TextField.md) | Available |
| [Web](https://github.com/material-components/material-web/blob/main/docs/components/text-field.md) | Available |

Close

## Differences from M2

-   Color: New color mappings and compatibility with dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source)

![A filled and outlined text field with M3 color mappings.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx2u3e4d-2.png?alt=media&token=896d9b04-c327-4904-9c1b-368bb684d53c)

Text fields have new color mappings
