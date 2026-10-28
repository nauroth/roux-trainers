---
source: https://m3.material.io/foundations/layout/breakpoints/expanded
title: "Breakpoints"
captured: 2026-09-14
---

# Breakpoints

> Breakpoints ensure layouts work across a wide range of devices

Layouts for expanded breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) are for **screen widths from 840dp to 1199dp.**

![Supporting pane layout of a video app. The large, primary pane has the video, title, and actions. The secondary pane has queued videos.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41hvbo-01.png?alt=media&token=a0987d8d-bee6-446b-9533-8bad300ec920)

Two-pane layouts are often best for expanded breakpoints

## Navigation

Place navigation components close to edges of the window where they’re easier to reach. Use a navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview) , either collapsed or expanded.

The navigation rail can be hidden in secondary destinations as long as the primary destination can still be accessed using a back button.

For sorting, filtering, or secondary navigation, use tabs or other components directly in the pane.

![The navigation area is a vertical bar at the left of the screen. To its right, the body pane fills the rest of the window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41iro5-02.png?alt=media&token=d61c1d3f-5835-4afa-8577-c5e0f27eedb8)

1.  Navigation area

2.  Single pane

## Panes

Use a single-pane or two-pane layout.

A two-pane layout is often best for expanded breakpoints. However, a single-pane layout can work when displaying visually- or information-dense content, such as videos.

![A single pane covers most of the expanded screen except for the navigation area and margins.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41jkb5-03.png?alt=media&token=6ba22cd5-a9b7-4c62-9c8a-90049d3742b3)

At an expanded breakpoint, reserve single-pane layouts for information-dense content

When using a [fixed-and-flexible](/m3/pages/scaffold/panes#92371c3b-587d-4c6f-8105-05b69dcec81a) layout, the fixed pane should have a width of 360dp by default.

In a fixed-and-flexible layout, the fixed pane is 360dp by default

A [split-pane layout](/m3/pages/scaffold/panes#dc7982b7-754c-410a-9e88-18a54557c87b) uses two flexible panes and visually centers the spacer by default. 

The navigation and first pane are 50% of the window width to keep the spacer visually centered

## Spacing

Expanded layouts have a leading and trailing margin of 24dp.

The spacer between panes is 24dp.

![2 pane layout with 24dp margins and 24dp space between panes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5l3xgt-06.png?alt=media&token=7bf8133f-ef0c-4377-8cd4-abe7cb6c41d8)

Use 24dp for margins and spacer in an expanded layout

## Special considerations

An expanded layout will need to transition dynamically to a compact or medium layout when:

-   A foldable device is folded

-   A tablet is rotated from landscape to portrait

-   The app goes from full-screen to split-screen

-   Multi-window mode is initiated

-   A free-form window is resized

Consider how an expanded layout should change at medium and compact breakpoints
