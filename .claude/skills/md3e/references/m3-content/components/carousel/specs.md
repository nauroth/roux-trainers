---
source: https://m3.material.io/components/carousel/specs
title: "Carousel"
captured: 2026-09-14
---

# Carousel

> Carousels show a collection of items that can be scrolled on and off the screen

![4 elements of a carousel.](https://lh3.googleusercontent.com/Bfe7F5i-YHBu3MctH6XdfsSYD1VNZVWrAC2hTpG-vOuHgn1-npiiivwifJe1ddHkbRZxlXtKJuq0GV9ScQUHvelSAEkjsMkWnAUznOdSjSPG=w40)![4 elements of a carousel.](https://lh3.googleusercontent.com/Bfe7F5i-YHBu3MctH6XdfsSYD1VNZVWrAC2hTpG-vOuHgn1-npiiivwifJe1ddHkbRZxlXtKJuq0GV9ScQUHvelSAEkjsMkWnAUznOdSjSPG=s0)

1.  Container
2.  Large carousel item
3.  Medium carousel item
4.  Small carousel item

## Tokens & specs

Browse the component elements, attributes, tokens, and their values.

Close

## Color

Color values are implemented through design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) . For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview/)

![2 color roles of a carousel.](https://lh3.googleusercontent.com/Mzrpy7os0Evw3KGIkxaFfkon8IgFJgpyqGgYD2DIMMbywuPHponDXt8yaG9F6u0lJAhluoYHtJE1Sv2KYym2NJiXYSBSqOT6pMFsQMCdXZF77w=w40)![2 color roles of a carousel.](https://lh3.googleusercontent.com/Mzrpy7os0Evw3KGIkxaFfkon8IgFJgpyqGgYD2DIMMbywuPHponDXt8yaG9F6u0lJAhluoYHtJE1Sv2KYym2NJiXYSBSqOT6pMFsQMCdXZF77w=s0)

Carousel color roles used for light and dark schemes:

1.  Container
2.  Surface

## States

States States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) are visual representations used to communicate the status of a component or interactive element. [Learn more about interaction states](/m3/pages/interaction-states/overview)

