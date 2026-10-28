---
source: https://m3.material.io/styles/color/system/overview
title: "Color system"
captured: 2026-09-14
---

# Color system

> Create accessible, personal color schemes communicating your product's hierarchy, state, and brand

**The Material color system includes:**

-   Built-in set of accessible color relationships For example, a dark surface color is algorithmically paired with a light text label color so the UI automatically meets contrast requirements. [More on color relationships](/m3/pages/color/how-the-system-works#e1e92a3b-8702-46b6-8132-58321aa600bd)
-   26+ color roles Color roles are assigned to UI elements based on emphasis, container type, and relationship with other elements. This ensures proper contrast and usage in any color scheme. [More on color roles](/m3/pages/color-roles) mapped to Material Components
-   Built-in dark theme A dark theme is a low-light version of a UI that displays mostly dark surfaces. colors
-   Static baseline color scheme Baseline is the default static color scheme for Material products. It includes colors for both light and dark themes. [More on the baseline color scheme](/m3/pages/static/baseline) with default colors assigned to each color role
-   Dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source) features including user-generated User-generated color dynamically creates a color scheme from a user's wallpaper. [More on user-generated color](/m3/pages/dynamic/user-generated-source) and content-based color Content-based color dynamically creates a color scheme from in-app content like a music album or book cover. [More on content-based color](/m3/pages/dynamic/content-based-source)

[Learn how the system works](/m3/pages/color/how-the-system-works)

Learn about the value and function of Material 3’s dynamic color system and how it differs from past color systems

View transcript Welcome to color in Material 3. This video will introduce the purpose of color and Material 3’s algorithmic color system, or “dynamic color”. By the end of this video, you’ll understand the value and function of dynamic color and how it differs from past color systems. Color is a powerful design tool and part of the Material system along with styles like typography and shape. In products, colors and the way they’re used can be vast and varied. An app’s color scheme can express brand and style, semantic colors can communicate meaning, and color contrast supports visual accessibility. In many design systems of the past, designers manually picked app colors to support the necessary range of color applications and use cases. But Material 3 has a dynamic color system, which doesn’t rely on handpicked colors. Instead, it uses color algorithms to generate beautiful, accessible color schemes based on dynamic inputs like a user’s wallpaper. This enables greater flexibility, personalization, and expression all while streamlining work for designers and teams.

![Primary, on primary, primary container, and on primary container roles shown in baseline light theme color scheme.](https://lh3.googleusercontent.com/5J0Ys6e-vzMeQPCfAMQcY147g2yFpXFrJEZK-AB8x8wGKMzdeQX3_GxE-xCOwuBANbYWr-g29epip05CF7fTGVz5gTc7wTBzFNp7AzXmdCVX=s0)

The baseline color scheme doesn't dynamically change

![Diagram showing an input color resulting in a simplified illustration of four roles of a color scheme. Shown in green and yellow in light theme.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9uoi8a-dynamic%20color.png?alt=media&token=a7969547-b71e-4d76-84d6-fe0ad98c7e62)

A dynamic color scheme changes the UI's colors based on different inputs, like a wallpaper

![Diagram showing an orange input color generating a static orange color scheme for an auto heating UI element.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9uorlq-semantic-colors.png?alt=media&token=32f5150c-8487-48f8-bdc1-4491dc057f84)

Specific colors, such as semantic colors, can be set to not dynamically change

Products with dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source) can automatically generate and assign colors to each element in the UI.

This provides:

-   Personalized UI
-   Accessible contrast
-   User-controlled contrast
-   Automatic dark theme

The UI colors change dynamically

## Resources

