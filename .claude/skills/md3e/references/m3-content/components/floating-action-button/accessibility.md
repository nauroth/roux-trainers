---
source: https://m3.material.io/components/floating-action-button/accessibility
title: "Floating action buttons (FABs)"
captured: 2026-09-14
---

# Floating action buttons (FABs)

> Floating action buttons (FABs) help people take primary actions

## Use cases

People should be able to do the following using assistive technology:

-   Navigate to and activate the FAB 

-   Perform an action with the FAB 

-   Expand and minimize an extended FAB Extended floating action buttons (extended FABs) help people take primary actions. [More on extended FABs](/m3/pages/extended-fab/overview)

## Interaction & style

Don't disable the FAB. If the action represented in the FAB is unavailable, the FAB shouldn't appear.

Ensure the icon has a minimum 3:1 contrast ratio with the container.

![FAB with highly contrasting bright container and dark icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalo050e-1.png?alt=media&token=629253b6-a62b-4c25-87fb-42aaf3c80457)

check Do

FAB icons are above the 3:1 contrast ratio

![FAB with low-contrasting dark container and dark icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalo08ew-2.png?alt=media&token=ab0762a5-4c94-484c-bfd8-93529cb6309b)

close Don’t

Avoid using colors with a contrast below 3:1

## Focus

Ensure the FAB is prioritized in the overall focus order to create an efficient experience for people who navigate UIs with assistive tech. 

On mobile, the focus order may start with the app bar App bars contain page navigation and information at the top of a screen [More on app bars](/m3/pages/app-bars/overview) , move to the navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview) , and then skip past any other content on the page to land on the FAB.

Consider displaying a tooltip when the FAB is focused. This is supported on web.

![A focused FAB with a tooltip saying “Compose” appearing below it.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaqbeez-03.png?alt=media&token=b4e21a7b-5097-4c6b-95b9-83953c9baf7e)

Tooltips surface the FAB’s label when focused

## Layout & position

To make it easier for users of screen readers to reach a primary action such as a FAB on expanded breakpoints Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , consider placing the FAB in the upper left region. 

However, it’s critical to test placement options with users to see if the upper left region is the best position in all browser windows. For compact Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) and medium breakpoints Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) , the best place for the FAB is the lower right corner of a screen.

![FAB in the lower right region of a small screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaqbxv8-04.png?alt=media&token=c3a789b3-1207-4157-a96c-49aeba908511)

In compact windows, place the FAB in the bottom trailing edge

![FAB in the upper left region of a large screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaqcdup-05.png?alt=media&token=f735b608-ff59-4ef5-b166-b7ab5542cb36)

In expanded windows, place the FAB in the navigation rail

To ensure accessibility for keyboard users on the web, avoid positioning the FAB in a way that completely obscures the focus indicator of an actionable element. 

It’s okay to partially cover the desired element, as long as the focus indicators are still visible.

![FAB in the lower right region doesn’t obscure the focus indicator of an actionable icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaqcwm1-06.png?alt=media&token=4f93ecbf-6872-4178-baf9-9d2ab17ede1c)

check Do

The FAB can partially cover an actionable element, as long as the focus indicator is still clearly visible

![FAB in the lower right region obscures an actionable icon and its focus indicator.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkbecw5o-07.png?alt=media&token=2ead9370-39e9-4c15-b531-c63385f17621)

close Don’t

Don’t completely obscure an actionable element and its focus indicator

## Keyboard navigation

| **Keys** | **Actions** |
| --- | --- |
| **Tab** | Focus lands on the FAB |
| **Space** or **Enter** | Perform the default action on an item |

## Labeling elements

The accessibility label should describe the action that the button is performing, such as **Compose a new message**.

![Accessibility label and accessibility role of a FAB.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaqdy3m-08.png?alt=media&token=c5296e63-0972-4391-8fc3-4577544c8c31)

The accessibility label of the FAB with a pencil icon describes the action of composing a new message
