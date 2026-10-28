---
source: https://m3.material.io/foundations/layout/scaffold/panes
title: "Scaffold"
captured: 2026-09-14
---

# Scaffold

> A fundamental UI design structure that provides a standard platform for assembling key components

## Panes

All layouts are made up of 1–3 panes. The type of layout and amount of panes you choose should depend on the  breakpoint Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints)  (previously window size classes) and the type of product being built.

![A two-pane layout on desktop.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3nyytv-13-key01.png?alt=media&token=db27e96e-eb52-49b9-bb50-345e485da060)

Layouts often include multiple panes that work together

All layouts are made up of 1–3 visible panes. The type of layout and amount of panes you choose should depend on the breakpoint Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) and the type of product you're building.

| Breakpoint | Recommended pane total | Other pane totals |
| --- | --- | --- |
| Compact | 1 | \-- |
| Medium | 1 | 2 |
| Expanded | 2 | 1 |
| Large | 2 | 1 |
| Extra-large | 2 | 1, 3 |

Panes can be:

-   Fixed: Width doesn’t change based on available space

-   Flexible: Width changes based on available space, and can grow and shrink

All layouts need at least one flexible pane.

![A device with 2 panes: 1 fixed and 1 flexible. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3o5axo-01.png?alt=media&token=0cec90da-3b69-4d39-9d38-0ac403866224)

1.  Fixed pane

2.  Flexible pane

Panes can be permanent or temporary. Temporary panes can appear and be dismissed when necessary, affecting the layout and size of other panes.

![2 permanent panes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3o6q96-02.png?alt=media&token=0a6d1b28-52cd-42ee-b280-e31226b49c42)

Panes can be displayed permanently side by side

Temporary panes can be dismissed

### Single-pane layouts

Single-pane layouts use one flexible pane that extends to fit the available space in a layout’s width. They can be used at any breakpoint Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) , but are recommended for compact Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) and medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) .

![A mobile screen with 1 flexible pane.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3oanue-04.png?alt=media&token=51c37f6b-9879-4f51-b2b8-7692175c9963)

A single flexible pane adapts to fit any breakpoint

### Two-pane layouts

**Split-pane layout**

A split-pane layout keeps the spacer visually centered. It’s best for foldable devices and dynamic layouts.

When a navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview) or drawer Navigation drawers let people switch between UI views on larger devices. In the expressive update, use an expanded navigation rail. [More on navigation drawers](/m3/pages/navigation-drawer/overview) is present, it only reduces the size of one pane. The other pane remains at 50% of the window width.

![2 flexible panes in a split-pane layout.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3ocqkb-05.png?alt=media&token=11e0471f-55e9-4358-86e1-4d1b53a07e1a)

The navigation and first pane should be 50% of the window width to keep the spacer centered

With a navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview) , or no navigation, both panes span 50% of the window width by default.

![2 flexible panes at 50% width, with a navigation bar below them spanning the whole window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3oeb3e-06.png?alt=media&token=389164ff-277f-4ec5-8572-f480d2badcea)

With no navigation rail visible, split-pane layouts set each pane to 50% width by default

**Fixed-and-flexible layout**

This layout is common for expanded Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , large Window widths 1200dp to 1599dp, such as desktop. [More on large breakpoints](/m3/pages/breakpoints/large-extra-large) , and extra-large Window widths 1600dp and larger, such as ultra-wide monitors. [More on extra-large breakpoints](/m3/pages/breakpoints/large-extra-large) breakpoints. The fixed-and-flexible panes can appear in whichever order is best for the content.

The fixed pane is often temporary, and used for side sheets or lists with light information density.

![Fixed and flexible panes arranged 2 different ways.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3ogbeu-07.png?alt=media&token=d5605ccb-16b9-4a61-bd35-3b7a25e5a1cb)

1.  Fixed pane

2.  Flexible pane

### Three-pane layouts

