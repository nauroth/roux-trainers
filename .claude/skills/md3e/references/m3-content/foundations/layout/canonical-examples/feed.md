---
source: https://m3.material.io/foundations/layout/canonical-examples/feed
title: "Canonical layout examples"
captured: 2026-09-14
---

# Canonical layout examples

> Canonical layout examples are designs for common screen layouts across all breakpoints

A feed layout uses a grid composition to enable quick content browsing and discovery. Key use cases include news, photos, and social media.

![Education app using a feed layout.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp736am6-Feed%20adapt%20hero.png?alt=media&token=aef20887-2e0b-43e6-b6a6-823c16f7304a)

Feed layouts help people quickly browse and discover content

## Usage

Use a feed layout to show different pieces of content through cards and lists.

Feeds support displays of almost any size as grids can adapt from single to multi-column.

![An education app has 2 columns on mobile, and 4 columns on a tablet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp51zufq-02.png?alt=media&token=b1792846-698d-4ffd-9110-abde558f3e6d)

Feed layouts can adapt the number of columns across breakpoints

## Dividing space

A feed composition is flexible enough to allow for content with varying proportions and sizing.

![Feed layout in a medium window with 2 panes. 1 pane has 2 columns of small cards and the other has 1 large card.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp521zfz-03.png?alt=media&token=20e221c8-1acd-4a4f-8cf2-6696aa1c8480)

Feeds can organize content of different sizes, like using small and large cards

Use size and position to establish relationships among content elements.  

Feed items should reflow when the amount of available space changes like:

-   Rotating or unfolding a device

-   Entering multi-window mode

The order of items is determined by their position.   

[More on adaptive design for cards](/m3/pages/cards/guidelines#99e8d17d-5bde-4bb9-8784-0ca403325b10)

![Lead article image is prominent in a 2-pane news feed.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp528i2s-04.png?alt=media&token=55ef6a71-99cd-4d90-8502-51e3b3cf96a2)

Feed items can change size to group content

## Across breakpoints

### Compact

A feed layout should stack vertically, like a list of cards with individual items filling the width of the pane.

![Cards in 2 feed layouts, compact and expanded.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp52hmfv-05.png?alt=media&token=0275ea27-06e7-447c-a0dc-d5f6decd6ed1)

In compact windows, the cards in a feed stack vertically, filling the full width: 

1.  Compact breakpoint

2.  Expanded breakpoint

### Medium

A feed layout can support components with different widths and be split across multiple columns.

![In a medium window, 4 equal-width columns of cards in a feed layout.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp52jmhc-06.png?alt=media&token=b67363d4-5470-49d7-9e97-865c58afbf4f)

Feed layouts can add columns in a medium window

### Expanded, large, & extra-large

A feed layout can support components with different widths and be split across multiple columns. The number of columns should usually increase at expanded breakpoints.

![Expanded window has wider columns than a compact window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp52lhar-07.png?alt=media&token=27149f49-40ae-4d6c-84a2-458fa2ecd1ad)

Column width can increase at larger breakpoints
