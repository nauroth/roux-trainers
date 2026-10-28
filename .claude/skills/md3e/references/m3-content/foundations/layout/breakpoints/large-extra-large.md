---
source: https://m3.material.io/foundations/layout/breakpoints/large-extra-large
title: "Breakpoints"
captured: 2026-09-14
---

# Breakpoints

> Breakpoints ensure layouts work across a wide range of devices

These breakpoints are most useful for creating web experiences tailored to laptop and desktop devices. Some products may not need large and extra-large breakpoints. Consider your platform’s conventions and users when making decisions on which breakpoints to design for.

-   Layouts for large breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) are for screen widths **from 1200dp to 1599dp**

-   Layouts for extra-large breakpoints are for screen widths of **1600dp and larger**

![Large window with a video app in 2 pane layout.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41v09e-01.png?alt=media&token=7f094b0b-b03b-4951-a36d-4a8c6093e85e)

A two-pane layout is recommended for large and extra-large breakpoints

## Navigation

Use a navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview) , either collapsed or expanded, depending on the amount of content.  

For sorting, filtering, or secondary navigation, use tabs or other components directly in the pane.

![Large web browser with a small navigation area on the leading edge with 1 pane filling the rest of the window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41w5ix-02.png?alt=media&token=9614a072-ce72-4776-a47f-91ab5187e9be)

1.  Collapsed navigation area

2.  Single-pane layout

An expanded navigation rail is best suited for extra-large windows, where there's still plenty of room for content. Consider collapsing the navigation rail when space is needed, or when on pages deeper in the page hierarchy.

![Extra-large web browser with an expanded navigation area and 1 pane filling the rest of the window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41xhwl-03.png?alt=media&token=3d8311b3-3c1e-4e15-a616-a3671838fc27)

1.  Expanded navigation area

2.  Single-pane layout

## Panes

A two-pane layout is often best for large and extra-large breakpoints.   

However, a single-pane layout can work when displaying visually- or information-dense content, such as videos.

![The single pane covers most of a large screen except for the navigation area and margins.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41y2za-04.png?alt=media&token=e358e573-2d73-467d-b691-018e78dcb632)

Only use a single-pane layout for dense content or media

When using a [fixed-and-flexible](/m3/pages/scaffold/panes#92371c3b-587d-4c6f-8105-05b69dcec81a) layout, the fixed pane should have a width of 412dp by default. 

![A 2-pane layout with 1 pane fixed at 412dp.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41yyza-05.png?alt=media&token=b8a289e7-29b4-4203-aabe-0b1d74d8dfed)

Fixed panes should be 412dp in large and extra-large layouts

When using a [split-pane layout](/m3/pages/scaffold/panes#dc7982b7-754c-410a-9e88-18a54557c87b), the spacer should be visually centered by default, even when using an expanded navigation rail. 

![An expanded nav rail and the first pane take up 50% of the window, and the second pane takes up 50%. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41zo3h-06.png?alt=media&token=c84fdbe6-ae28-4c1e-90f8-78b4febd3cf7)

In split-pane layouts, navigation components shrink the leading pane, so the spacer remains centered

## Additional panes

The extra-large breakpoint supports using a standard side sheet Standard side sheets display content without blocking access to the screen’s primary content, such as an audio player at the side of a music app. They're often used in medium and expanded window sizes like tablet or desktop. [More on side sheets](/m3/pages/side-sheets/overview) as a third pane. When the side sheet is present, the navigation rail can remain visible, collapse, or hide completely. Don't use more than three panes.   

Note: Fixed panes in this window size are recommended to be 412dp, but side sheets have a default maximum width of 400dp. 

![Extra-large window with 2 panes and a side sheet acting as a third pane.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp420iqc-07.png?alt=media&token=5b1ecbcf-5222-4480-95d6-cea9cbf11938)

1.  Standard side sheet (third pane)

## Spacing

Large and extra-large layouts have a leading and trailing margin of 24dp.

The spacer A spacer is the space between two panes. If panes can be resized, the spacer contains a drag handle. between panes is 24dp.

![2 pane layout with 24dp margins and 24dp space between panes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5lfdh0-08.png?alt=media&token=6cd05b0b-e27f-42eb-89f7-810209deab65)

Use 24dp for margins and spacers in large and extra-large layouts

## Special considerations

Large and extra-large layouts will need to transition dynamically to a smaller layout when:

-   The app goes from full-screen to split-screen

-   Multi-window mode is initiated

-   A free-form window is resized

Pay attention to typographic elements such as line length to ensure readability on large and extra-large layouts.

![An email app with 2 panes in a large layout.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp42206a-09.png?alt=media&token=985c34f9-93f7-410a-8a2d-3b060180c293)

Consider how a large layout should change at smaller breakpoints