While less common, the extra-large breakpoint supports using a standard side sheet Side sheets show secondary content anchored to the side of the screen. [More on side sheets](/m3/pages/side-sheets/overview) as a third pane. When the side sheet is present, the expanded navigation rail can remain visible, change into a collapsed navigation rail, or hide completely. Don't use more than three panes. 

Note: Fixed panes at this breakpoint are recommended to be 412dp, but side sheets have a default maximum width of 400dp. 

![Extra large breakpoint with 2 panes and a side sheet acting as a third pane.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3ojkaq-08.png?alt=media&token=b50cca85-884b-44aa-9e63-66adb80f855a)

1.  A standard side sheet can be used as a third pane

## Pane expansion & resizing

Panes can be resized, expanded, and collapsed using  drag handles A drag handle adjusts the layout when there are 2 or more panes. [More on drag handles](/m3/pages/layout-overview/parts-of-layout#314a4c32-be52-414c-8da7-31f059f1776d) . 

-   In a split-pane layout, both flexible panes can be freely adjusted, or can snap to certain widths.

-   In a fixed-and-flexible layout, the drag handle can fully collapse and expand the fixed pane. This makes it easy to switch between a single-pane and two-pane layout.

The drag handle should also toggle between layout sizes when selected. This can be a tap, double tap, or long press.

Drag handles can adjust pane size in a list-detail layout

At expanded, large, and extra-large breakpoints, two-pane layouts can be customized to snap to set widths when resized.

The recommended custom widths are:

-   360dp

-   412dp

-   Split-pane with spacer centered visually

Panes can snap to custom widths when releasing the drag handle

### Persistent pane resizing

The persistent resizing behavior remembers a person's pane width preference. Use this for most resizable layouts.

Pane widths persist even after a person closes the app

The width persists even after a breakpoint Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) change. This means that if a two-pane layout is collapsed to one pane at any size, it’ll remain collapsed even when changing breakpoints.

When a two-pane layout is resized to a single full-width pane, that pane should remain at full-width after switching breakpoints

### Temporary pane resizing

The temporary resizing behavior doesn't remember a person’s preferences for pane width. This is primarily used in supporting pane layouts where resizing is uncommon.

Supporting pane layouts can have a pane drag handle to temporarily resize the secondary content

With temporary resizing, panes should always return to the default layout after the pane or product is closed and reopened. This ensures content is a suitable size for most interactions.

The pane width can be temporarily adjusted using the drag handle, but will return to the default layout

## Displaying multiple panes

Multiple panes can be displayed in three ways: co-planar, floating, or docked. The layout depends on breakpoint, what the pane does, and how people interact with it:

-   Co-planar: Two side-by-side panes. To stay accessible, persistent utilities like tool panels should be co-planar with primary content.

-   Floating: A small pane displays above larger panes. Temporary tasks should remain floating regardless of breakpoint, such as a dialog.

-   Docked: A small pane pinned to the edge of a window. For example, a bottom sheet Bottom sheets show secondary content anchored to the bottom of the screen. [More on bottom sheets](/m3/pages/bottom-sheets/overview) can be docked to show additional actions.

![A foldable open screen with 2 co-planar panes displayed side by side.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3ow4kk-15.png?alt=media&token=3d9d909d-60dd-45df-9a01-f46405e18a80)

Co-planar: Panes are displayed side by side

![ A foldable open screen with a floating pane displayed above other elements. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3oxadg-16.png?alt=media&token=be699075-a53f-4149-ba51-7f0d41116d9e)

Floating: A pane is displayed above other panes or content, like a dialog

![A foldable open screen with a docked pane to the bottom of the screen displayed above other elements. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3oxtwa-17.png?alt=media&token=8ec788eb-43eb-4a88-9ed9-12ae8a069de4)

Docked: A pane is displayed above other panes and one of its edges extends beyond one side of the screen, like a bottom sheet

## How panes adapt

