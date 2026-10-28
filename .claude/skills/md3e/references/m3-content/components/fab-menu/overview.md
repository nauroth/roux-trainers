---
source: https://m3.material.io/components/fab-menu/overview
title: "FAB menu"
captured: 2026-09-14
---

# FAB menu

> The floating action button (FAB) menu opens from a FAB to display multiple related actions

-   Opens from a FAB Floating action buttons (FABs) help people take primary actions. [More on FABs](/m3/pages/fab/overview) to show 2–6 related actions floating on screen
-   One FAB menu size for all sizes of FABs
-   Not used with extended FABs Extended floating action buttons (extended FABs) help people take primary actions. [More on extended FABs](/m3/pages/extended-fab/overview)
-   Available in primary, secondary, and tertiary color sets

![3 FAB menus in different color schemes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0aj37mw-01.png?alt=media&token=1ac9e775-2541-4a63-8818-d76cf8570699)

The FAB menu comes in three color sets: primary, secondary, tertiary

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Jetpack Compose: Expressive](https://developer.android.com/reference/kotlin/androidx/compose/material3/package-summary#FloatingActionButtonMenu\(kotlin.Boolean,kotlin.Function0,androidx.compose.ui.Modifier,androidx.compose.ui.Alignment.Horizontal,kotlin.Function1\)) | Available |
|
Android Views (MDC-Android): Expressive

 | Unavailable |
|

Web: Expressive

 | Unavailable |

Close

## M3 Expressive update

**May 2025**

The FAB menu adds more options to the FAB. It should replace the speed dial and any usage of stacked small FABs. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive)

New component added to catalog:

-   One menu size that pairs with any FAB
-   Replaces any usage of stacked small FABs

Color:

-   Contrasting close button and item colors
-   Supports dynamic color
-   Compatible with any FAB color style

![4 screens. The FAB menu is on the first, and 3 FABs of different sizes are on the others.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0aj3ip6-02.png?alt=media&token=fde56cc4-c285-45ef-9019-faa06da95454)

The FAB menu uses contrasting color and large items to focus attention. It can open from any size FAB.

## Differences from M2

![M2 speed dial.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0aj3w24-Diff%20GM2.png?alt=media&token=e358569f-0a63-4ead-a844-ad98804cee2d)

M2: The speed dial used small round FABs

![GM3 FAB menu.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0aj42vs-Diff%20GM3%20Expressive.png?alt=media&token=b0d9f87d-66c0-48f4-9a11-e312b5b207ef)

M3: The FAB menu uses dynamic color and a larger item size
