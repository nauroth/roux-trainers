---
source: https://m3.material.io/components/app-bars/overview
title: "App bars"
captured: 2026-09-14
---

# App bars

> App bars are placed at the top of the screen to help people navigate through a product.

-   Focus on describing the current page and provide 1–2 essential actions

-   Displays labels and page navigation controls at the top of the page. (Use a toolbar Toolbars display frequently used actions relevant to the current page. [More on toolbars](/m3/pages/toolbars/overview) to display page actions)

-   Four variants: Search app bar, small, medium flexible, large flexible

-   On scroll, apply a fill color to separate from body content

-   Can animate on and off screen with another bar of controls, like a row of chips Chips help people enter information, make selections, filter content, or trigger actions. [More on chips](/m3/pages/chips/overview)

![4 configurations of app bars stacked vertically to show differences.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlktxqjf-01.png?alt=media&token=fe608fa5-00d5-4278-a2a5-2edcdbb248d0)

1.  Search app bar
2.  Small
3.  Medium flexible
4.  Large flexible

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/AppBar-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/app-bars?hl=en) | Available |
| [Jetpack Compose: Expressive](https://developer.android.com/reference/kotlin/androidx/compose/material3/package-summary#AppBarRow\(kotlin.Function1,androidx.compose.ui.Modifier,kotlin.Function1\)) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/TopAppBar.md) | Available |
| [Android Views (MDC-Android): Expressive](https://github.com/material-components/material-components-android/blob/master/docs/components/TopAppBar.md) | Available |
|
Web

 | Unavailable |
|

Web: Expressive

 | Unavailable |

Close

## M3 Expressive update

**May 2025**
The new **search app bar** supports icons inside and outside the search bar, and centered text. It opens the [search view](/m3/pages/search/overview) component when selected.

The new **medium flexible** and **large flexible** app bars come with significant improvements, and should replace **medium** and **large** app bars, which are no longer recommended. The **small** app bar is updated with the same flexible improvements. 

[More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive)

Variants and naming:

-   Renamed component from **top app bar** to **app bar**

-   Added **search app bar**

-   **Medium** and **large** app bars are no longer recommended

-   Added **medium flexible** and **large flexible** app bars with:

    -   Reduced overall height

    -   Larger title text

    -   Subtitle

    -   Left- and center-aligned text options

    -   Text wrapping

    -   More flexible elements for imagery and filled buttons

-   Added features to **small** app bar:

    -   Subtitle

    -   Center-aligned text option

    -   More flexible elements for imagery and filled buttons

![4 total app bar configurations.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlku5356-05.png?alt=media&token=76ad704f-5607-425a-83a1-0f2ae2ca8f2e)

1.  Search app bar
2.  Small
3.  Medium flexible
4.  Large flexible

## Differences from M2

-   Color: New color mappings and compatibility with dynamic color
-   On scroll: No drop shadow, instead a color fill creates separation from content
-   Typography: Larger default text
-   Layout: Smaller default height

![M2 top app bar with elevation to separate it from main content.](https://lh3.googleusercontent.com/cBekWt7xDa8xEu5XXaem1OHo1sbSYkWtpPf8V_6QeBgGzxia-Ba6WoZDfUkaUvywiflh3J89oatLV3Zpqv4DupaDfVyy41vXxkxpDAnEqvaGtw=w40)

M2: Elevation and a drop shadow raise the top app bar when content is present underneath

![M3 app bar with subtle color difference from main content.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlkui2vk-07.png?alt=media&token=ab974573-5f3b-469a-9779-173b3101e1f0)

M3: On scroll, a color fill overlay separates the app bar from the content beneath
