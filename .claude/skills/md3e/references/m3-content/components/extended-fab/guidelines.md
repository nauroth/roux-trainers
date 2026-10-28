---
source: https://m3.material.io/components/extended-fab/guidelines
title: "Extended FABs"
captured: 2026-09-14
---

# Extended FABs

> Extended floating action buttons (extended FABs) help people take primary actions

![Vibrant extended FAB on an email screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dfvsl8-01.png?alt=media&token=6a727ef8-a86c-46f7-9ed3-ab9fb62554b3)

Extended FABs are more prominent than regular FABs

## Usage

Use an extended FAB on screens with long, scrolling views that require persistent access to an action, such as a checkout screen. 

Use it when label text helps understand the main action, or to add further emphasis to the button.

![A centered extended FAB is used to check out in a shopping app.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dfxjts-02.png?alt=media&token=90832d30-29cf-47e4-bc30-57e91caa6637)

Extended FABs ensure the main action is visible at all times

![Extended FAB on an article with lots of body content to publish that article.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dfymif-03.png?alt=media&token=6073e07a-39e3-4e98-9bd3-34315524ed39)

Use an extended FAB to provide constant access to a primary action above long-scrolling surface content

![Extended FAB on a task list to create a new task.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dfzjai-04.png?alt=media&token=135eef66-42c9-4ae2-a1d8-e4e619a74ffa)

Use an extended FAB to emphasize a page’s primary action

### Additional emphasis

The extended FAB can provide more emphasis and clarity to a product’s primary action. 

Since it has room for both a text label and icon, the extended FAB can be effective where an icon alone is ambiguous. However, the relationship between an extended FAB's icon and label should be clear.

![Extended FAB labeled “find flights” with an airplane icon, which would be unclear on its own.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dg2hbe-05.png?alt=media&token=3f47cb00-341b-4da5-9f84-11d5a1805609)

An extended FAB can be effective where an icon alone is too vague

Like the regular FAB, only one extended FAB should be used per screen. 

Multiple FABs compete for attention. 

If additional high-level actions are required, consider adding more buttons elsewhere on the page.

![An extended FAB used on a screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dg63ur-06.png?alt=media&token=0fd605b7-b8d9-49b1-a3d7-fd854c99f549)

check Do

Only show one prominent action at a time with the extended FAB

![2 extended FABs used on 1 screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dg6za4-07.png?alt=media&token=44c698be-70ea-4bcd-a6ce-222a161a6978)

close Don’t

Don’t use multiple extended FABs in one screen as it disrupts visual hierarchy

The extended FAB shouldn't be used as an option in a set of actions. 

Instead, use filled buttons for a similar level of emphasis.

![Filled button labeled “finish setup” next to a “back” button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dg9f6o-08.png?alt=media&token=0d4c8320-2e45-454e-9ffb-5487be5f2aa1)

check Do

Use a button with appropriate styling to emphasize it in a group of buttons

![Extended FAB labeled “finish setup” next to a “back” button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dgacb3-09.png?alt=media&token=ffcfefcd-f834-4dd9-84ba-840723ed9e95)

close Don’t

Don’t use the extended FAB to convey an option in a set of actions

### Choosing a size

There are three variants of extended FABs: small, medium, and large.

Choose an appropriately-sized extended FAB to add the right amount of emphasis for an action. 

In compact windows with one prominent action, the large extended FAB can be appropriate.

In larger breakpoints, use a medium or large extended FAB.

![1 large, 1 medium, and 1 small extended FAB on 3 different screen sizes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dhk1cf-10.png?alt=media&token=bc0b1322-7722-4911-a73b-3653406c566e)

There are three sizes of extended FABs

## Anatomy

![3 extended FAB elements.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dhlqdv-11.png?alt=media&token=c9b49131-63fe-42cb-8611-388802055d3b)

1.  Container 
2.  Label text 
3.  Icon (optional)

### Container

The extended FAB container is a rounded rectangle that hugs its contents. 

The extended FAB grows and shrinks with text length.

![Fixed-width extended FAB, centered, ignoring layout grid.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dhmym8-12.png?alt=media&token=e12a3cd1-a98a-449e-a8f2-df33f31290d3)

The extended FAB container hugs the icon and text

### Icon (optional)

An extended FAB's icon should intuitively represent its action.

![Extended FAB without an icon, labeled “Save draft”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dgr1oq-13.png?alt=media&token=99f7b8ba-a716-4af0-9d41-e0394c7ef714)

check Do

Unlike standard FABs, extended FABs don't require an icon

![Extended FAB with icon only, with no label text. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0e6c0j7-14.png?alt=media&token=b6d6f787-9768-4e24-a094-f74f55ed18a9)

close Don’t

An extended FAB can't have an icon without a text label

### Label text

The extended FAB’s label should clearly describe its action.

Use 1–2 words at most. Keep in mind that localization may increase the amount of characters and width of the extended FAB.

![Extended FAB with short text “Save”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dhs8b9-15.png?alt=media&token=57d8fa15-d91d-4afb-a318-dcf67d577aee)

check Do