Pane layouts can adapt using three strategies: **show and hide, levitate,** or **reflow**. When a window is resized or changes orientation, these strategies allow panes to reorganize themselves to preserve context and meaning.

### Show and hide

As the breakpoint Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) size or orientation changes, panes can enter and exit the screen or appear next to one another.

A pane can be shown or hidden depending on the available space and orientation

### Levitate

Panes can be elevated above other content as **floating** or **docked** panes. This strategy helps panes appear relative to their triggers.

Floating panes:

-   Appear in front of the body content

-   Can be customized to be dragged or resized

When adding controls that resize or move a floating pane, provide accessible controls.

A co-planar pane can float when switching breakpoint or orientation

On large screens:

-   Floating panes are the default

-   The scrim behind a floating pane is optional

![2 ways of showing floating panes on large screens, with and without a scrim.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3p9uz9-20.png?alt=media&token=7fab1453-4041-4c55-9e7b-e6390c603dcf)

1.  Floating pane with a scrim

2.  Floating pane without a scrim

Docked panes are usually at the bottom of the window, like a  bottom sheet Bottom sheets show secondary content anchored to the bottom of the screen. [More on bottom sheets](/m3/pages/bottom-sheets/overview) .

At medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) and expanded breakpoints Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , docked panes can adapt into floating panes.

A docked pane can adapt into a floating pane at medium and expanded breakpoints

Alternatively, at medium and expanded breakpoints, a docked pane can adapt into a co-planar pane. 

A docked pane can also adapt into a co-planar pane at medium and expanded breakpoints

On large screens, consider changing docked panes into co-planar panes.

![A docked pane on mobile and a co-planar pane on a tablet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3riptw-23.png?alt=media&token=292b9430-835a-4518-94f0-e1172ff96b6a)

1.  A compact screen can have a docked pane

2.  On a large screen, it should change to a co-planar pane

### Reflow

Panes can be reorganized on screen as the breakpoint or orientation changes, also known as reflow.

For example, in a vertical orientation, the supporting pane can move underneath the primary pane.

In a vertical orientation, the supporting pane can move below the primary pane

Reflow also applies to breakpoints. When there’s not enough horizontal space for panes, they can stack vertically instead.

Panes can change size, location, and orientation when switching screen sizes

## Spatial panels

On XR devices, pane layouts can be presented in disconnected  spatial panels In Android XR, a spatial panel is a container for UI elements, interactive components, and immersive content. [More on spatial panels](https://developer.android.com/design/ui/xr/guides/spatial-ui#spatial-panels) . These panels must have clear containment to make them easy to see on any background.

The content in a spatial panel can use implicit grouping Implicit grouping uses close proximity and open space to group related items. [More on implicit grouping](/m3/pages/grids-spacing/spacing#f3b19166-fead-462f-8adb-7153cd72af6b)  when the pane has an explicit container to distinguish it from the environment.

![2-pane layout in XR with implicit content grouping and a virtual reality background. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3sp9gc-07-key01.png?alt=media&token=f06756e6-8045-4f55-8f3a-8b0874db7445)

When a pane uses explicit containment, content can use implicit grouping

## Accessibility considerations

**Coplanar panes**

-   The focus order should match the visual arrangement of the panes on screen

**Floating panes**

Modal floating pane:

-   When active, the elements behind it can’t be interacted with

-   Focus moves automatically to the first element in the pane, and when the pane is closed, focus moves back to the element that triggered it, like a dialog

-   If triggered automatically, focus should still move to it, but when it’s closed, focus should go to the next most logical element on screen

-   It disappears when a person interacts with something behind it.

Non-modal floating pane:

-   When open, other parts of a product can be interacted with

-   Focus should be able to move to and from the pane

-   The pane should be available in a logical reading order of the screen

**Docked panes**

-   Have the same focus requirements as modal and non-modal panes

-   The focus order should match the visual arrangement of the panes on screen
