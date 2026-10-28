---
source: https://m3.material.io/components/bottom-sheets/specs
title: "Bottom sheets"
captured: 2026-09-14
---

# Bottom sheets

> Bottom sheets show secondary content anchored to the bottom of the screen

Modal bottom sheets Modal bottom sheets appear in front of app content, disabling all other app functionality when they appear, and remaining on screen until confirmed, dismissed, or a required action has been taken. are above a scrim while standard bottom sheets Standard bottom sheets display supplementary content without blocking access to the screen’s primary content, such as an audio player at the bottom of a music app. don't have a scrim. Besides this, both variants of bottom sheets have the same specs.

![Diagram of container, drag handle, scrim](https://lh3.googleusercontent.com/zukI3AJrMtdfLMWQT4wlAlMvIUfkIHpc5QmTQNqYJpxh-cV8QEJcVsy9Yc198HJsK1Od4d-cEiCfOKkcY5nhzjVVmtfGd9e3Wy75vUnWqSE=s0)

1.  Container
2.  Drag handle (optional)
3.  Scrim

## Tokens and specs

Browse the component elements, attributes, tokens, and their values. [Learn more about design tokens](/m3/pages/design-tokens/overview)

Close

## Color

Color values are implemented through design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) . For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![Two diagrams featuring color opposites of scrim, container, drag handle](https://lh3.googleusercontent.com/DRToa14TKB2-AlRHwUn1aPr1fykKEPGlGiKLDxHYv9B9e5CeupNBR-mM7uQOfp_OK-ZHdqjgboBeyE7GhlNtsThqGvX87OLsiAoci2zkTRBo=w40)![Two diagrams featuring color opposites of scrim, container, drag handle](https://lh3.googleusercontent.com/DRToa14TKB2-AlRHwUn1aPr1fykKEPGlGiKLDxHYv9B9e5CeupNBR-mM7uQOfp_OK-ZHdqjgboBeyE7GhlNtsThqGvX87OLsiAoci2zkTRBo=s0)

Bottom sheet color roles used for both light and dark schemes:

1.  Scrim\*

2.  On surface variant

3.  Surface container low

\*On Android platforms, the scrim color and opacity is automatically handled by the system UI.

## Measurements

![Bottom sheet on larger device with 56dp top and 56dp side margins](https://lh3.googleusercontent.com/gVNIjqiBu0DjSUv-lwnH3xIvACuZ6S4LWuUrUHe_KA0V_GlU3w-iwKPM-ka_6KfmjFuQJ1k6qrmm2b0y_6ZJcLd4alet31vP-0-nUdrpj_k=w40)![Bottom sheet on larger device with 56dp top and 56dp side margins](https://lh3.googleusercontent.com/gVNIjqiBu0DjSUv-lwnH3xIvACuZ6S4LWuUrUHe_KA0V_GlU3w-iwKPM-ka_6KfmjFuQJ1k6qrmm2b0y_6ZJcLd4alet31vP-0-nUdrpj_k=s0)

Bottom sheet padding and size measurements

Bottom sheets span the full window width up to 640dp. When the window width exceeds 640dp, bottom sheets adjust to have a top margin of 56dp and side margins of 56dp. 

| Attribute | Value |
| --- | --- |
| Drag handle alignment (horizontal) | Center |
| Drag handle padding top/bottom | 22dp |
| Top margin | 72dp |
| Top margin (window width > 640dp) | 56dp |
| Start/end margin (window width > 640dp) | 56dp |
| Width | Full width, up to max-width 640dp |
| Height | Variable |
