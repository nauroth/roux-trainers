---
source: https://m3.material.io/components/extended-fab/overview
title: "Extended FABs"
captured: 2026-09-14
---

# Extended FABs

> Extended floating action buttons (extended FABs) help people take primary actions

-   Use for the most common or important action on a screen

-   Three variants: small, medium, and large

-   Use instead of FAB when label text is needed to understand action

![3 extended fab sizes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0df17xu-01.png?alt=media&token=06dfec2a-47be-4659-a524-86f136cec764)

1.  Small extended FAB
2.  Medium extended FAB
3.  Large extended FAB

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/fab?hl=en#extended) | Available |
| [Jetpack Compose: Expressive](https://developer.android.com/reference/kotlin/androidx/compose/material3/package-summary#ExtendedFloatingActionButton\(kotlin.Function0,androidx.compose.ui.Modifier,androidx.compose.ui.graphics.Shape,androidx.compose.ui.graphics.Color,androidx.compose.ui.graphics.Color,androidx.compose.material3.FloatingActionButtonElevation,androidx.compose.foundation.interaction.MutableInteractionSource,kotlin.Function1\)) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/FloatingActionButton.md#extended-fabs) | Available |
| [Android Views (MDC-Android): Expressive](https://github.com/material-components/material-components-android/blob/master/docs/components/FloatingActionButton.md#extended-fabs) | Available |
| [Web](https://github.com/material-components/material-web/blob/main/docs/components/fab.md) | Available |
|
Web: Expressive

 | Unavailable |

Close

## M3 Expressive update

**May 2025**

The extended FAB now has three sizes: small, medium, and large, each with updated type styles. These align with the FAB Floating action buttons (FABs) help people take primary actions. [More on FABs](/m3/pages/fab/overview) sizes for an easier transition between FABs. The baseline extended FAB is no longer recommended and should be replaced with the small extended FAB. Surface and FABs are also no longer recommended. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive)

Variants and naming:

-   Added new sizes

    -   Small: 56dp

    -   Medium: 80dp

    -   Large: 96dp

-   No longer recommended

    -   Baseline extended FAB (56dp)

    -   Surface extended FAB

Updates:

-   Adjusted typography to be larger

![The baseline extended FAB and the small, medium, and large extended FABs from the expressive update.](https://lh3.googleusercontent.com/o8RP_K8msVBonOVgmcnANIcH_obxNxoaP2OKhzTpcLR6f6W8f2TJH0x2t0k703n-EIp_WM4_fMyA4JBqwpHbw0Z7Xdvpub3Ulltel37QN-8=w40)![The baseline extended FAB and the small, medium, and large extended FABs from the expressive update.](https://lh3.googleusercontent.com/o8RP_K8msVBonOVgmcnANIcH_obxNxoaP2OKhzTpcLR6f6W8f2TJH0x2t0k703n-EIp_WM4_fMyA4JBqwpHbw0Z7Xdvpub3Ulltel37QN-8=s0)

The baseline extended FAB is replaced with a set of small, medium, and large extended FABs with new typography

## Differences from M2

-   Color: New color mappings and compatibility with dynamic color
-   Layout: Extended FAB is the same height as the FAB
-   Shape: Boxier style with smaller corner radius

![Diagram comparing the M2 FAB and extended FAB.](https://lh3.googleusercontent.com/CLwhLFrMkpEgnOAWORcnTMHBqt8gZ67coHMiSw1taCuxR0nRqasV1w7XWJ50w6ZT6gD6aZql87KrxZHdqiWya-bPwCnZx20ibdoKjagt7kyW9Q=w40)![Diagram comparing the M2 FAB and extended FAB.](https://lh3.googleusercontent.com/CLwhLFrMkpEgnOAWORcnTMHBqt8gZ67coHMiSw1taCuxR0nRqasV1w7XWJ50w6ZT6gD6aZql87KrxZHdqiWya-bPwCnZx20ibdoKjagt7kyW9Q=s0)

M2: Extended FABs are pill-shaped and have a different height and elevation

![Diagram comparing the M3 FAB and extended FAB.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dff6p3-05.png?alt=media&token=896b601f-21d9-4cae-854f-840ba268dd73)

M3: Extended FABs share the same height, boxier shape, and simpler elevation model as FABs
