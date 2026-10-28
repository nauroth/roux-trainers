---
source: https://m3.material.io/components/sliders/overview
title: "Sliders"
captured: 2026-09-14
---

# Sliders

-   Three variants: Standard, centered, range

-   Has five sizes, vertical and horizontal orientation, and an optional inset icon

-   Sliders should present the full range of available values

-   The slider value should take effect immediately

Sliders change values along a range

## Availability & resources

Close

## M3 Expressive update

**May 2025**

The slider includes expressive configurations for orientation, shape sizes, and an inset icon. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive)

Updated on Android Views (MDC-Android) and Jetpack Compose.

Variants and naming: 

-   Changed **continuous** slider to **standard** slider

-   The **discrete** slider is now the **stops** configuration

New configurations: 

-   Orientation: Horizontal, vertical

-   Optional inset icon (standard slider only)

-   Sizes: XS (existing default), S, M, L, XL

![3 M3 Expressive sliders.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lii3kv-02.png?alt=media&token=315a4297-8491-4398-9ceb-ee02c42bce76)

1.  Standard slider
2.  Centered slider
3.  Range slider

## Previous updates

### Visual refresh to improve non-text contrast

**Dec 2023:** Updated on Android Views (MDC-Android) and Jetpack Compose.

-   **Configuration:** Added centered configuration and range selection

-   **Shape:** New shape for slider tracks and handles. Slider elements change shape when selected.

-   **Motion:** Slider handle adjusts width upon selection. Slider tracks adjust in shape when sliding to the edge.

-   **Color:** Refreshed color mappings

![M3 visually-refreshed slider.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lirx37-03.png?alt=media&token=938a41c7-a272-4f54-b226-a138dbc77dbd)

M3 visual refresh: Sliders have a stop indicator, larger label text, and a vertical handle that narrows when pressed. Centered sliders start from the middle instead of the leading edge.

## Differences from M2

-   **Color**: New color mappings and compatibility with dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source)

![M2 slider.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7livqfr-04.png?alt=media&token=04f22602-6e80-4772-84e6-e36473774b80)

M2: Sliders have a circular handle and a small label when pressed

![Original M3 slider.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7liwct9-05.png?alt=media&token=92017b6d-1e41-4639-9a31-6e78d744afe0)

M3: Sliders have new color mappings and support dynamic color
