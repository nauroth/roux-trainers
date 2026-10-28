---
source: https://m3.material.io/foundations/layout/grids-spacing/grids
title: "Grids & spacing"
captured: 2026-09-14
---

# Grids & spacing

> Grids and spacing organize content and actions for any layout

-   Layouts in Material are based on a grid that adapts across all breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) (previously window size classes)

-   Parts of the layout scaffold A scaffold is a fundamental UI design structure that provides a standard platform for assembling key screen components. [More on scaffold](/m3/pages/scaffold) like rails and panes are positioned on this grid to create consistent adaptive layouts

-   The structure and spacing values used in a grid can add personality to a product’s layout

## How to use grids

### Start with placing grid columns

Grids adapt across breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) . As the size increases, column count, width, and spacing change as well.

![A mockup of grid columns, showing compact, medium/expanded, and large/extra-large breakpoints.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp54500h-03.png?alt=media&token=2dcb98ec-a57d-4d9b-a4f9-44227e456977)

The number and size of columns changes based on breakpoints

When moving between sizes, column count may increase to show more content or controls.

![A course listing on a compact screen, with 4 columns.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp54dby8-04.png?alt=media&token=04b776f7-e5bc-4a68-9143-464df6e33251)

On compact screens, fewer columns are used to create a focused layout

![A course listing on a foldable screen, with 8 columns.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp54ejyh-05.png?alt=media&token=acde1184-80ae-4066-853d-4e2e21443b45)

As screen size increases, for example when a foldable screen is unfolded, additional columns allow for a richer layout

### Place bars & rails

Populate regions of the layout scaffold A scaffold is a fundamental UI design structure that provides a standard platform for assembling key screen components. [More on scaffold](/m3/pages/scaffold) that are closest to the edges of the screen’s usable space first. This may include:

-   Bars like the navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview) and rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview)

-   Components like toolbars Toolbars display frequently used actions relevant to the current page. [More on toolbars](/m3/pages/toolbars/overview) and app bars App bars contain page navigation and information at the top of a screen. [More on app bars](/m3/pages/app-bars/overview)

![A compact screen with a toolbar highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp55v0r6-06.png?alt=media&token=06b7ed36-86b6-4a5f-9e72-3d43ed36524f)

The bar region can contain a toolbar

![A large screen with a leading navigation rail highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp55w2g9-07.png?alt=media&token=6bc41919-a8f2-481a-8bad-f463479cdfb8)

The rail region on larger screens usually contains a navigation rail

### Place panes

Next, populate the main region of the screen with panes with content and components, based on available space and structure.

See the [canonical layout examples](/m3/pages/canonical-examples) for ideas on which panes are appropriate for a product.

![Mobile UI with 1 pane. Foldable UI with 2 panes in a supporting pane layout.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp55yqda-08.png?alt=media&token=2b0b4c87-9448-4a1a-b576-55c2a08e20ba)

1.  Primary pane

2.  Supporting pane

## Rulers & alignment

Rulers are a set of recommended global alignment lines that help create consistent focal points in a product, while keeping content and components consistently aligned.

[How to implement rulers in Compose](https://developer.android.com/reference/kotlin/androidx/compose/ui/layout/Ruler)

![1 compact and 1 desktop UI mapping rulers.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp56n0pg-09.png?alt=media&token=aaa37678-f50e-45b3-a64d-09d126bfb433)

1.  Margin

2.  Bar or safety region

3.  Title

4.  Content 1

5.  Content 2

6.  Content 3

7.  Content 4

8.  Bar or safety region

9.  Rail

### Bar & safety rulers

Bar and safety rulers reserve space for [system UI](https://developer.android.com/training/system-ui) elements like the status bar and gesture navigation.

They ensure actionable content like app bars App bars contain page navigation and information at the top of a screen. [More on app bars](/m3/pages/app-bars/overview) aren’t covered by system UI.

![2 mobile UIs showing bar and safety rulers at the top and bottom.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp573btr-10.png?alt=media&token=8cb7f6fd-802a-4ac4-b0f8-e78c29f4acc1)

Bar and safety rulers align to the edges of a screen’s usable space, providing a reference for where system UI like the status bar or gesture navigation appear

### Title rulers

The title ruler creates consistency for the screen’s title, aligning the text, icons, and other components in an app bar.

![1 mobile and 1 desktop UI showing title rulers.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp574ab3-11-key02%20-%20TO%20PUBLISH.png?alt=media&token=24881915-d4ed-4466-9fab-8a8462a27df3)

The title ruler aligns with the title in an app bar

### Content rulers

Use content rulers to align and anchor key content, such as headlines and carousels Carousels show a collection of items that can be scrolled on and off the screen. [More on carousels](/m3/pages/carousel/overview) .

-   First content ruler: Emphasizes major blocks like hero images, headlines, or primary components

-   Secondary rulers: Determine where supplementary text or actions begin

![1 mobile and 1 desktop UI showing content rulers.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp575wo3-12-key02%20-%20TO%20PUBLISH.png?alt=media&token=615dfb4c-55b3-48fb-aad7-218ee4af69d6)

Content rulers offer flexible alignment options to help create a consistent layout across a product

Realigning primary components or content to a content ruler can create strong hierarchy and visual rhythm across a product

### Ruler options

Margin rulers come with some wiggle room to determine how tight or loose a product’s content feels on-screen. The standard ruler can be adjusted to the left or right.

Choosing a narrower or wider margin can create or remove negative space, or create expressive moments in a content-forward product.

Margin rulers can adjust to create more or less negative space

Rulers can also be used to create more immersive experiences. For example, a photo grid can take the full width of the screen, while components like search Search lets people enter a keyword or phrase to get relevant information. [More on search](/m3/pages/search/overview) use wider margins.

![Mobile UI for a photo app showing a full-width image grid and a search bar with wide margins.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp579mwo-15.png?alt=media&token=38c06930-bb63-44ef-8ff7-ec7d3a3d49af)

Rulers allow components and media to use different margin widths
