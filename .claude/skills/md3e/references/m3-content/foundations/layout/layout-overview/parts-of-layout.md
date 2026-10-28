---
source: https://m3.material.io/foundations/layout/layout-overview/parts-of-layout
title: "Layout overview"
captured: 2026-09-14
---

# Layout overview

> Layout is the visual and strategic arrangement of elements on a screen

## Parts of layout

### Windows

A window frames and contains an app or product.

Many systems support multi-window views, which display multiple apps at once.

[Multi-window support guide for Android](https://developer.android.com/develop/ui/compose/layouts/adaptive/support-multi-window-mode)

![Stacked windows with a single taskbar underneath.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3yuwss-01.png?alt=media&token=1040af33-3239-4b03-bd3c-4196c3456b87)

Two windows can be shown at once with a taskbar underneath

On desktop, windows can be resized and moved around freely. They should adapt to various screen sizes.

[More on adaptive design](/m3/pages/layout-overview/adaptive-design)

![2 overlapping desktop windows.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3z1fl4-02.png?alt=media&token=431b13e9-b426-4874-8c2c-2b1e20882b6a)

Windows can be moved around, resized, and adapt to different screen sizes

### Grids

The layout grid is the foundation for every layout. It provides a structural framework for organizing components, content, and actions.

Use the grid to:

-   Group related information in columns

-   Apply spacing consistently

-   Create focal points for primary actions

-   Align building blocks like bars, rails, and panes

[More on grids](/m3/pages/grids-spacing/grids)

![Side-by-side compact and expanded windows with different grid spacing.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3z8y9f-03.png?alt=media&token=fc4a96db-308a-40f6-984b-8d70ff3451fe)

Column count, width, and spacing dynamically adjust to different breakpoints

## Layout scaffold

### Bars

Bars help people navigate through a product. Use bars to:

-   Frame the main content

-   Contain an app bar App bars contain page navigation and information at the top of a screen. [More on app bars](/m3/pages/app-bars/overview) or navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview)

-   Span one or multiple panes  

[More on bars](/m3/pages/scaffold/bars)

![A photo app with an app bar below the safety region.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp45sv4u-04.png?alt=media&token=b9c750d7-b9de-450e-809c-c6e6c0081531)

1\. App bars are placed at the top of the screen to help people navigate by providing a description of the screen and 1–2 essential actions, like search or back navigation

### Rails

Rails are the next level in layout after bars, filling the perimeter space surrounding panes, or floating above them. They contain key elements such as navigation rails Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview) , toolbars Toolbars display frequently used actions relevant to the current page. [More on toolbars](/m3/pages/toolbars/overview) , chat inputs, FABs Floating action buttons (FABs) help people take primary actions. [More on FABs](/m3/pages/fab/overview) , and other primary controls.

[More on rails](/m3/pages/scaffold/rails)

![Mobile layout with a toolbar, and a desktop layout with a start-aligned navigation rail.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp45u0ar-05.png?alt=media&token=dcbfcab8-3ece-4159-90ea-8dd3456bd01b)

1.  On mobile, the rail region can contain a toolbar

2.  On desktop, the rail region can contain the navigation rail

### Panes

Just like panes of glass that make up a window in the real world, panes in Material make up most of the layout in a window.

All content must be in a pane. A layout can contain 1–3 panes of various widths, which adapt dynamically to the breakpoint Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints/overview) (formerly window size class) and the person’s language setting. For right-to-left (RTL) languages, navigation components will be on the right.

People can navigate to or between panes. Presenting multiple panes at once can make a product more efficient and easier to use.

[More on panes](/m3/pages/scaffold/panes/)

![2-pane layout on a tablet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46vx4x-07.png?alt=media&token=b1eae581-b735-4691-921c-4737a95d7ac8)

1.  First pane

2.  Second pane

#### Containment

On most devices, panes can blend in with the background. This is called implicit grouping, and helps show relationships between panes.

Explicit grouping uses distinct colors or outlines to visually delineate content.

[More on spacing to group content](/m3/pages/grids-spacing/spacing#e7e6d1ac-031a-4757-afcf-b223f23654ea)

![2 panes in an email app, with the same color as the background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46z833-08.png?alt=media&token=9423401d-c17a-496d-bf1c-1155b8520bb9)

In multiple-pane layouts, use color to show emphasis and close spacing to group related content

In spatial environments, panes use a container color to separate them from the passthrough or virtual environment.

![2-pane layout in a spatialized environment, with a virtual reality background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp472v90-08.png?alt=media&token=a5d93025-d8c9-422b-84ac-92cb190ea868)

Use contrast between panes and the background to create a spatial effect in XR

### Drag handles

Drag handles can be used to resize panes in a layout. They can:

-   Adjust the width of flexible panes

-   Fully collapse and expand fixed panes to quickly switch between a single and two-pane layout

Drag handles can adjust pane size in a list-detail layout

### Rulers

Rulers are a set of global alignment lines. They help to align elements across all layers of the layout.

[How to implement rulers in Compose](https://developer.android.com/reference/kotlin/androidx/compose/ui/layout/Ruler)

![A 2-pane email in box, with rulers.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp47dohx-10.png?alt=media&token=dc25aee8-0729-4814-b09f-8ec2c5d16c30)

Rulers ensure global alignment across a product, keeping margins and placement consistent
