---
source: https://m3.material.io/styles/motion/transitions/applying-transitions
title: "Transitions"
captured: 2026-09-14
---

# Transitions

> Transitions help guide people as they navigate an app

star

Note:

M3 transitions use the legacy easing and duration system. They'll eventually be updated to use the motion physics system.

## What makes a good transition?

Well-designed transitions should have these characteristics:

### Follows accessibility settings

Most platforms have a reduced animation setting to help users with a sensitivity to motion. If that setting is on, transitions should:

-   Use subtle fades instead of intense sliding or scaling animations
-   Disable decorative effects like parallax or shape morphing

1.  Transitions with a default motion setting 
2.  Transitions with a reduced motion setting turned on

### Consistent

Consistently applying the right type of transition helps make apps feel cohesive and predictable to use.

These four Android apps use the same forward and backward transition, making them feel like a cohesive family of apps

### Stable layouts

Use skeleton loaders so that UI elements are coherent and stable during a transition. Avoid content shifting positions or instantly popping in as it loads. It can be distracting and frustrating to use.

check Do

Transitions should use skeleton loaders with a subtle pulsing animation to stabilize a layout as it loads

close Don’t

Content should not pop in and shift locations during a transition

### No jarring jump cuts

Jump cuts should generally be avoided as a default setting since they can be disorienting. Instantly transitioning from one screen to the next offers no clues to help a user orient themselves.

If pure efficiency is a top priority, like opening a menu in a productivity app, a jump cut may be preferred.

check Do

Animated transitions help users orient themselves as they navigate

close Don’t

For most common transitions, jump cuts are jarring and disorienting

### Coherent spatial model

Transitions are used to establish a coherent spatial model. This helps users understand the physical layout of an app.

check Do

These carousel transitions have a coherent spatial layout while navigating between a collapsed and expanded view

close Don’t

Switching between horizontal and vertical carousel layouts creates a confusing spatial model

### Unified direction

A transition should have a unified direction of movement. Elements are grouped and move along a primary axis instead of moving in independent directions. Only important elements like hero images remain persistent throughout the transition. This helps guide a users focus.

check Do

This transition has a simple vertical motion that’s easy to follow

close Don’t

Don’t animate many persistent elements independently. The various moving parts are distracting

### Clean fades

Fully fade out content before fading new content in. This avoids the overlap of partially transparent elements resulting in distracting and messy frames.

If a cross fade needs to occur, keep it quick and hide it during the fastest part of the transition.

check Do

Fade content out before fading new content in to maintain a clean design

close Don’t

Avoid showing cross faded content, the overlap of partially transparent elements can result in messy and distracting frames

Don't slowly fade components on top of other content as they enter or exit. This creates distracting cross faded frames. If a fade is needed, like with a Dialog entering in the middle of the screen, the fade should use a short duration to hide that part of the transition.

close Don’t

Don't fade a bottom sheet as it enters and exits, it creates distracting cross faded frames

### Simple style

Transitions are not receptive to highly stylized motion. They're frequent, often occupy large portions of the screen, and are primarily meant to help users accomplish a task.

check Do

Transitions should have a simple style

close Don’t

Common transitions should not use overt style effects like bouncy springs

## Choosing a transition pattern

Consider the following to choose the right transition for a given use case:

### Container transform

This pattern is highly effective at creating a relationship between elements. It's also the most dramatic pattern in terms of style and should be reserved for the right context. Consider using it for:

1.  Hero moments that should be expressive
2.  Shallow hierarchies where you expand an element for more detail then collapse it
3.  Creating a seamless connection between elements

**Read the research for the benefits of container transform** **[here](https://material.io/blog/motion-research-container-transform).**

check Do A container transform creates a clear connection between the thumbnail and expanded image. It also makes this hero transition more expressive.

close Don’t Don't use container transform in apps with deep hierarchies, the motion becomes excessive. The expressive style also doesn't fit this utility focused navigation.

Use a container transform transition for hero moments rather than a forward and backward transition.

close Don’t

Don't use forward and backward transitions on hero moments like opening a photo memory

### Forward and backward

Both Android and iOS should use platform defaults for forward and backward navigation. It's easy to implement and stays current as platforms update. They have a simple motion style suitable for such a common transition.

check Do

Platform default forward and backward transitions are a sensible choice for common navigation

exclamation Caution

Container transform transitions require custom implementations and the motion may feel excessive when used frequently

### Lateral

Lateral transitions are used to browse peer content that's part of the same set, like navigating between tabs in a media library. By sliding content horizontally, it hints at being able to swipe the content area to navigate between peers.

check Do

A tab component uses a lateral transition type

exclamation Caution Fading content as it slides makes the peer relationship and swipe gesture less obvious. The style also may be confused with a forward and backward transition.

Don't use a Lateral transition for navigating hierarchical screens. Sliding content the full width of the screen is excessive for a high frequency transition. It also implies an equal peer relationship which isn't accurate to the hierarchy of the screens.

close Don’t

A lateral transition should not be used for common forward and backward navigation as it results in an excessive amount of motion

### Top level

When tapping a navigation bar, rail or drawer, a quick fade is used to transition to a new destination. Top level destinations aren't necessarily related, so the motion intentionally does not create a connection between screens.

A lateral transition pattern is not recommended for this type of navigation. It implies you can swipe between top level destinations which conflicts with other components like carousels or swipe-able list items.

check Do

A top level transition type is used with a navigation bar, rail and drawer

close Don’t Don't use a lateral transition to move between top level destinations. The gesture conflicts with carousel and list item gestures.

### Enter and Exit

This transition pattern is used to introduce a component in context of the screen’s main UI. It can be modal, like a dialog requiring a user to take action. Or it can allow for simultaneously using both regions of the UI, like a standard bottom sheet over a map.

Don't use this pattern for navigating hierarchical screens. Sliding content the full height of the screen is excessive and it creates an unclear relationship between screens.

check Do

This bottom sheet uses an enter and exit transition pattern

close Don’t

Don't use an enter and exit pattern for navigating hierarchical screens
