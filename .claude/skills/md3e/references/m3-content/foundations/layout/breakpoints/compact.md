---
source: https://m3.material.io/foundations/layout/breakpoints/compact
title: "Breakpoints"
captured: 2026-09-14
---

# Breakpoints

> Breakpoints ensure layouts work across a wide range of devices

Layouts for compact breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) are for **screen widths smaller than 600dp.**

![Messaging app at a compact breakpoint.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp40sit1-01.png?alt=media&token=3d76ba96-6280-4b8b-a919-fd862be5b400)

A compact breakpoint focuses on a single view

## Navigation

Use a navigation bar or modal expanded navigation rail.

Place navigation components close to the edge of the screen where they’re easier to reach.

![Navigation bar and FAB are close to the bottom of a mobile app in a compact window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp40u2kw-02.png?alt=media&token=e0de0306-c6ca-4033-b1fa-057417bcf335)

Place navigation elements near the bottom of a compact window so they’re easy to reach

## Panes

Use a single pane in compact layouts.

![The single pane consumes most of the area in a compact window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp40uzbp-03.png?alt=media&token=d9808393-8b19-4eb0-a251-2124305c919a)

1.  Single-pane layouts work best for compact breakpoints

## Spacing

Margins are 16dp from the leading and trailing edge of the window.

![The left and right margins of a compact window pane are 16dp.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp40vzj4-04.png?alt=media&token=f7545d66-d29a-41bd-b117-c322e09c4135)

In compact layouts, use 16dp margins

## Special considerations

A compact layout will need to transition dynamically to a medium or expanded layout when:

-   A foldable device is unfolded

-   A mobile device is rotated from portrait to landscape

-   A tablet exits split-screen mode

-   A product is resized to be larger in multi-window mode

-   A free-form window is resized

![2 mobile layouts showing a messaging app with a 1-pane list and an expanded navigation rail.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp40wssg-05.png?alt=media&token=2a61b218-8ae0-46c9-89c1-5e8ad487d518)

Compact layouts should dynamically transition to larger layouts when a device is unfolded or rotated
