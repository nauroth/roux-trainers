---
source: https://m3.material.io/components/loading-indicator/accessibility
title: "Loading indicator"
captured: 2026-09-14
---

# Loading indicator

## Use cases

People should be able to do the following with assistive technology:

-   Navigate to the loading indicator
-   Understand what progress the indicator is communicating
-   Initiate a content refresh without relying on a gesture

## Interaction & style

The active indicator, which displays progress, provides visual contrast of at least 3:1 against most container and surface colors.

The indicator itself must have 3:1 contrast with the background, but the container does not.

![Loading indicator with 3:1 color contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmagv3srk-1.png?alt=media&token=85fc9e3b-7664-442d-940c-8d7b51cabda4)

The loading indicator provides visual contrast of at least 3:1 against most background colors

When integrated into another component, such as a button, make sure that the active indicator provides a visual contrast of at least 3:1 against the other component.

![Loading indicator with correct color contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmaguuv6h-2_do.png?alt=media&token=8821caaf-6d1f-444d-8c96-12753282b334)

check Do

Ensure at least 3:1 contrast between the indicator and the surface it's on

![Loading indicator with incorrect color contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmaguuziu-3_dont.png?alt=media&token=e8157014-aaa8-47cf-ae70-c8c3b986b36e)

close Don’t

Avoid using when the contrast is under 3:1

Pull-to-refresh interactions can’t be accessible by just swiping. Provide an alternate way to refresh the content with a single pointer, such as placing a refresh button in a menu or directly alongside the content.

The refresh action can be in an app bar

## Labeling elements

Since the loading indicator is a visual cue, it needs an accessibility label to assist people who can't rely on visuals.

It should use the **progress bar** accessibility role. Write a label describing the purpose of the loading indicator, such as **loading news article** or **refreshing page**.

![Loading indicator accessibility label and role.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0cb8rsa-5.png?alt=media&token=a2cd5924-9d13-4657-a26f-b5c6130d0c67)

Loading indicator labels should explain which items are loading
