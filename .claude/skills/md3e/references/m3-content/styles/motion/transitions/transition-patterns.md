---
source: https://m3.material.io/styles/motion/transitions/transition-patterns
title: "Transitions"
captured: 2026-09-14
---

# Transitions

> Transitions help guide people as they navigate an app

star

Note:

M3 transitions use the legacy easing and duration system. They'll eventually be updated to use the motion physics system.

Transitions are short animations that connect individual elements or full-screen views of an app. They are fundamental to a great user experience because they help users understand how an app works. Well-designed transitions makes an experience feel high quality and expressive. They should be the top priority for a strong motion implementation. 

These are six common transition patterns:

1.  [Container transform](/m3/pages/motion-transitions/transition-patterns#b67cba74-6240-4663-a423-d537b6d21187)
2.  [Forward and backward](/m3/pages/motion-transitions/transition-patterns#df9c7d76-1454-47f3-ad1c-268a31f58bad)
3.  [Lateral](/m3/pages/motion-transitions/transition-patterns#8d4ec98f-60dc-47a9-901e-88fa2c43f18a)
4.  [Top level](/m3/pages/motion-transitions/transition-patterns#f852afd2-396f-49fd-a265-5f6d96680e16)
5.  [Enter and exit](/m3/pages/motion-transitions/transition-patterns#e1c2a650-d7a4-4a6d-9025-e6b7845291ed)
6.  [Skeleton loaders](/m3/pages/motion-transitions/transition-patterns#b39a0641-1b44-4864-83f5-fac38e0bd94a)

## Container transform

This pattern is used to seamlessly transform an element to show more detail, like a Card expanding into a details page.

-   **Commonly used with:** Cards, lists, image galleries, search boxes, sheets, FABs, and chips

-   **Read more:** [UX Research](https://material.io/blog/motion-research-container-transform), [Guidelines](/m3/pages/motion-transitions/applying-transitions#50f9fc3f-c7e2-4099-b614-7c36b1c5285d), [Android implementation](https://github.com/material-components/material-components-android/blob/master/docs/theming/Motion.md#container-transform)

Persistent elements are used to seamlessly connect the start and end state of the transition. The most common persistent element is a container, which is a shape used to represent an enclosed area. It can also be an important element, like a hero image. Of all transition patterns, this one creates the strongest relationship between elements. It's also perceived to be the most expressive.

A container transform is used when opening an app and a card. This makes the relationship between screens clear and gives an expressive quality to the transition.

#### Between full-screen views

A container transform is used to expand this image to a fullscreen view

A container transform is used to expand this List item to a fullscreen view

A container transform is used to expand this Card and Search box to a fullscreen view

#### Within a screen

A container transform is used to expand this search box

This container transform FAB transition has a persistent container and icon

A container transform is used on an expanding Sheet

## Forward and backward

This pattern is used for navigating between screens at consecutive levels of hierarchy, like navigating from an inbox to a message thread.

-   **Commonly used with**: Lists, cards, buttons, links
-   **Read more:** [Guidelines](/m3/pages/motion-transitions/applying-transitions#41b11a78-b88f-4972-904c-880bc348acc8), [Android implementation](https://github.com/material-components/material-components-android/blob/master/docs/theming/Motion.md#shared-axis)

A horizontal sliding motion indicates moving forward or backward between screens. Android and iOS have different default styles:

**1\. Android** uses a fade as screens slide. This reduces the amount of motion, since the screens don't have to slide the full width of the device.

**2.** **iOS** uses a parallax effect, meaning the background slides slower than the foreground. This also reduces the amount of motion.

1.  Android’s default forward and backward transition
2.  iOS’ default forward and backward transition

A filled button on Android uses a forward and backward transition

A card on iOS uses a forward and backward transition

A search icon button in Android uses a forward and backward transition

Tapping a list item on a tablet uses a forward and backward transition

## Lateral

This pattern is used for navigating between peer content at the same level of hierarchy, like swiping between tabs of a content library.

-   **Commonly used with:** Tabs, carousels, and image galleries
-   **Read more:** [Guidelines](/m3/pages/motion-transitions/applying-transitions#3d5c16ce-7350-4a33-9d2b-598a7591d4e6)

Lateral transitions use a sliding motion similar to a forward and backward pattern, but it does not use a fade or parallax effect. Instead elements are grouped and slide in unison, creating a strong peer relationship. This also hints at being able to gesturally swipe elements to navigate.

A lateral transition is used when tapping or swiping a Tab component

A lateral transition is used when swiping through a photo album

A lateral transition used with a Carousel component

## Top level

This pattern is used to navigate between top-level destinations of an app, like tapping a destination in a Navigation bar.

-   **Commonly used with:** Navigation bar, navigation rail, and navigation drawer
-   **Read more:** [Guidelines](/m3/pages/motion-transitions/applying-transitions#ab8885f6-5517-419d-80de-bea50cd10467), [Android implementation](https://github.com/material-components/material-components-android/blob/master/docs/theming/Motion.md#fade-through)

The exiting screen quickly fades out and then the entering screen fades in. Since the content of top level destinations isn't necessarily related, the motion intentionally does not use grouping or persistent elements to create a strong relationship between screens.

A navigation bar uses a top level transition

Tapping an item in a navigation drawer uses a top level transition to move between destinations

A navigation rail uses a top level transition

## Enter and exit

This pattern is used to introduce or remove a component on the screen. Components can enter and exit within the screen bounds, like a dialog appearing over an app. They can also enter and exit by crossing the screen bounds, like a navigation drawer or bottom sheet that slides on and off screen.

### Within screen bounds

-   **Commonly used with:** FABs, dialogs, menus, snackbars, time pickers and tooltips
-   **Read more:** [Guidelines](/m3/pages/motion-transitions/applying-transitions#56675bd6-5e69-4fa8-b075-d694e8cb3ad4)

**Android** components expand and collapse along the x or y axis as they enter and exit. Scale and z-axis motion is avoided since they imply elevation change, which doesn't match M3's reduced elevation model.

**iOS** components uniformly scale as they enter and fade out to exit.

1.  Android enter and exit transitions 
2.  iOS enter and exit transitions

The direction a component enters is informed by their location on screen, expanding away from the device edge. A menu at the top of the screen expands downwards, and a snackbar at the bottom of the screen expands upwards.

A menu at the top of the screen expands downwards as it enters

A snackbar and FAB use an enter and exit transition

### Beyond screen bounds

-   **Commonly used with:** App bars, banners, navigation bar, navigation rail, navigation drawer, and sheets
-   **Read more:** [Guidelines](/m3/pages/motion-transitions/applying-transitions#1b704202-167d-48d5-bca1-614cf050de1b)

**Android** components expand and collapse along the x or y axis as they slide on and off screen. This emphasizes their shape, making an otherwise simple transition more expressive.

**iOS** components slide on and off screen without changing shape.

1.  Android enter and exit transitions 
2.  iOS enter and exit transitions

Components like a side sheet can also enter and exit at the same elevation as the main content. Coplanar sheets shrink the available area for content.

A coplanar side sheet uses an enter and exit transition

Components can enter and exit from beyond the screen bounds based on a scroll gesture. This allows for more screen space to browse.

A top app bar slides off and on screen during a scroll

A navigation bar slides off and on screen during a scroll

The location components enter and exit help establish a coherent spatial model of an app:

1.  A **notification** enters from the top indicating the notification drawer can also be pulled down from the top
2.  A **nav drawer** enters from the left helping users understand where it's located when it's off screen
3.  A **bottom sheet** and the keyboard enters from the bottom of the screen. This is a sensible default location for sheets to enter since the bottom of the screen is easiest to reach.

The direction of enter and exit transitions help establish a coherent spatial model

## Skeleton loaders

This pattern is used to transition from a temporary loading state to a fully loaded UI.

-   **Read more**: [Guidelines](/m3/pages/motion-transitions/applying-transitions#b82b5150-609b-4540-903b-2b900ef830aa)

Skeleton loaders are UI abstractions that hint at where content will appear once it's loaded. They're used in combination with other transitions to reduce perceived latency and stabilize layouts as content loads.

A skeleton loader is used after an app launches to indicate content is loading

Skeleton loaders have a subtle pulsing animation to indicate indeterminate progress. It starts at the top left of the screen and moves down to the bottom right.

Once content is loaded, it quickly fades in on top of the skeleton loader.

A pulsing animation indicates indeterminant loading

Content quickly fades in once it's loaded