| Type | Link | Status |
| --- | --- | --- |
| Design | [Design Kit](https://www.figma.com/community/file/1035203688168086460) (Figma) | Available |
| Implementation | [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/theming/Color.md) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/designsystems/material3#dynamic_color_schemes) | Available |
| [Flutter](https://pub.dev/packages/dynamic_color) | Available |
| Tools | [Material Theme Builder](https://www.figma.com/community/plugin/1034969338659738588/material-theme-builder) | Available |

## What's new

May 2025

### Three levels of contrast

Color roles support three levels of contrast so people can select the one that best suits their vision needs. Contrasts also are tokenized.

![Email app in standard contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrw9ybms-05.png?alt=media&token=3abcfad5-ee12-4b75-a29c-ca290b86876a)

Standard contrast

![Email app in medium contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwa03ny-06.png?alt=media&token=f43cb4a5-1f6f-4626-a693-68a8cecc1119)

Medium contrast

![Email app in high contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwa0o3p-07.png?alt=media&token=eedfb51e-40eb-4441-b53b-5854e7b21152)

High contrast

August 2024

### More colorful text and icons

The following color roles are updated in light theme to be more colorful while still having accessible color contrast:

-   On primary container
-   On secondary container
-   On tertiary container
-   On error container 

Affected components:

-   Badges
-   Buttons
    -   Buttons
    -   Extended FAB
    -   FAB
    -   Icon buttons
    -   Segmented buttons
-   Chips
-   Lists
-   Menus
-   Navigation bar
-   Navigation drawer 
-   Navigation rail 
-   Switches
-   Toolbars

![Comparison of the color before and after the update, with FAB and button examples.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwa1hcg-08.png?alt=media&token=fe61c87c-7f96-421f-94a4-1f8c8c80208c)

Colors used for text and icons now appear more colorful

Oct 2023

### Reorganized guidelines

Same color system, explained in a new way. Updated sections include:

-   [How the system works](/m3/pages/color/how-the-system-works)
-   [Advanced customizations](/m3/pages/advanced/overview)
-   [Color resources](/m3/pages/color-resources)

![Diagram illustrating guidelines being reorganized](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9upnnh-reorganized-guidelines.png?alt=media&token=57c601ca-75fe-49c9-aef5-952f3bf00e68)

The guidelines have been reorganized and updated

Feb 2023

### Tone-based surface colors

[Tone-based surface color roles](https://material.io/blog/tone-based-surface-color-m3) have replaced the previous approach of surfaces at +1 to +5 elevation.  The new color roles are not tied to elevation Elevation is the distance between two surfaces on the z-axis. [More on elevation](/m3/pages/elevation/overview) and offer more flexibility and support for color features, such as user-controlled contrast User-controlled contrast is a dynamic color feature enabling users to choose from one of three levels of color contrast: standard, medium, and high. [More on user-controlled contrast](/m3/pages/color/how-the-system-works#0207ef40-7f0d-4da8-9280-f062aa6b3e04) .

![Simplified tablet UI showcasing the application of surface roles, shown in light theme](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9urd5o-%5B1P%5D%20what-is-new-surface.png?alt=media&token=0c9aba76-eda9-4503-ac75-6114e7e99d8b)

New tone-based surface colors offer more flexibility and support

Technical changes were made to align the color system with Android SysUI:

-   Updated the default light theme surface from tone 99 to tone 98
-   Updated the chroma for the neutral palette, increasing it from 4 to 6
-   Slightly darkened surface roles in dark theme

![Before and after swatch of the default light theme surface, showcasing the difference in chroma and tone](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9urxta-chroma-tone-update.png?alt=media&token=9ae5f3c9-525d-4602-b0ed-d59af40ba43e)

Changes in tone and chroma in the default light theme surface

Feb 2023

### Additional accent colors

Additional accent colors in the scheme provide more flexibility and choice for color application. In particular, a new set of fixed colors Fixed colors keep the same color value in light and dark themes, as opposed to regular container colors, which change tone between themes, or static colors, which don't change at all. [More on fixed colors](/m3/pages/color-roles/tab-1#26b6a882-064d-4668-b096-c51142477850) for the **primary**, **secondary**, and **tertiary** accent groups provide colors which stay the same across light and dark themes.

![Fab and star icon show in fixed and fixed dim roles, in both light and dark theme](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9utr1z-whats-new-fixed-colors.png?alt=media&token=5f8ce61b-6eb8-4b8f-a336-08b01c9af58a)

Additional accent colors provide more choice for color application
