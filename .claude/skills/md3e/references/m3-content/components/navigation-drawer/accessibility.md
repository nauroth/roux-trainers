---
source: https://m3.material.io/components/navigation-drawer/accessibility
title: "Navigation drawer"
captured: 2026-09-14
---

# Navigation drawer

> Navigation drawers let people switch between UI views on larger devices

star

Note:

The navigation drawer is no longer recommended in the Material 3 Expressive update. For those who have updated, use an [expanded navigation rail](/m3/pages/navigation-rail/overview/), which has mostly the same functionality of the navigation drawer and adapts better across window size classes.

## Use cases

Users should be able to: 

-   Move between navigation destinations with assistive technology
-   Select a particular navigation destination from a set
-   Get appropriate feedback based on input Device inputs provide interactive control of an app. Common inputs include a mouse, keyboard, and touchpad. [More on inputs](/m3/pages/inputs) type

## Interaction & style

**Touch**

-   When a navigation item is tapped, the active indicator appears in place, providing feedback to the user that it is selected
-   A touch ripple passes through the indicator
-   The icon switches from outlined to filled
-   The icon changes color, becoming darker

Touch: Tap

**Cursor**

-   When hovered, the hover A hover state communicates when a user has placed a cursor above an interactive element. [More on hover state](/m3/pages/interaction-states/applying-states#71c347c2-dd75-485b-892e-04d2900bd844) indicator appears providing a visual cue that the destination is interactive
-   When clicked, a ripple passes through the indicator
-   The icon switches from outlined to filled
-   The icon changes color, becoming darker in light theme and lighter in dark theme, to increase the contrast

Cursor: Hover, Click

## Initial focus

Initial focus lands directly on the first navigation item, since that is the first interactive element of the component.

![1\. Tab lands on the first navigation item, Inbox. 2. Down arrow to get to the second navigation item, Outbox.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flworf9hl-3.png?alt=media&token=1bb331b2-e914-4668-baec-8accae5b6fd6)

Focus lands on first navigation item

## Closing

The modal navigation drawer can be dismissed by selecting the scrim that covers the rest of the screen.

![A navigation drawer with a scrim covering the body content. A touch target is selecting the scrim.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm36co6ff-navdrawer-tablet-do-md.png?alt=media&token=852f7a22-fb45-4eee-89e8-ab411fad1a65)

Select the scrim to close the navigation drawer

## Visual indicators

Icons are the primary focus of the navigation and such give the dominant cue of its state States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) . Use a filled icon for the selected destination to differentiate from the outlined icons of non-selected destinations.

![Space + enter is used to select the navigation item inbox.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flworgt4a-4.png?alt=media&token=6afa4fd0-0c68-4f18-9553-84c516c0c6b2)

The navigation item is selected via **Space**/**Enter**

![A navigation drawer with the home destination using a filled icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flworfw7l-5.png?alt=media&token=d33e2758-6076-4012-933b-ce1dde9c539f)

check Do

Use a filled icon for the selected navigation destination to differentiate from the other destinations

![A navigation drawer with the home destination using an outlined icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flworg85u-6.png?alt=media&token=6cd4cfa6-ec1a-40c4-95f3-ba4efc6de9e1)

close Don’t

Avoid keeping the icon style for the selected navigation destination the same as unselected destination's icons. This removes an important visual indicator of which destination is active.

![A selected home icon using a filled icon and active indicator and a unselected home icon using an outlined icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flworh5ui-7.png?alt=media&token=1b7a06eb-1f35-4b4f-b1d3-82500203e58b)

When selected, the icon fills, darkens in light theme (or lightens in dark theme), and is backed by an active indicator shape

## Keyboard navigation

| **Keys** | **Actions** |
| --- | --- |
| Tab | Focus lands on the first navigation destination  |
| Space or Enter | Selects the focused A focused state communicates when a user has highlighted an element, using an input method such as a keyboard or voice. [More on focused state](/m3/pages/interaction-states/applying-states#bfc1624f-6bcc-4306-b0c1-425e2d8a1bf9) navigation destination, and focus moves to the newly opened section (if applicable) |
| Arrow | Navigate between destinations within the navigation drawer |

## Labeling elements

The accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview/principles) label for a navigation item is typically the same as the destination name.

If the UI text is correctly linked, assistive tech (such as a screenreader) will read the UI text followed by the component’s role.

For Android Views (MDC-Android), a more descriptive accessibility label is not available to be set and the role is not announced.

![A navigation drawer item’s label text and accessibility label both read “photos.” The role is “tab.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flworho52-8.png?alt=media&token=7fb90305-fda9-43bf-a909-b1d9f9e64d05)

A navigation drawer’s accessibility label can incorporate its adjacent UI text

When the visible UI text is ambiguous, accessibility labels need to be more descriptive. For example, a navigation destination visibly labeled **Recents** would benefit from additional information in its accessibility label to clarify the destination’s intent.

![A navigation drawer item’s label text is “recents”, the accessibility label is “recent images.” The role is “tab.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwori08q-9.png?alt=media&token=816c8f24-84d7-44bd-8578-eaf00de09d6d)

While the visible label text reads **Recents,** the accessibility label for this destination clarifies its function: **Recent images**
