---
source: https://m3.material.io/components/button-groups/guidelines
title: "Button groups"
captured: 2026-09-14
---

# Button groups

> Button groups organize buttons and add interactions between them

Standard button groups add interaction between adjacent buttons

## Usage

There are two variants of button groups: **standard** and **connected**. 

**Standard button groups** add interaction between adjacent buttons so they respond to each other. When a button in a standard group is selected:

-   The selected button changes shape and width

-   A selected toggle button also changes color

-   Adjacent buttons move and temporarily change width

![A welcome screen with a colorful standard button group. 2 pink icon buttons are narrow, and 1 purple button is labelled “Get started".](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0di4v84-1.png?alt=media&token=7d455507-7409-4e76-96b8-78173e2a9533)

Button groups add more expression to a product

Mix and match the different button variants, widths, and colors to emphasize what’s important, and to visually group related buttons.

By default, all buttons in a standard group should be the same size (XS to XL) and shape (round or square).

-   Only use multiple sizes in a group for hero moments

-   Avoid mixing sizes frequently

-   Only use a different shape in a group when a button is selected, or to add meaning or contrast

![A standard button group with 3 buttons of different colors but the same square shape.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0diaau3-same%20shapes.png?alt=media&token=816c3216-da8f-40f8-8de5-6fa595fca914)

check Do

Use the same shapes for buttons in a group, but change other properties like width and color

![A standard button group with 3 buttons, including a round primary button. A square button is used to add items.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dibcom-different%20shapes.png?alt=media&token=15528a66-dde7-4db9-bd01-29fc012f8257)

exclamation Caution

Reserve shape differences in button groups for key interactions

**Connected button groups** help people select options, switch views, or sort elements in a page. 

They behave similarly to standard groups, except they don’t affect adjacent buttons.

Connected groups should replace the  baseline segmented button Segmented buttons help people select options, switch views, or sort elements. Note: They're deprecated in the expressive update. Use a nav rail instead. [More on segmented buttons](/m3/pages/segmented-buttons/overview) , which is no longer recommended.

Connected button groups can be used to toggle between similar actions

Use connected button groups when the button content is related, and buttons can be selected.

![A shopping app with an option to choose the volume of an item using a connected button group.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dijxcq-16.png?alt=media&token=21003592-8d64-4c4f-a6b8-dd87c18ee5b5)

Closely related actions work well in a connected button group

Connected button groups should be used for single or multi-select patterns that use toggle buttons. 

Avoid using a connected group when none of the buttons can be toggled.

![2 filters using connected button groups of 2 and 4 items. The group with 4 items has multiple buttons selected.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0diog82-18.png?alt=media&token=4dfe1ecc-7909-4b3f-acea-4d079824514d)

Use the connected button group with single or multi-select patterns

### Color

Avoid mixing color styles in connected button groups; it can make selection and emphasis unclear.

![Selecting a button in a connected button group labelled “My files,” “Shared,” and “Computers.”](https://lh3.googleusercontent.com/eUF5jkygvsUgcQm3ey4C4f3n04x79AaJvSz9AmeLk9FBserFzb7VbHkTo316YyrAMQAv62NxJdQy0p7LWIONggFliGMGnjLUbSuFjulASYcx=w40)![Selecting a button in a connected button group labelled “My files,” “Shared,” and “Computers.”](https://lh3.googleusercontent.com/eUF5jkygvsUgcQm3ey4C4f3n04x79AaJvSz9AmeLk9FBserFzb7VbHkTo316YyrAMQAv62NxJdQy0p7LWIONggFliGMGnjLUbSuFjulASYcx=s0)

close Don’t

Don’t mix color styles in connected button groups

## Anatomy

![1 element of a button group.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4sznpeh-5.png?alt=media&token=89308e1d-b40f-438e-a738-144e5a1e5f91)

1.  Container

### Container

The standard button group container has padding between buttons so they can animate width and shape without disrupting the product layout. 

The standard button group hugs the width of the buttons inside.

![The container hugs the buttons. Inner padding is highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0diztnf-6.png?alt=media&token=28a3ff83-8514-4da3-89e5-3b58ad18da74)

Button groups can animate without affecting their surroundings

The connected button group should span the width of the page or surface it’s placed on, increasing the button widths inside. 

In larger windows, consider adding a maximum width to the connected group to avoid it growing too wide.

![2 connected button groups, with 2 and 4 buttons respectively, spanning the same width on a screen, with margins from the edge.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dj3wcm-18-1.png?alt=media&token=5a3129d6-827b-4c8c-afe0-9a65aab4c44e)

Connected button groups increase the widths of each button inside and expand to their container width

## Adaptive design

Adaptive design allows an interface to respond or change based on context, such as the user, device, and usage. [More on adaptive design](/m3/pages/layout-overview/adaptive-design/)

### Resizing

Button groups should move through layouts together in a single line. They shouldn’t wrap to a second line. Multiple button groups can be stacked to keep items close together. However, button groups don’t interact vertically.

Button groups and individual buttons can be set to **fixed** or **flexible** resizing:

-   **Fixed**: Manually define the button width (narrow to wide), size (XS to XL), or padding at each breakpoint.

-   **Flexible**: Automatically increase or decrease the width of buttons and the button group. Button groups grow until all flexible buttons are at their largest width.

If adjusting button width manually, avoid stretching icon buttons beyond the wide setting.

![Two button groups, each with distinct width, size, and padding adjusted to fit two different window sizes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0djrht4-1.png?alt=media&token=07fada8f-eb2c-4d1a-a7f9-6e3bc8568a6e)

Buttons can have width, size, and padding manually adjusted to fit different breakpoints

In compact windows Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) , consider using smaller, narrower buttons so all buttons in the button group can fit. In large Window widths 1200dp to 1599dp, such as desktop. [More on large breakpoints](/m3/pages/breakpoints/large-extra-large) and extra large Window widths 1600dp and larger, such as ultra-wide monitors. [More on extra-large breakpoints](/m3/pages/breakpoints/large-extra-large) windows, consider using larger, wider buttons to better fill in the available space.

Flexible buttons or button groups will automatically adjust width.

Set the size, shape, and padding to manually adjust the button group at different breakpoints

When scaling to larger breakpoints, make sure that the visual hierarchy of each button is preserved using qualities like color and size. 

For example, the primary action should remain the largest, widest, or most visually prominent button at all breakpoints.

Maintain hierarchy across layouts and devices

### Presentation

Buttons at the trailing edge of the button group can be customized to collapse into an overflow menu at smaller breakpoints, and become visible again at larger sizes. Place the overflow menu at the trailing end of the group.

Buttons outside the group aren’t affected by button group behavior.

Buttons should become hidden in an overflow menu or visible again, depending on screen size. Buttons outside the button group, like the **end call** button, will not be affected.

## Behavior

### Pressed

When a button is pressed, it changes width and shape.

In a standard button group, pressing a button also affects the width of adjacent buttons.

In a connected button group, only the shape of the pressed button changes.

Pressing buttons in a standard group changes the width of adjacent buttons

### Selected

A selected button should change shape from round to square, or square to round.

Selected buttons should change shape
