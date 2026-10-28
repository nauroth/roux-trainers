---
source: https://m3.material.io/components/carousel/overview
title: "Carousel"
captured: 2026-09-14
---

# Carousel

> Carousels show a collection of items that can be scrolled on and off the screen

-   Contain visual items like images or video, along with optional label text

-   Six layouts: Multi-browse The multi-browse carousel layout shows at least one large, medium, and small carousel item at a time. , uncontained The uncontained carousel layout show items that scroll to the edge of the container. ,  uncontained multi-aspect ratio The uncontained multi-aspect ratio layout shows carousel items of various widths. ,  hero The hero carousel layout shows at least one large and one small item at a time. , center-aligned hero The center-aligned hero carousel layout shows at least one large and two small items at a time. The large item is centered. and full-screen The full-screen carousel layout shows one edge-to-edge large item at a time and scrolls vertically.

-   Layouts can be start-aligned or center-aligned

-   Item visuals have a parallax effect when scrolled

-   Items change size as they move through the carousel

Carousels can show items of various sizes

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/CarouselView-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/carousel) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/Carousel.md) | Available |
|
Web

 | Unavailable |

Close

## Updates

**November 2025**

New carousel layout:

-   Uncontained multi-aspect ratio The uncontained multi-aspect ratio layout shows carousel items of various widths.

**2023** 

Additional layouts and configurations:

-   Uncontained The uncontained carousel layout show items that scroll to the edge of the container.

-   Full-screen The full-screen carousel layout shows one edge-to-edge large item at a time and scrolls vertically.

-   Centered carousels The center-aligned hero carousel layout shows at least one large and two small items at a time. The large item is centered.

-   Hero carousel layout The hero carousel layout shows at least one large and one small item at a time.

-   Multi-browse layout The multi-browse carousel layout shows at least one large, medium, and small carousel item at a time.

![Items of different widths in an uncontained multi-aspect ratio layout.](https://lh3.googleusercontent.com/fVj4DyPx6HxKN7gxkVrxReCeNppE22Favi2407XaDtWc5AiUxr-xvwqelWFXfRaQ2AayTCiBEwL06duEvTEptd1dEt1FWREyAV1d_2kMAf-MHQ=w40)![Items of different widths in an uncontained multi-aspect ratio layout.](https://lh3.googleusercontent.com/fVj4DyPx6HxKN7gxkVrxReCeNppE22Favi2407XaDtWc5AiUxr-xvwqelWFXfRaQ2AayTCiBEwL06duEvTEptd1dEt1FWREyAV1d_2kMAf-MHQ=s0)

New carousel layout: uncontained multi-aspect ratio

## Differences from M2

This component is new in Material 3.

-   **Shape**: Dynamic carousel items change shape when scrolled
-   **Motion**: Carousel items move at a different speed than their content, creating a parallax effect
-   **Interaction**: When scrolled, carousel items snap into place to maintain the same layout. Hero carousels The hero carousel layout shows at least one large and one small item at a time. swipe through one item at a time. Multi-browse carousels The multi-browse carousel layout shows at least one large, medium, and small carousel item at a time. scroll through many items at once.

![Carousel in a contained layout with a large item and a small item.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwur4ddz-3.png?alt=media&token=a42f76c5-c4fd-46fd-89a1-04b492638986)

Hero carousels scroll through one large item at a time

## Research

The Material Research Team conducted two studies (quantitative and qualitative) with over 200 participants to understand their perspectives of five different carousel designs. The studies measured their understanding of how to interact with each carousel, their expectations of the number of items in each design, and how they expected carousels to be used.

**Summary of findings:**

-   Participants thought carousels were a good way to explore many different kinds of content

-   A previewed or squished item strongly indicated that there was more content to swipe through

-   Participants expected around 10 items in a carousel that scrolled multiple items at once

-   While some contexts were considered better for some carousel designs, all designs were considered similarly usable
