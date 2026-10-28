---
source: https://m3.material.io/components/badges/overview
title: "Badges"
captured: 2026-09-14
---

# Badges

> Badges show notifications, counts, or status information on navigation items and icons

-   Can contain labels or numbers

-   Two variants: small Small badges are a simple circle used to indicate an unread notification. and large Large badges contain label text communicating item count information.

-   Anchor badges inside the icon bounding box, at the upper trailing edge of the icon

-   Limit content to four characters, including a **+**

-   Keep the default color mapping

![3 icons with badges. 1 is a small dot. 2 is a larger circle with a 1 digit number. 3 is an oval with a 4 digit number.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8hopxl-01.png?alt=media&token=e9840156-17f4-4edf-b69a-eb62bd0b5c5c)

1.  Small badge on a navigation item
2.  Large badge on a navigation item
3.  Large badge with max characters on a navigation item

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/Badge-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/badges) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/BadgeDrawable.md) | Available |
|
Web

 | Unavailable |

Close

## Differences from M2

-   Color: New color mappings and compatibility with dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source)

![Navigation bar showing 4 icons with different badge variants in a bright red color.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8hz0r2-02.png?alt=media&token=579d40e2-1895-4ed4-a074-22f71265f580)

Badges have new color mappings
