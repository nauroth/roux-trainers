---
source: https://m3.material.io/components/extended-fab/accessibility
title: "Extended FABs"
captured: 2026-09-14
---

# Extended FABs

> Extended floating action buttons (extended FABs) help people take primary actions

## Use cases

People should be able to do the following using assistive technology:

-   Navigate to and activate the extended FAB

## Interaction & style

To make it easier for users of screen readers to reach a primary action such as an extended FAB, consider placing the action in the upper left region of large web screens, like in an expanded navigation rail Expanded navigation rails show text labels and an extended FAB, and can be default or modal. [More on navigation rails](/m3/pages/navigation-rail/overview) .

In smaller windows, the best place for the extended FAB is the lower right corner of a screen.

![On a large screen, the Compose FAB is placed on the upper left region in an email app with the expanded window on the right.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0e5baky-01.png?alt=media&token=d4a320d5-298d-43a8-9e13-834adb34a1bf)

Extended FABs can be placed in the expanded navigation rail

![In a compact window, the Compose FAB is placed on the lower right region in an email app.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dmgu83-02.png?alt=media&token=898399c4-2a45-4bb4-8089-5a869da143bb)

check Do

Place extended FABs in an easy-to-reach place that doesn’t obstruct other actions

![In a compact window, the Compose FAB is overlapping other buttons in an email app.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dmhng1-03.png?alt=media&token=8f726c4c-3cc6-4fec-8518-403650fba64a)

close Don’t

Don’t place extended FABs over another actionable element

## Initial focus

Ensure the extended FAB is prioritized in the overall focus order to create an efficient experience for people who navigate UIs with assistive tech. 

On mobile, the focus order may start with the app bar App bars contain page navigation and information at the top of a screen [More on app bars](/m3/pages/app-bars/overview) , move to the navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview) , and then skip past any other content on the page to land on the extended FAB.

When using an extended FAB, both the visible label and icon should be treated as one focusable element. The extended FAB doesn’t need a tooltip because it already has a visible label.

![A focused extended FAB in the lower right region of a mobile screen.
](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dmis8z-04.png?alt=media&token=bf33f207-5a42-437b-a1d6-df3b1f8c34c6)

check Do

Ensure extended FABs get focus when navigating with assistive technology

![A focused extended FAB with a tooltip matching the text label.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dmjod6-05.png?alt=media&token=1f36adfa-b3b3-459e-b692-aa1deb2855f1)

close Don’t

Tooltips aren’t required since the extended FAB has label text

## Keyboard navigation

| Keys | Actions |
| --- | --- |
| **Tab** | Moves focus to the extended FAB |
| **Space** or **Enter** | Activates the extended FAB |

## Labeling elements

To ensure the action is clear, use consistent icons and text labels, such as a **Compos****e** icon with a **Compose** text label. 

The icon and text label combination should have one distinct purpose.

The accessibility label must include the same first word as the visible label. For example, if the visible button is **Create**, then the accessibility label might say **Create a new invite**. 

![Accessibility labels of an extended FAB.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dmmjzu-06.png?alt=media&token=88489b92-fd7e-4f30-a6da-a6b4b9962f55)

The accessibility label reads **Compose** to match the extended FAB's displayed label
