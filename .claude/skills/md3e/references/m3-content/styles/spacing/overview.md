---
source: https://m3.material.io/styles/spacing/overview
title: "Spacing"
captured: 2026-09-14
---

# Spacing

> Spacing is the distance around and between component and layout elements

-   Apply spacing tokens to the margins, padding, and gaps of a component, UI element, or layout

-   Adapt spacing to different values based on context, like mobile vs desktop, or density settings

-   The spacing system is measured on an 8dp scale, where **space100 = 8dp**

-   Spacing is applied to the flow of elements (horizontal, vertical), or in relation to the elements (leading, trailing, top, bottom, gap)

-   [More details on grid & spacing design principles](/m3/pages/grids-spacing)

![Bottom padding of small and large buttons is space200 and space400. Leading padding is space300 and space600.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp45pjnu-01.png?alt=media&token=4bc20db7-589b-4e9f-8a41-6ef0912181bf)

Spacing should adapt to component size, layout, form factor, and other contexts

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Implementation | Android Views (MDC-Android) | Unavailable |
| Jetpack Compose | Available |
| Web | Unavailable |

## Spacing units

Spacing units follow an 8dp scale. Rather than defining every value, Material only defines the most recommended spacing unit values on the scale. The system can be extended to add more spacing units and patterns as needed. [More on spacing tokens](/m3/pages/spacing/tokens/)

![A spacing scale shows 2, 4, 6, and 8 at the bottom range and 48, 56, 64, and 72 at the top of the range.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46hu30-02.png?alt=media&token=8c945825-e613-4d44-8b78-754d4f368664)

Spacing units are are created as a multiplier from the baseline unit of 8dp, which is space100

### Component layouts

In **components**, spacing units define the padding and gaps between individual elements of a component, such as text, icons, and controls.

![Padding and gaps applied to a mobile layout and 2 components.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46iygv-03.png?alt=media&token=1ffbf4cf-d3d8-492a-bf87-543363d09c2a)

Spacing concepts for components:

1.  Vertical padding (top & bottom)

2.  Vertical gap

3.  Horizontal padding (leading & trailing)

4.  Horizontal gap

### Page layouts

In **layouts**, spacing units standardize the overall composition of the page, like where text, UI elements, and components go.

Layouts use:

-   Panes Panes are layout containers that house other components and elements within a single app. A pane can be: fixed, flexible, floating, or semi permanent. [More on panes](/m3/pages/understanding-layout/parts-of-layout#667b32c0-56e2-4fc2-a618-4066c79a894e) , spacers A spacer is the space between two panes. If panes can be resized, the spacer contains a drag handle. [More on spacers](/m3/pages/grids-spacing/spacing) , and margins to structure the page

-   Padding and gaps to organize content within the panes.

![Padding and gaps applied to a mobile layout and 2 components.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46qg1t-04.png?alt=media&token=de6ad9a3-9fd4-419c-afb9-845b48380977)

Spacing concepts for layouts:

1.  Margin

2.  Top padding

3.  Horizontal padding (leading & trailing)

4.  Spacer (gap)

5.  Vertical gap

## Parts of spacing

Spacing has three categories: **padding**, **gaps**, and **margins**.

-   Padding: Space inside an element

-   Gap: Space between elements in a grid or container

-   Margins: Space outside an element

The position of the spacing can be **vertical**, **top**, **bottom**, **horizontal**, **leading**, or **trailing**.

-   **Leading** and **trailing** edges swap sides in right-to-left (RTL) languages. [More on RTL layout design](/m3/pages/bidirectionality-rtl)

For example, the [search](/m3/pages/search/specs) container has:

-   8dp vertical padding

-   8dp horizontal gaps

-   24dp horizontal margins (12dp when focused)

![Default search spacing.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46u5o7-05.png?alt=media&token=ec9f8771-d0f9-40dc-bda9-5de5123f3961)

Search horizontal margins are 24dp by default to ensure accurate placement from the screen edge

![Active search spacing.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46ujx2-06.png?alt=media&token=117fe589-68f0-4c73-b242-a6f6e0970b13)

Search margins change to 12dp when focused, while the container padding and horizontal gaps remain the same

### Padding

Padding is the spacing inside an element. It adds a buffer from the container edge to the content, like text and icons.

![Examples of each possible padding value.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmpcmizsr-07.png?alt=media&token=64b66712-c4a1-49fc-96a2-462fbe2cb910)

Padding can be horizontal or vertical, or on a specific edge: leading, trailing, top, or bottom

### Gaps

Gaps are the spaces between elements in a grid or container. Horizontal gaps are between side-by-side elements, and vertical gaps are between stacked elements.

Use a **horizontal gap** and **vertical gap** for simple components where gaps are always the same size.

Complex components with many different gaps should define them by the elements on each side, like an **icon-label gap.**

![Examples of each possible gap value.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46wxwi-08.png?alt=media&token=2aa763aa-37db-4c60-8ebe-ed2c068891ac)

Gaps can be horizontal, vertical, or defined by the elements around it

### Margins

Margins are the spacing outside an element. They add a buffer between the element and the parent container or screen edge.

**Use padding & gaps before using margins:**

-   Material rarely uses margins in components; padding and gaps tend to apply spacing in a more uniform way

-   Only use margins to apply further spacing beyond the parent container’s padding, or in layouts

![Examples of each possible margin value.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46ywq1-09.png?alt=media&token=c7d6c7ca-77f2-4f73-b0bb-1f47c60f09c1)

Margins can be horizontal or vertical, or on a specific edge: leading, trailing, top, or bottom

![Button with uniform container horizontal padding.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46yjrr-10.png?alt=media&token=7a66f957-b8d4-491d-939a-1bac71e540c7)

check Do

Define padding and gaps on the parent container to organize all elements inside

![Button icon with different leading and trailing margin values.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp46z9b3-11.png?alt=media&token=16464639-7f1c-4c21-a46b-7126cd037463)

close Don’t

Avoid defining margins on child elements as they usually aren’t uniform, and require more tokens
