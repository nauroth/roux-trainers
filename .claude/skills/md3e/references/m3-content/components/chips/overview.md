---
source: https://m3.material.io/components/chips/overview
title: "Chips"
captured: 2026-09-14
---

# Chips

> Chips help people enter information, make selections, filter content, or trigger actions

-   Use chips to show options for a specific context

-   Four variants: assist Assist chips represent smart or automated actions that can span multiple apps, such as opening a calendar event from the home screen. , filter Filter chips use tags or descriptive words to filter content. They can be a good alternative to toggle buttons or checkboxes. , input Input chips represent discrete pieces of information entered by a user, such as Gmail contacts or filter options within a search field. , and suggestion Suggestion chips help narrow a user’s intent by presenting dynamically generated suggestions, such as suggested responses or search filters.

-   Chip elevation Elevation is the distance between two surfaces on the z-axis. [More on elevation](/m3/pages/elevation/overview) defaults to 0 but can be elevated if they need more visual separation

![4 chip variants.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flzthj7vk-1.png?alt=media&token=87bf4249-1c98-406e-bf83-32e0e1b6d5a6)

1.  Assist chip
2.  Filter chip
3.  Input chip
4.  Suggestion chip

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/Chip-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/chip) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/Chip.md) | Available |
| [Web](https://github.com/material-components/material-web/blob/main/docs/components/chip.md) | Available |

Close

## Updates

**Aug 2024**

Updated stroke color from **outline** to **outline variant**.

![A chip with a clear outline is now a chip with a subtle outline.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sdpshu-02.png?alt=media&token=66986121-1317-4638-8ba4-3119d622eada)

The stroke color was softened to improve visual hierarchy between chips and buttons

## Differences from M2

-   Color: New color mappings and compatibility with dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source)

-   Shape: Rounded rectangle 

-   Variants: Action chips have been separated into assist chips Assist chips represent smart or automated actions that can span multiple apps, such as opening a calendar event from the home screen. and suggestion chips Suggestion chips help narrow a user’s intent by presenting dynamically generated suggestions, such as suggested responses or search filters. . Choice chips are now a subset of filter chips Filter chips use tags or descriptive words to filter content. They can be a good alternative to toggle buttons or checkboxes.

![M2 chip variants.](https://lh3.googleusercontent.com/2QvL9BG6dybkEq8-MxokwRvnU_5-Yxey0SZtSxa9o6KlczyP2t5hAtUxTyZRJbGF9i7m6oOrZCWKJT4CQikVZP3D0cxsKj0yYaMJT4QjnE5q=w40)![M2 chip variants.](https://lh3.googleusercontent.com/2QvL9BG6dybkEq8-MxokwRvnU_5-Yxey0SZtSxa9o6KlczyP2t5hAtUxTyZRJbGF9i7m6oOrZCWKJT4CQikVZP3D0cxsKj0yYaMJT4QjnE5q=s0)

M2: Variants of chips are input, choice, filter, and action chips

![M3 chip variants.](https://lh3.googleusercontent.com/3W0HJhJSBgfi_3TWYvZlXCPDg42elT_0VwxJmTTK5l61ZFdC9l9mPQPqPcUOBXNIce2r3aDWGNECHLcoe41RXvv2rr1bjDL6BsCCvjkxUto=w40)![M3 chip variants.](https://lh3.googleusercontent.com/3W0HJhJSBgfi_3TWYvZlXCPDg42elT_0VwxJmTTK5l61ZFdC9l9mPQPqPcUOBXNIce2r3aDWGNECHLcoe41RXvv2rr1bjDL6BsCCvjkxUto=s0)

M3: Variants of chips updated to assist, filter, input, and suggestion chips
