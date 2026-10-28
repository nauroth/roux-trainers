---
source: https://m3.material.io/components/carousel/guidelines
title: "Carousel"
captured: 2026-09-14
---

# Carousel

> Carousels show a collection of items that can be scrolled on and off the screen

![Carousel items adapting dynamically to device size by shrinking and reducing in number.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusb1kq-1.png?alt=media&token=31e0f0e5-44dc-40dc-88a3-810d49d9d32a)

Carousel items adapt dynamically based on breakpoint

## Usage

Carousels display a scrollable list of items. Carousel items emphasize visuals, but can also contain brief text that adapts to the item size.

There are four carousel layouts:

-   Multi-browse The multi-browse carousel layout shows at least one large, medium, and small carousel item at a time.
-   Uncontained The uncontained carousel layout show items that scroll to the edge of the container.
-   Hero The hero carousel layout shows at least one large and one small item at a time.
-   Full-screen The full-screen carousel layout shows one edge-to-edge large item at a time and scrolls vertically.

All of these layouts can be centered, though center-aligned hero The center-aligned hero carousel layout shows at least one large and two small items at a time. The large item is centered. is the most common centered carousel.

Carousels can scroll in two ways:

-   **Default**: Standard scrolling. Recommended for uncontained layouts.
-   **Snap-scrolling**: Scrolled items snap to the carousel's layout. Recommended for multi-browse, hero, and full-screen layouts

![Contained carousel with a large, medium, and small item. Text is hidden on the small item.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusbuoo-2.png?alt=media&token=fe9b4940-fc2b-453f-b10c-1eb4f1bb5250)

A carousel can contain different sized items

Choose the best carousel layout for your product. Some layouts are more visual-focused, while others are more customizable.

