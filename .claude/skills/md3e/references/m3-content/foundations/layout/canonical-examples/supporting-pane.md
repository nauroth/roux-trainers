---
source: https://m3.material.io/foundations/layout/canonical-examples/supporting-pane
title: "Canonical layout examples"
captured: 2026-09-14
---

# Canonical layout examples

> Canonical layout examples are designs for common screen layouts across all breakpoints

The supporting pane layout organizes content into primary and secondary areas.   

The primary area contains the main content and occupies the majority of the space. The secondary area contains supporting content.  

Key use cases for supporting pane layouts include:

-   Productivity

-   Document editing and commenting

-   Content and media browsing

![A video app has the main content in the primary area and “up next” content is listed in the secondary area.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp54jbnh-01.png?alt=media&token=409de525-30e4-43b6-9864-a7e9d59c137e)

Supporting pane layouts organize content into primary and secondary areas

## Usage

Use the supporting pane layout when the secondary content is only meaningful in relation to the primary content.   

For content with a parent-child relationship, use a [list-detail layout](/m3/pages/canonical-layouts/list-detail/) instead.

![The supporting pane has vertically stacked cards.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp54n3m1-02.png?alt=media&token=db669416-4a28-46b3-8f50-8ee0148c932c)

Supporting panes provide contextual info for the primary area

## Dividing space

The window is divided between a focus pane and a supporting pane.  

Depending on the breakpoint, the supporting pane may appear below or beside the focus pane.

![The cards of a supporting pane scroll horizontally across the bottom of the screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp54omgc-03.png?alt=media&token=015715a5-701f-4812-b8b7-a943d11973d5)

Supporting panes can appear beside or below the primary area

| Supporting pane placement | Pane width | Breakpoint |
| --- | --- | --- |
| Below | Flexible | Compact or Medium |
| Leading or trailing | Fixed (360 dp) | Expanded |

## Across breakpoints

### Compact

The supporting pane should appear below the focus pane. 

A bottom sheet can be useful for keeping focus on the primary pane while providing access to supporting information.

![2 layouts showing  bottom sheets at a compact breakpoint.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp73c5cw-04.png?alt=media&token=c27a6901-5f40-4e51-8c67-ea4eb3ebbfe6)

Bottom sheets can provide supporting information in compact windows

### Medium

The supporting pane should appear below the focus pane.

![3 cards in a supporting pane are horizontal across the bottom of a tablet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp54tfu7-05.png?alt=media&token=2bbdfa34-1ec6-45ab-83c1-ad65cc35e156)

Supporting panes appear below the focus pane in medium windows

### Expanded

The supporting pane should appear on the leading or trailing side of the focus pane.

![The supporting pane is to the right of the primary focus pane on 2 screens.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp73dr78-6.png?alt=media&token=923d4433-2a50-4111-8de9-3e69135229cc)

Supporting panes appear beside the focus pane in expanded windows