![5 states of a carousel in light and dark schemes.](https://lh3.googleusercontent.com/D7QutV1hQsVv50Nbn-UkT_BAJ4JRYAHLcohN50l4y2t5BDjn0pSq5jHk29phmxHU4H-UZszf7UaQoCPDkjWvVki1t4vlhxzzHfBL9vabMqo=w40)![5 states of a carousel in light and dark schemes.](https://lh3.googleusercontent.com/D7QutV1hQsVv50Nbn-UkT_BAJ4JRYAHLcohN50l4y2t5BDjn0pSq5jHk29phmxHU4H-UZszf7UaQoCPDkjWvVki1t4vlhxzzHfBL9vabMqo=s0)

1.  Enabled
2.  Hovered
3.  Focused
4.  Pressed
5.  Disabled

## Carousel item dynamic widths

All kinds of carousel items dynamically adapt to the width of the container.

Large items have a customizable maximum width that's used to optimally fit carousel items into the available space.

Small carousel items have a minimum width of 40dp and a maximum width of 56dp.

Items change size as they move through the carousel layout.

![Measurements for a small carousel item.](https://lh3.googleusercontent.com/l_O_4sY-OWT2K7Ot5jY_yhXxSErGV6Cu33URxwXPnt8D6oTDXh3oWlg5utAL2Iw0afdYNvkjpYZzLlsXjeONHtFJIqbO4dCEZO2xTzUvChjV=w40)

Small carousel items have a minimum and maximum width

## Multi-browse

The multi-browse layout The multi-browse carousel layout shows at least one large, medium, and small carousel item at a time. shows at least one large, medium, and small carousel item.

![4 elements of a multi-browse carousel layout.](https://lh3.googleusercontent.com/evx3sPQvpKArdG4MTkQQCOFPM387eGsABK9x_Ecv_LeJy23RGxJyVZU50_GThcTacMUgP5tuLoPOXRwk3s0QZgpKmJpiEj8pG_kZaAgertAC=w40)

1.  Container
2.  Large carousel item
3.  Medium carousel item
4.  Small carousel item

### Measurements

![Measurements of a multi-browse carousel layout.](https://lh3.googleusercontent.com/Py7GKPNbLAGSs7Zx0w19v21_MWZgZSX5ztGYvSQ8bDM4DeZ-ilsU5Ra3bR2_24qAgkiEn8j7dTfdKO7YGmz8Jfd-cFR80M3rtWzzDt3nwUHtaQ=w40)

Multi-browse carousels have padding on both sides of the container

| Attribute | Value |
| --- | --- |
| Alignment | Vertically centered |
| Leading/trailing padding | 16dp |
| Top/bottom padding | 8dp |
| Padding between elements | 8dp |
| Large item width | Dynamic, or user-set |
| Medium item width | Dynamic |
| Small item width | 40–56dp, dynamic |
| Item corner radius | 28dp |

## Uncontained

The uncontained The uncontained carousel layout show items that scroll to the edge of the container. layout shows items that scroll to the edge of the container.

![4 elements of an uncontained carousel layout.](https://lh3.googleusercontent.com/p9Q_QbNpwi3QeDBOCZ64MWO3Vm83NIV7SFc6IqJ7BPGlsGidp5FJdTOq4yVq6zCZkqkSf03SLJ2pSEU4vrj7udhaxrBi10bGrtfAWev8AZWU=w40)

1.  Container
2.  Large carousel item

### Measurements

![Measurements of an uncontained carousel layout.](https://lh3.googleusercontent.com/kHmHj0O9aT5Nlb2KyOQq6CWd8sRWmGjzg3TMKEzoHQLd9OG08KSdrH7g3vUxMkGebXOb17s3kAT6fh16dVWyzKDJrBkuFIedIZpi3H1rGBmtbg=w40)

Uncontained carousel items bleed over the padding on each side when scrolling

| Attribute | Value |
| --- | --- |
| Alignment | Vertically centered |
| Leading padding | 16dp |
| Top/bottom padding | 8dp |
| Padding between elements | 8dp |
| Item corner radius | 28dp |

## Uncontained mutli-aspect ratio

The uncontained multi-aspect ratio layout shows carousel items of various widths.

![4 elements of an uncontained carousel layout](https://lh3.googleusercontent.com/FM3l_rU4tOFqCVj-gmDwOG9zyWk279AI0tz5aHQa5hRW5v3P4cS3ydvtXKwZMy_ClxODMX76POePAuI9k_ZsvZfZt3yxWISoKWkbSQhmw1M=w40)

1.  Container
2.  Carousel item (16:9)
3.  Carousel item (9:16)
4.  Carousel item (1:1)
5.  Carousel item (3:4)

### Measurements

![](https://lh3.googleusercontent.com/1SazYXoMFnNnFpmqXCe7pchjco1F_R03ws6GfweuJDv4cgafUAQ0l0P_8ELNDh-l8UEyycEhodtkGYJgG_s6Zn0GLzQ6IP4UwcSpCUW9O0N-=w40)

Uncontained multi-aspect ratio carousels only have leading padding, with 8dp of padding between items.

| Attribute | Value |
| --- | --- |
| Alignment | Vertically centered |
| Leading padding | 16dp |
| Top/bottom padding | 8dp |
| Padding between elements | 8dp |
| Item corner radius | 28dp |

## Hero

The hero layout The hero carousel layout shows at least one large and one small item at a time. shows at least one large item and one small item.

![3 elements of a hero carousel layout.](https://lh3.googleusercontent.com/I9ALEx4jwdluVMjRmR2zhTCFVHo3N05uccMHUOXxA1pAD-XMUdr9GNHJPfOT9mkNz862VyWH2ItNhseEOpdJsWv1RI-o6-sxxPuV4UG6coQdDg=w40)

1.  Container
2.  Large carousel item
3.  Small carousel item

### Measurements

![Measurements of a hero carousel layout.](https://lh3.googleusercontent.com/LOm-yrGl6Hmuxn-eQ995_1ZlFqkd90so8hX-xPss8PWGCyXWDJECAupl-paVut_4taB6DVA7OENO39mxBfDAgXcPC_kZXCNlPTdnCQxBYZ4=w40)

Hero carousels have padding on both sides of the container

| Attribute | Value |
| --- | --- |
| Alignment | Vertically centered |
| Leading/Trailing padding | 16dp |
| Top/bottom padding | 8dp |
| Padding between elements | 8dp |
| Large item width | Dynamic |
| Small item width | 40-56dp, dynamic |
| Item corner radius | 28dp |

## Center-aligned hero

The center-aligned hero layout shows at least one large item and two small items.

![3 elements of a center-aligned hero carousel layout.](https://lh3.googleusercontent.com/4LmjbjezXxY7ctWR2bmLAa35m3No8ErHZO31L0jTLxRBc3ivUMC_DA5rDEEZRILu8VlJLE__deFfvXQxuvJ0hjhAuD4-MLc1D3RVqUF-7g=w40)

1.  Container
2.  Large carousel item
3.  Small carousel item

### Measurements

![Measurements of a center-aligned hero carousel layout.](https://lh3.googleusercontent.com/SuFPyTcmkMVHYU4NubWqAMrraBaL0OAFzvUcuXPWlkmIsASj8fOjlwGNfNpl4LP9revB2iU8dc-oFBOXNlX3tfcFfD7ny6W2MrubF9hcGqH1=w40)

Center-aligned hero carousels have padding on both sides of the container

| Attribute | Value |
| --- | --- |
| Alignment | Vertically centered |
| Leading/Trailing padding | 16dp |
| Top/bottom padding | 8dp |
| Padding between elements | 8dp |
| Large item width | Dynamic |
| Small item width | 40-56dp, dynamic |
| Item corner radius | 28dp |

## Full-screen

The full-screen layout The full-screen carousel layout shows one edge-to-edge large item at a time and scrolls vertically. shows one edge-to-edge large item.

![2 elements of a full-screen carousel layout.](https://lh3.googleusercontent.com/bn-epGZhbTWJijBRurEco_OYDKB-s-DEYMJgCwj7OSBbLJMEm34yEZY1AaKy2gEKjnMCT--UTHHqR0IOGlwj2p8aaPNPW3zdAENXMy5BwpT0SA=w40)

1.  Container
2.  Large carousel item

### Measurements

![Measurements of a full-screen carousel layout.](https://lh3.googleusercontent.com/qo38AJlGFDaPzNKJX24tQG5PrvIQ_PRl0ZEmeh-7YE8FvikHGuh96N5ggGpDoOStYSzbhUAg0-36VmHVC9QmpqGifut7G4QG3G1RCtu13UKO=w40)

Full-screen carousels fill the window edge-to-edge

| Attribute | Value |
| --- | --- |
| Alignment | Centered |
| Leading/Trailing padding | 0dp |
| Top/bottom padding | 0dp |
| Padding between elements | 16dp |
