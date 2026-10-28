---
source: https://m3.material.io/components/navigation-bar/overview
title: "Navigation bar"
captured: 2026-09-14
---

# Navigation bar

> Navigation bars let people switch between UI views on smaller devices

-   Use navigation bars in compact Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact window size class](/m3/pages/breakpoints/compact) or medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium window size class](/m3/pages/breakpoints/medium) window sizes

-   Can contain 3-5 destinations of equal importance

-   Destinations don't change. They should be consistent across app screens.

![Two navigation bars of different widths with 4 destinations.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0fodjau-01.png?alt=media&token=2a83f14e-464f-4f96-9c01-eb770d98010e)

Navigation bar for compact and medium window sizes

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/NavigationBar-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/navigation-bar) | Available |
| [Jetpack Compose: Expressive](https://developer.android.com/reference/kotlin/androidx/compose/material3/package-summary#NavigationBar\(androidx.compose.ui.Modifier,androidx.compose.ui.graphics.Color,androidx.compose.ui.graphics.Color,androidx.compose.ui.unit.Dp,androidx.compose.foundation.layout.WindowInsets,kotlin.Function1\)) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/BottomNavigation.md) | Available |
| [Android Views (MDC-Android): Expressive](https://github.com/material-components/material-components-android/blob/master/docs/components/BottomNavigation.md) | Available |
|
Web

 | Unavailable |
|

Web: Expressive

 | Unavailable |

Close

## M3 Expressive update

**May 2025**

A new flexible navigation bar was introduced to replace the baseline navigation bar. It’s shorter and supports horizontal navigation items in medium windows. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive)

Variants and naming:

-   Baseline navigation bar is no longer recommended

-   Added **flexible** navigation bar

    -   Shorter height

    -   Can be used in medium window sizes with horizontal navigation items

Color:

-   Active label changed from **on-surface-variant** to **secondary**

![Navigation bar in M3 Expressive. It’s shorter than the baseline nav bar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmae7qe43-02.png?alt=media&token=52cdfa5b-8a10-45d5-af7c-0a92cc899672)

The flexible navigation bar is shorter and can be used in medium windows with horizontal nav items

## Differences from M2

-   Color: New color mappings and compatibility with dynamic color
-   Elevation: No shadow
-   Layout: Container height is taller 
-   States: The active destination can be indicated with a pill shape in a contrasting color
-   Name: Bottom navigation has been renamed **navigation bar**

![M2 nav bar with a drop shadow and no active indicator.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0ddmjvm-03.png?alt=media&token=9e50be86-5460-46f5-90a7-0805ec3c9127)

M2: A drop shadow indicates placement on top of content. Filled and regular weight icons indicate active states.

![M3 nav bar with a surface color and active indicator.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmae7pvz8-04.png?alt=media&token=98531a7d-df77-4d8e-a56b-7164db497bd9)

M3: Taller and no drop shadow. Filled icons and an active indicator indicate active state.
