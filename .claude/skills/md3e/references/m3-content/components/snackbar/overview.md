---
source: https://m3.material.io/components/snackbar/overview
title: "Snackbar"
captured: 2026-09-14
---

# Snackbar

> Snackbars show short updates about app processes at the bottom of the screen

-   Snackbars shouldn’t interrupt the user’s experience 
-   Usually appear at the bottom of the UI
-   Can disappear on their own or remain on screen until the user takes action

![Diagram of snackbar placement](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwow6ukp-1.png?alt=media&token=24ee05cc-c58f-4ecb-8348-804d66e04ab4)

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/SnackBar-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/snackbar) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/Snackbar.md) | Available |
|
Web

 | Unavailable |

Close

## Differences from M2

-   Color: New color mappings and compatibility with dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source)
-   Behavior: Clarified that snackbars can either appear temporarily (dismissive) or persist until the user takes an action (non-dismissive)

![Example of snackbar on screen bottom](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwow95bc-2.png?alt=media&token=6719d9ee-ca40-4021-8b1c-1e07c2a88258)

Snackbars have new color mappings
