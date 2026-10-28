---
source: https://m3.material.io/foundations/layout/scaffold/overview
title: "Scaffold"
captured: 2026-09-14
---

# Scaffold

> A fundamental UI design structure that provides a standard platform for assembling key components

-   The layout scaffold structures every piece of an adaptive layout into bars, rails, and panes Panes are layout containers that house other components and elements within a single app. A pane can be: fixed, flexible, floating, or semi permanent. [More on panes](/m3/pages/scaffold/panes)

-   Bars can frame the page to help people navigate through a product

-   Rails create the perimeter space surrounding panes, creating space for elements like navigation and toolbars

-   Panes hold a product’s primary content, adapting to breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) (previously window size classes) and other conditions

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design | [M3 Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
|  | [Spacing system & tokens](/m3/pages/spacing) | Available |
| Implementation | [Jetpack Compose: Rulers](https://developer.android.com/reference/kotlin/androidx/compose/ui/layout/Ruler) | Available |

![2 diagrams of mobile and desktop layouts, identifying the parts of a scaffold.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp3n7x8n-01.png?alt=media&token=ed620772-fcdc-4d4b-8ff5-afd727a51f5d)

1.  Safety region

2.  Bar

3.  Pane

4.  Rail
