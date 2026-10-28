---
source: https://m3.material.io/components/navigation-drawer/overview
title: "Navigation drawer"
captured: 2026-09-14
---

# Navigation drawer

> Navigation drawers let people switch between UI views on larger devices

star

Note:

The navigation drawer is no longer recommended in the Material 3 Expressive update. For those who have updated, use an [expanded navigation rail](/m3/pages/navigation-rail/overview/), which has mostly the same functionality of the navigation drawer and adapts better across breakpoints.

-   Use standard navigation drawers in expanded Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , large Window widths 1200dp to 1599dp, such as desktop. [More on large breakpoints](/m3/pages/breakpoints/large-extra-large) , and extra-large breakpoints Window widths 1600dp and larger, such as ultra-wide monitors. [More on extra-large breakpoints](/m3/pages/breakpoints/large-extra-large)

-   Use modal navigation drawers in compact Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) and medium breakpoints Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium)

-   Can be open or closed by default

-   Two variants: standard and modal

-   Put the most frequent destinations at the top and group related destinations together

![2 variants of navigation drawers: standard and modal.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoorr6v-1.png?alt=media&token=884dcde5-fdd3-438c-9825-1f6668eef908)

1.  Standard navigation drawer
2.  Modal navigation drawer

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/NavigationDrawer-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/drawer) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/NavigationDrawer.md) | Available |
|
Web

 | Unavailable |

Close

## M3 Expressive update

**May 2025**

The navigation drawer is no longer recommended. Use the expanded navigation rail Expanded navigation rails show text labels and an extended FAB, and can be default or modal. [More on navigation rails](/m3/pages/navigation-rail/overview) instead. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive)

## Differences from M2

-   Color: New color mappings and compatibility with dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source)

-   Variants: Distinguishes two separate variants of navigation drawer: Standard and modal

-   Shape: Rounded corners at the ending edge of the drawer

-   States States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) : Updated color and shape for indicating selected state

![M2 navigation drawer with 4 destinations in a mail app. The active destination “Inbox” is rectangular.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fldox2g48-navdrawer_OLD_M2.png?alt=media&token=192ac522-fc4c-4fd2-8fd2-ef6d0f6662e7)

M2: Navigation drawer had square corners and a rectangular shape indicating the active destination

![M3 navigation drawer with 4 destinations in a mail app. The active destination “Inbox” has rounded corners.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flzdbjtd0-4.png?alt=media&token=8621f0a5-d2d3-41b1-bed8-3d5d6c5fdf34)

M3: Navigation drawer has rounded corners, new color mappings, and an updated style for indicating the active destination