Shorten the text as much as needed. Include an icon for additional context.

![Extended FAB with wrapping text “Save draft in folder”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dhtaim-16.png?alt=media&token=640e670e-9be7-48a6-8dce-609fad699a1e)

close Don’t

Avoid wrapping or truncating text

## Placement

![Extended FAB placed above navigation bar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0di65x4-17.png?alt=media&token=83a686da-79c0-46a1-8597-e87048f40ba3)

check Do

Place the extended FAB above the rest of the UI, off of elements like app bars

![Extended FAB overlaid on a docked toolbar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0di94u1-18.png?alt=media&token=097ae808-0f48-4d6f-b196-3a7ca2af49af)

close Don’t

Don’t place the extended FAB on top of toolbars. It disrupts the consistency of the elevation and surface layers.

![Extended FAB below an app bar at the top of a mobile screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dia4hb-19.png?alt=media&token=66ba14b8-148b-479f-b645-311243e6419a)

close Don’t

Don’t place the extended FAB in the upper half of a mobile screen, as it disrupts the reading of the UI

![An extended FAB labeled "Confirm" on a dialog to "Confirm your location".](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dib69h-20.png?alt=media&token=dad3fb69-2734-4141-8f02-5130a691d744)

close Don’t

Don’t place extended FABs on cards or inside other containers

Avoid putting other floating components, like the floating toolbar Floating toolbars float on top of page content and can provide contextual, dynamic actions. [More on toolbars](/m3/pages/toolbars/overview) , on screen with the extended FAB.

![The extended FAB is next to a floating toolbar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dif190-21.png?alt=media&token=c974e34b-8309-4170-a095-61b8a2faaf76)

close Don’t

Floating toolbars can be paired with FABs, but not extended FABs

## Responsive layout

The FAB and extended FAB can transform into each other depending on available space and layout. 

In a collapsed navigation rail Collpased navigation rails take up minimal space and are best for medium windows and wider. [More on navigation rails](/m3/pages/navigation-rail/overview) , a FAB would be used. When the rail is expanded, the FAB can transform into an extended FAB. 

![Example of extended FAB transforming into standard FAB.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0djhpqm-23.png?alt=media&token=f160b11a-c68f-4ced-9409-72e84d507e7c)

When space is limited, an extended FAB can transform into a FAB

### Right-to-left languages

Extended FABs should mirror their elements in right-to-left (RTL) languages.

![Extended FAB in a left-to-right language placed at the bottom right of a screen. The icon is to the left of the text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0djk489-24.png?alt=media&token=afd494ea-eb93-4f79-9046-6c542eb5f226)

Icons should be placed to the left of labels for left-to-right (LTR) languages

![Extended FAB in a right-to-left language placed at the bottom left of a screen. The icon is to the right of the text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0djl493-25.png?alt=media&token=b52dabe0-7c8d-4f53-87e3-4dfb4c84a168)

Icons should be placed to the right of labels for RTL languages

### Breakpoints

In compact Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) and medium breakpoints Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) , the extended FAB should be placed at the bottom of the screen, either center-aligned or aligned to the trailing edge of the window.

![Extended FAB center-aligned on a mobile screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0djn9nf-26.png?alt=media&token=6d717050-1200-42ec-aa29-b05dd1dffe34)

The extended FAB can be center-aligned

![Extended FAB right-aligned on a mobile screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0djo3i8-27.png?alt=media&token=d9906095-7edf-483d-a0ba-f50233d8370e)

The extended FAB can be aligned to the trailing edge of the window

In expanded Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) and larger breakpoints, the extended FAB should appear either:

-   At the bottom right edge of the window, in both LTR and RTL languages

-   Within the navigation rail

![Extended FAB at bottom right of screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0djp9q0-28.png?alt=media&token=4d585d98-9d3a-4356-abca-5d160c2ea1b5)

The extended FAB can be right-aligned in both LTR and RTL languages

![Extended FAB in navigation drawer.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0djqcsu-29.png?alt=media&token=de1c588a-b37a-40b5-bb9f-5bf2edcbfa30)

The extended FAB can be at the top of the expanded navigation rail

## Behavior

### Appearing

The extended FAB surface expands when appearing on screen using an [enter and exit](/m3/pages/motion-transitions/transition-patterns#e1c2a650-d7a4-4a6d-9025-e6b7845291ed) transition pattern.

An extended FAB expands when appearing on screen

### Expanding

The extended FAB can expand and adapt to any shape using a [container transform](/m3/pages/motion-transitions/transition-patterns) transition pattern. 

This includes a surface that is part of the app structure, or a surface that spans the entire screen.

An extended FAB can expand and adapt to any shape

### Transforming

The extended FAB can transform into a FAB on scroll to temporarily take up less space on screen.

An extended FAB can transform into a FAB

### Scrolling

The extended FAB can transform into a FAB when scrolling down, and back to an extended FAB when scrolling up.

An extended FAB collapses and expands when scrolling

When the FAB switches to an extended FAB, the following transitions occur:

-   The FAB shape changes
-   FAB icon moves to the left
-   FAB text label fades in

FAB switches to an extended FAB