| Layout | Best used for |
| --- | --- |
| [Multi-browse](/m3/pages/carousel/guidelines#d95cefa4-53df-45e2-bbb2-3aeeecbe9639) | Browsing many visual items at once (like photos), dynamic designs |
| [Uncontained](/m3/pages/carousel/guidelines#96c5c157-fe5b-4ee3-a9b4-72bf8efab7e9) | Highly-customized or text-heavy carousels, stacked imaged and text, traditional carousel behavior |
| [Hero](/m3/pages/carousel/guidelines#5991f961-79aa-4955-b86e-3e15432108e6) | Spotlighting very large visual items (like a movie or featured app) |
| [Center-aligned hero](/m3/pages/carousel/guidelines#a9f8dcde-e5c5-464f-b488-d9ded9ae4a4a) | Centered, large visual items |
| [Full-screen](/m3/pages/carousel/guidelines#ae0f1566-a956-4c4b-b153-d50ee20c32e7) | Vertically-scrolling video or image feeds, immersive experiences |

Carousel items must be fully visible on-screen (except for the uncontained layout The uncontained carousel layout show items that scroll to the edge of the container. ). When scrolled, items automatically change size and snap into place to maintain the same layout.

![Multi-browse carousel with all images and text easily legible.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwuscosc-3-do.png?alt=media&token=ddae19a2-c2a5-4a4f-a57a-89ebf9924d44)

check Do

Set the large carousel item size to ensure the images and text are easy to read and recognize

![Multi-browse carousel with a very thin small item, making the image unrecognizable.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusd3wu-3-don't.png?alt=media&token=9d93fc2f-8f36-44df-b19e-3b541f3dc539)

close Don’t

Avoid setting carousel items so small that the image isn't recognizable

### Accessibility requirements on scrolling pages

On vertically-scrolling pages, carousels require an accessible way to view all the items without horizontally scrolling. (This requirement doesn't apply to full-screen carousels The full-screen carousel layout shows one edge-to-edge large item at a time and scrolls vertically. .)

Material recommends adding a **Show all** button below the carousel, which opens a dedicated vertically-scrolling page of all carousel items.

If the carousel has a header, you can use an arrow icon button instead. 

View the [accessibility tab](/m3/pages/carousel/accessibility) for more details and alternate solutions.

Make sure users can scroll vertically through all carousel items

### Multi-browse

The multi-browse layout The multi-browse carousel layout shows at least one large, medium, and small carousel item at a time. is best for browsing many items at once, like photos or event feeds. Snap-scrolling is recommended to ensure items are recognizable and consistently sized.

On larger screens, more large and medium items are visible in this layout.

Avoid using this layout if the carousel items need lots of text or have complicated imagery.

A multi-browse layout has different sized items within the carousel

At compact breakpoints Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) , only show up to three carousel items if they have text.

If you need to show more than three items, make sure the images and content are easy to understand and recognize.

![Carousel on a phone. 2 large, 1 medium, and 1 small item are fully visible but thin. The items don't have text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusga4v-6.png?alt=media&token=79689475-2747-4ee9-839c-b8c1eecba850)

exclamation Caution

At compact breakpoints, only show more than three items if the items are easy to understand and recognize

### Uncontained

The uncontained layout The uncontained carousel layout show items that scroll to the edge of the container. is most similar to a traditional carousel, where items are a single size and flow past the edge of the screen.

Both default scrolling and snap-scrolling work well with this layout.

Since items don't change size, this layout can be customized to show more text or other UI above or below each item without the text being masked or cropped.

Carousel items are all the same size in an uncontained layout

### Uncontained multi-aspect ratio

The uncontained multi-aspect ratio The uncontained multi-aspect ratio layout shows carousel items of various widths. carousel has the same layout as the uncontained carousel but contains items of various sizes.

Item widths can range anywhere between 9:16 for min width size to 16:9 for max width.

Only use this carousel layout if the items have various widths.

Carousel items are of various sizes in an uncontained multi-aspect ratio layout

### Hero

The hero layout The hero carousel layout shows at least one large and one small item at a time. is best for spotlighting content that needs more attention, like movie, shows, or other media thumbnails. It highlights one large image to focus on, while providing a sneak peek of what’s next. 

On larger screens, more large items are visible.

Use snap-scrolling so users can easily cycle through items one at a time.

A hero carousel at a compact breakpoint should show one large item and one small item

### Center-aligned hero

When the hero layout The hero carousel layout shows at least one large and one small item at a time. is center-aligned, it adds an additional previewed item on the leading edge, making the large carousel item centered.

A centered hero carousel has two small carousel items, with a large item centered

### Full-screen

The full-screen layout The full-screen carousel layout shows one edge-to-edge large item at a time and scrolls vertically. is best used for immersive experiences like video articles, featured headlines, or items that are visually rich. It can contain text and other UI elements on top of the image.

This layout works best with content that is taller than it is wide, and scrolls vertically. It only works in portrait orientation in compact and medium breakpoints Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) . Don't use this layout in landscape orientation.

Use snap-scrolling for full-screen layouts. Don't use default scrolling.

Full-screen carousels fill the entire content area of the screen

## Anatomy

![4 elements of a carousel.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwushw0z-11.png?alt=media&token=0ec8f8d6-6910-47b8-af5e-aec914857c5e)

Multi-browse carousel (left) and hero carousel (right):

1.  Container
2.  Large carousel item
3.  Medium carousel item
4.  Small carousel item

### Container

The carousel container holds all carousel items. The number of carousel items visible in the container can change based on the carousel layout Layout is the visual arrangement of elements on the screen. [More on layout](/m3/pages/layout-overview) and  breakpoint Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) .

![An empty rectangle representing a carousel container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusikhn-12.png?alt=media&token=e53338c0-9e12-4500-a02a-6a3fa00a5be7)

The carousel container is a rectangle. It can be used in many ways and stretched to any size.

### Carousel items

Carousel items hold content. A carousel item has no fixed width; it changes width depending on the breakpoint or its position in the carousel's layout. There are three dynamic widths an item can be: **large**, **medium**, and **small**.

![3 sizes of carousel items.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusj1ii-13.png?alt=media&token=a8d53996-8396-4e21-a972-c74335739543)

1.  Large carousel item
2.  Medium carousel item
3.  Small carousel item

Large items have a max width that can be adjusted. This changes how all other large, medium, and small carousel items fit on screen. Large items must remain big enough to be easy to understand and recognize.

Medium items adjust width dynamically to the carousel size and available space. 

Small items have a width range of 40–56dp.

![2 sizes of carousel items for hero layouts.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusjjti-14.png?alt=media&token=405ab913-2f35-4d0e-aa46-07e957c4e947)

1.  Large item
2.  Small item

When the large item's max width is narrow enough, more items can be shown on screen at once. At compact breakpoints, this is only recommended for carousels with simple imagery.

![3 sizes of carousel items for multi-browse layouts. 2 large items are visible.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwuslefr-15.png?alt=media&token=93b132b6-bb28-4e57-9a57-f1c02ac20115)

1.  Large item
2.  Medium item
3.  Small item

### Item text (optional)

Carousel items are primarily visual. Item text is optional and should be brief. 

If your carousel items require a lot of text, consider using the **uncontained layout The uncontained carousel layout show items that scroll to the edge of the container.** , which can show more information, or use a series of cards Cards display content and actions about a single subject. [More on cards](/m3/pages/cards/overview) instead.

![Contained carousel items with 5 lines of content: a title, a description, and a label.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusmns4-16.png?alt=media&token=11d776e8-048f-4e1e-81d9-1a265271a7a6)

exclamation Caution

Avoid exceeding two lines of text in carousel items at compact breakpoints unless the background is simple, like a single color

Content within a carousel item can adapt dynamically based on the container and breakpoint. 

Text should always be understandable at each size. Consider adapting the text to use brief labels on smaller carousel items.

![A carousel item at 3 different sizes to show  how text changes at each size.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwusqbrm-17.png?alt=media&token=bcc4c752-6b49-4820-960e-c22af7c9591b)

1.  Large carousel item with the full title and label text
2.  Medium carousel item hiding the title text
3.  Small carousel item abbreviating the label text

## Adaptive design

As the carousel container size increases, so do the number of carousel items visible at a time.

At  compact breakpoints Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) , carousels can comfortably show up to three carousel items at once.

At larger breakpoints, more carousel items are added and scale in size.

Full-screen carousels The full-screen carousel layout shows one edge-to-edge large item at a time and scrolls vertically. only ever show one item at once.

![8 carousel items visible at once on a tablet in landscape orientation.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwuso0q8-18.png?alt=media&token=1ca63117-b627-4361-afb1-6730a8ee93d3)

Carousels can show more items at once on larger screens

## Behavior

### Scrolling

Carousel items have a parallax effect when they're scrolled.

The **default** scrolling behavior doesn't snap items to a layout grid. They can stop anywhere in the container. Only use this for the uncontained layout The uncontained carousel layout show items that scroll to the edge of the container. .

The **snap-scrolling** behavior aligns carousel items to the layout grid after they're scrolled. Items snap to the grid when released. Use this for multi-browse The multi-browse carousel layout shows at least one large, medium, and small carousel item at a time. , hero The hero carousel layout shows at least one large and one small item at a time. , and full-screen layouts The full-screen carousel layout shows one edge-to-edge large item at a time and scrolls vertically. .

Carousel items with snap-scrolling maintain the same layout when released

In full-screen layouts, make sure the carousel items snap to the edges of the carousel container. Avoid letting them scroll freely or stop halfway.

Full-screen layouts must use snap-scrolling.

![Full-screen carousel with items stopping halfway off screen once scrolled.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwuspl2g-20-don't.png?alt=media&token=71d2bacf-deaf-4fc7-84f2-7b8f5fd86747)

close Don’t

Avoid scrolling freely on full-screen carousels
