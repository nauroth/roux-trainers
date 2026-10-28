---
source: https://m3.material.io/components/segmented-buttons/specs
title: "Segmented buttons"
captured: 2026-09-14
---

# Segmented buttons

> Segmented buttons help people select options, switch views, or sort elements

star

Note:

Segmented buttons are no longer recommended in the Material 3 expressive update. For those who have updated, use the [connected button group](/m3/pages/button-groups/overview/) instead, which has mostly the same functionality but with an updated visual design.

![Diagram of segmented button indicating 3 parts of its anatomy.](https://lh3.googleusercontent.com/C6AHlXtNzhGMs8gghgCKSba6mwIpYO0fiDnecohrFF3YJraSvBsQL-eXZnCvQJIU9AqRNgtrrvetX0I4UXwI1JyPxy4_rLYmSlkmsr73D_o=s0)

1.  Container
2.  Icon (optional for unselected state) 
3.  Label text

## Tokens and specs

Browse the component elements, attributes, tokens, and their values. [Learn more about design tokens](/m3/pages/design-tokens/overview)

Token

Value

Close

## Color

Color values are implemented through design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) . For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![Diagram of segmented button indicating its color mappings](https://lh3.googleusercontent.com/YDundjWkMlYTm9ZC1RERNdV1PS0i86yel8Qe8OjWM7OEoMRC2frzBJzmqAywQu1BSW2eAP2ITtJk4A5aKZTS8GtaMqkR4uipO8VZMqGvMzAg=s0)

Segmented button color roles used for light and dark schemes:

1.  On surface
2.  Outline
3.  Secondary container
4.  On secondary container

## States

States States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) are visual representations used to communicate the status of a component or interactive element.  [Learn more about interaction states](/m3/pages/interaction-states/overview)

### Unselected

![Side by side view of segmented buttons with 5 unselected states.](https://lh3.googleusercontent.com/-uNJiGxEkqwavKi0rqCcQ6_NTV7HdAQ9_eZ9b40fw_6Ij00V60BU3iLu88EgzvFUO0prwPdmKRKoc6KiuVmTZLUTsStYc8PArd4Y2C6G6ts=w40)

Unselected button states:

1.  Enabled 
2.  Disabled 
3.  Hovered 
4.  Focused 
5.  Pressed

### Selected

![Side by side view of segmented buttons with 4 selected states.](https://lh3.googleusercontent.com/PMYMRAaXu4kiEdyI_9iuWFzh9CDRnmy7VqZ7H34w8Y2jeJy0KUUZekkTUR35ISHPJxnChOXSeLwkG2VHsL8vT3CayNNfqNbNr1ptUwhBbG4=w40)

Selected button states:

1.  Selected 
2.  Hovered on selected
3.  Focused on selected
4.  Pressed on selected

## Measurements

![Diagram indicating layout values, paddings, and target size for segmented buttons](https://lh3.googleusercontent.com/0shX8UYtu_19Pa79pXEjmEc2GW6UOTINXPAw9K9HoaRUWiUqDJsLbSBiPTvL3Nd315qjZapICkjO0AaTXM93Vx9H_0EOocZddx1YsbmzG38_=w40)

1.  Padding and container size 
2.  Target size

| Attribute | Value |
| --- | --- |
| Container width | Dynamic based on labels |
| Segment width | Container width / total segments (Example: 1/3) |
| Height | 40dp |
| Outline width | 1dp |
| Label alignment | Center |
| Left/right padding | Min 12dp |
| Padding between elements | 8dp |
| Target size | 48dp |

### Density

Density can be used in denser UIs where space is limited. Density is only applied to the height. 

![Side by side view of segmented buttons with 4 different density heights](https://lh3.googleusercontent.com/gaOReQpJgFqk-nmLLFHu7hpIFV9BQ6hqnVt8oSC0ZsgpMaeDzc9y-FIcDnkTciniAxMCpPfWD4RMFaEsz33-jSVweXp8mTxgiiL1tPiAATSUWw=w40)

Each step down in density removes 4dp from the height
