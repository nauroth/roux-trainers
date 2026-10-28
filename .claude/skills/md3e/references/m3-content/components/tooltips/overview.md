---
source: https://m3.material.io/components/tooltips/overview
title: "Tooltips"
captured: 2026-09-14
---

# Tooltips

> Tooltips display brief labels or messages

-   Use tooltips to add additional context to a button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) or other UI element

-   Two variants: plain Plain tooltips briefly describe a UI element. They're often used for labelling UI elements with no text, like icon-only buttons and fields. and rich Rich tooltips provide additional context about a UI element. They can optionally contain a subhead, buttons, and hyperlinks.

-   Use plain tooltips to describe elements or actions of icon buttons Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview)

-   Use rich tooltips to provide more details, like describing the value of a feature

-   Rich tooltips can include an optional title, link, and buttons

![2 variants of tooltips.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme6q4295-01.png?alt=media&token=103d96af-908d-4764-9169-910ec6d9ad26)

1.  Plain tooltip
2.  Rich tooltip

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
|
Flutter

 | Unavailable |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/tooltip) | Available |
|

Android Views (MDC-Android)

 | Unavailable |
|

Web

 | Unavailable |

Close

## Differences from M2

-   **Color**: New color mappings and compatibility with  dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source)

-   **Shape**: Rich tooltips Rich tooltips provide additional context about a UI element. They can optionally contain a subhead, buttons, and hyperlinks. have more rounded corners

![GM2 rich tooltip.](https://lh3.googleusercontent.com/eJToL16cXcvuWuH7Ajb0sRtM7yFr6qMf_tbIdsR5hAfrIRinT4UfyLsr2Me5goaDHO1RAXuagPp28FvTXNegY6hZ64NOupwt14CTLHZZjsKk=s0)

M2: Rich tooltips have slightly rounded corners

![GM3 rich tooltip.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme6q4dmm-03.png?alt=media&token=3e7f1900-0e76-458f-a6dd-e226fe64a633)

M3: Rich tooltips have more rounded corners and support dynamic color
