---
source: https://m3.material.io/foundations/layout/canonical-examples/list-detail
title: "Canonical layout examples"
captured: 2026-09-14
---

# Canonical layout examples

> Canonical layout examples are designs for common screen layouts across all breakpoints

Many layouts can be split into a list view and a detail view.

Key use cases for this layout include parent-child pairings of information like:

-   Text message + conversation

-   File browser + open folder

-   Musical artist + album detail

-   Settings + category detail

-   Email inbox + selected email

![An email app in a list-detail layout at a medium breakpoint.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp7394ub-LD%20adapt%20C.png?alt=media&token=d4ee0120-592a-47e3-b820-7180650f7da8)

1.  List 
2.  Detail

## Usage

Use the list-detail layout for quickly accessing details of an item from a long list of content.  

Examples include:

-   Showing a series of conversations and a text message

-   Browsing files and seeing their details

-   Browsing multiple albums and seeing individual track information

![Several stacked cards make up the list area on the left pane, while the detail area is a single section on the right pane.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp52v68p-02.png?alt=media&token=4173a4a5-6f51-4639-8404-0ef3711a22ec)

Simplified diagram of:

1.  List area

2.  Detail area

### Dividing space

![Compact windows have 1 pane, while medium and expanded windows can have 2 panes for list-detailed views.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp52wfuu-03.png?alt=media&token=9535e2cb-8fe9-4f55-87cc-c2f55b2ef300)

The most basic list-detail views for compact, medium, and expanded layouts

A list-detail layout uses two panes. Depending on the breakpoint, the two panes may appear together in the same layout or across separate layouts.  

List-detail layouts use the same pane guidance as all single and two-pane layouts, including special behavior for foldables.

| **Breakpoint (dp)** | **Visible panes** |
| --- | --- |
| Compact (0-599) | 1 pane |
| Medium (600-839) | 1 (recommended) or 2 panes |
| Expanded (840+) | 2 panes |
| Large (1200-1599) | 2 panes |
| Extra-large (1600+) | 2 panes |

## Across breakpoints

### Compact

-   Use a single-pane layout

-   Only one view is visible at a time, either list or detail

![Single-pane layout on 3 devices at compact breakpoints.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp533vzf-04.png?alt=media&token=7241c2e9-126a-487b-b74d-e20d62d16fa6)

1.  Phone in portrait orientation

2.  Closed foldable

3.  Tablet in split-screen mode

### Medium

-   Use a single-pane layout for information-dense content or deep focus

![Single-pane layout on a foldable open flat and a tablet in portrait orientation.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp535cbt-05.png?alt=media&token=e6487d36-75c2-482d-bd8b-fec3cde0306d)

1.  Foldable open flat

2.  Tablet in portrait orientation

-   Use a two-pane layout to browse collections and switch between items quickly

-   To maximize horizontal space for two-pane layouts, use a bottom navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview) or modal navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview)

![2-pane layout on a foldable open flat and a tablet in portrait orientation.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp537scf-06.png?alt=media&token=5cf94d50-364d-41d7-b069-67aec1ac338d)

1.  Foldable open flat

2.  Tablet in portrait orientation

### Expanded, large, & extra-large

-   Use a two-pane layout

![2-pane layout on a phone and tablet, both in landscape orientation.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp538uu5-07.png?alt=media&token=3348b4ce-14f4-4bc3-ae8b-8bb5a4851f0c)

1.  Phone in landscape orientation
2.  Tablet in landscape orientation

## Behavior

### Single vs two-pane

-   Back button: Appears in detail view only for single-pane layouts

-   Selected state: Appears only in list view for two-pane layouts

-   Visual focus: Use [explicit and implicit grouping](/m3/pages/grids-spacing/spacing#e7e6d1ac-031a-4757-afcf-b223f23654ea) to direct focus in two-pane layouts

![A 2-pane layout shows a selected list item. A single-pane layout uses a Back button to return to the list.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp53b085-08.png?alt=media&token=ee7424e2-9c1c-4669-93cf-2f7aae5b4409)

1.  Use a selection state in two-pane layouts only

2.  Use a back button in single-pane layouts only

### Transitioning between layouts

The amount of available space is dynamic and changes based on how someone uses a device, such as rotating or unfolding it, or entering multi-window mode.

A two-pane layout adapts to a single-pane layout when a device rotates from an expanded to medium breakpoint

#### No selected list item

A single-pane layout shows a list view, while a two-pane layout shows placeholder content in the detail pane.

In some cases, such as multi-select, the most recently used pane should stay visible when switching to single-pane layout.

If no item is selected when a foldable opens, the detail pane displays an empty state

#### Selected list item

When switching from a single- to two-pane layout, both panes should be shown and the selected item’s details are visible.

When going from a two- to single-pane layout, the view depends on the product:

-   The detail pane should typically show in a single-pane layout, and an app bar appears

-   If the product supports selection without deep navigation, like multi-select, the list view can show with the item selected

-   Consistency is key: If a layout showed the list view previously, it should return to that view when returning to a single pane

If an item is selected when a foldable opens, the detail pane shows that item

When a foldable closes with an item selected, the single pane shows the detail view

#### Persistent states

In most cases, a state should be saved when navigating between detail views. This includes read and unread content.

Detail views should retain their scroll position when navigating to other items
