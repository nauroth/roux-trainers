---
source: https://m3.material.io/foundations/layout/breakpoints/medium
title: "Breakpoints"
captured: 2026-09-14
---

# Breakpoints

> Breakpoints ensure layouts work across a wide range of devices

Layouts for medium breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) are for **screen widths from 600dp to 839dp.**

![A medium breakpoint with a video call app in full-screen mode.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp413hn4-01.png?alt=media&token=2c0da3ff-7141-4ca8-af41-0346e2de7d60)

Single-pane layouts can focus attention on one action or view, such as a video call

## Navigation

Place navigation components close to edges of the window where they’re easier to reach:

-   Single-pane layouts: Navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview)

-   Two-pane layouts: Navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview)

The navigation rail can be hidden in secondary destinations as long as the primary destination can still be accessed using a back button.

![The navigation area of a medium breakpoint is a vertical bar at the leading edge, beside a single pane.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp414ag3-02.png?alt=media&token=64a6283a-5109-4f5c-86ff-68ae06606b69)

1.  Navigation area

2.  Single pane

## Panes

### Single-pane layout  

In a medium layout, a single pane is recommended because of limited screen width.

![A single pane uses most of the space in a medium window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp417y7j-03.png?alt=media&token=327c1e0d-8a6b-4be9-aedf-6371f854b6be)

1.  A single-pane layout is recommended for medium breakpoints

### Two-pane layout

Limit use of two panes for content with lower information density, such as a settings screen.

Each pane in a two-pane layout should take up 50% of the window width. Avoid setting custom widths. A drag handle can be used to expand or collapse panes to be 100% of the window width.

![2-pane layout in a medium window. Both panes fit 50% of the window width by default.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp418umv-04.png?alt=media&token=9b34c412-bb58-42cd-8f44-7c395f8ef18c)

Two-pane layouts should use 50% widths for each pane by default

When adding navigation to a two-pane layout, use a navigation bar. This allows the panes to fully use the available window width.

![A navigation bar extends over 2 panes at the bottom of a medium window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp419dq9-05.png?alt=media&token=58daa7e8-0a14-43e3-90b4-ae2041b8e2ec)

Two-pane layout with:

1.  Navigation bar

## Spacing

Medium layouts have margins of 24dp.

The spacer A spacer is the space between two panes. If panes can be resized, the spacer contains a drag handle. between panes is also 24dp.

![2 pane layout with 24dp margins and 24dp space between panes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41ahko-06.png?alt=media&token=9da78d9d-b883-4409-b40c-48158ed8d2e7)

Use 24dp for margins and spacer in a medium layout

## Special considerations

A medium layout will need to transition dynamically to a compact or expanded layout when:

-   A foldable device is folded

-   A tablet is rotated from portrait to landscape

-   A product goes from full-screen to split-screen

-   Multi-window mode is initiated

-   A free-form window is resized

![Email app with 2 panes at  a medium breakpoint.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5kr0vt-07.png?alt=media&token=9581e119-eca0-4d12-ab75-364cfe6c170e)

Think of how a medium layout should change to a compact or expanded layout

### Reachability

For horizontal tablets and unfolded foldables, the top 25% of the screen is likely out of reach, unless the grip is adjusted. To accommodate device and hand sizes, limit the amount of interactions that are placed in the upper 25% of the screen.

![The hard-to-reach top quarter of a medium breakpoint in landscape mode.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41cohr-08.png?alt=media&token=f2643638-a1cd-48f0-834c-4c801887ba91)

1.  Limit interactions in the upper quarter of a screen, as they can be hard to reach

Avoid placing essential interactive elements too close to the bottom edge of the screen. Some users, particularly those with larger hands, might struggle to reach this area.

Specify interactions in a layout with these ergonomic regions in mind:

1.  Users can reach this area by extending their fingers, which makes it inconvenient

2.  Users can reach this area comfortably

3.  Reaching this area is challenging when holding the device

![The 3 ergonomic regions of a medium breakpoint.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp41dv1l-09.png?alt=media&token=ae8d93b9-146c-457a-864e-a93d0bc727dc)

Medium breakpoint ergonomic regions: 

1.  Inconvenient

2.  Comfortable

3.  Challenging
