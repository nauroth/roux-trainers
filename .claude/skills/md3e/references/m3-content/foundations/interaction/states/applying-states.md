---
source: https://m3.material.io/foundations/interaction/states/applying-states
title: "States"
captured: 2026-09-14
---

# States

> States show the interaction status of a component or UI element

## Enabled

An enabled state communicates an interactive component or element. Enabled states use the default styling for each interactive component.

![Enabled state of 4 components.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2qpw4a-1.png?alt=media&token=0bec13e6-8bd8-4dc3-9439-6e9d9ff68b4e)

Enabled states for:

1.  Button
2.  FAB
3.  Switch
4.  Text field

## Disabled

A disabled state communicates when a component or element isn’t interactive. This state is visually communicated through color changes and reduced elevation.

**Disabled states don't need to meet Material's contrast requirements.**

![Low opacity solitary button labeled disabled, indicates a  disabled/inoperable state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2qrzig-2.png?alt=media&token=fc37d2ef-40ff-4d49-9c55-d1c580dae532)

Disabled button

Disabled states **are** inherited by action, selection, and input components:

-   Buttons
-   Cards
-   Checkboxes
-   Chips
-   List items
-   Radio buttons
-   Switches
-   Text fields

![Inoperable state of 4 components.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2qtg0r-3.png?alt=media&token=469e37f6-f896-42c0-8d8a-2024ad74a6ee)

Disabled states for:

1.  Checkbox
2.  Icon button
3.  Radio button
4.  Segmented button

Disabled states **aren't** inherited by communication, containment, navigation, and some actions components: 

-   App bars
-   Badges
-   Dialogs
-   Floating action buttons (FABs)
-   Menus
-   Navigation bar, drawer, and rail
-   Sheets
-   Tabs
-   Tooltips

![Screen erroneously showing edit FAB in inoperable state, though the edit function is unavailable.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2quyuj-4.png?alt=media&token=3366711f-aafa-4b7e-ab99-1a0f6c67378e)

close Don’t

If the action represented in the FAB is unavailable, the FAB shouldn't appear

### Behavior

Disabled components can’t be focused, dragged, or pressed, and they don’t change state when tapped or hovered over.

A disabled button doesn’t inherit hover or other state layers

There can be any number of disabled states in a layout.

![Disabled components on a screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flyml0ix7-6.png?alt=media&token=c6c1365d-7e53-471d-a1e4-8babbf37b298)

1.  Disabled redo icon button
2.  Disabled checklist icon button

## Hover

Hover states are initiated by the user pausing over an interactive element using a cursor.

The lower-emphasis surface overlay for hover states can be applied to the entire component, elements within a component, or as a circular shape over part of the component.

![Cursor moves toward button which reads “enabled” and when the cursor touches the button text changes to “hovered.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2vwc74-7.png?alt=media&token=728c0b8a-43b5-49a2-8640-a0c368d2e966)

Hovered button

Hover states **are** inherited by action, selection, and input components:

-   Buttons
-   Cards
-   Checkbox
-   Chips
-   Date and time pickers
-   List items
-   Slider
-   Switch
-   Text fields

![Hover state of 4 components.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2vxl8i-8.png?alt=media&token=4f810fc7-a579-445c-a178-ebc7a19caeb2)

Hovered states for:

1.  FAB
2.  Icon button
3.  Chip
4.  Segmented buttons

Hover states **aren’t** inherited by communication, containment, or navigation components: 

-   App bars
-   Badges
-   Dialogs
-   Menus
-   Navigation bar, drawer, and rail
-   Sheets
-   Tabs

![Mobile screen with the whole  app bar wrongly in hover state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2vymng-9.png?alt=media&token=5cf648b1-7239-43fd-a65f-9198fd11f289)

close Don’t

The individual components that are actionable within the app bar inherit hover states, not the whole app bar

### Behavior

Hover states are initiated by the user pausing over an interactive element using a cursor.

Hover states appear and disappear using a low-emphasis animated fade

Hover states can be combined with focused, activated, selected, or pressed states.

A selected filter chip in both selected and hover states

There can only be one hover state at a time in a layout.

Hover state can only be on one element at a time based on cursor position

## Focused

A focused state communicates when a user has highlighted an element using a keyboard or voice. Focus states apply to all interactive components.

The higher-emphasis surface overlay for focused states can be applied to the entire component, elements within a component, or as a circular shape over part of the component.

![A button in focused state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wa79s-13.png?alt=media&token=7bf4ddd9-516f-4ab7-b20e-e19ab3a26cdd)

Focused button

Focus states **are** inherited by action, selection, and input components:

-   Buttons
-   Cards
-   Checkbox
-   Chips
-   Date and time pickers
-   List items
-   Selection controls
-   Text fields

![Focus state of 4 components.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wb5y9-14.png?alt=media&token=292090a2-1e6f-4e36-84ba-5ebafeb0e3af)

Focused states for:

1.  FAB
2.  Icon button
3.  Chip
4.  Segmented buttons

Focus states **aren’t** inherited by most communication, containment, or navigation components:

-   App bars
-   Badges
-   Banner
-   Card
-   Dialogs
-   Navigation bar, drawer, and rail
-   Sheets

![Mobile screen showing  entire app bar in focus state, which is an error.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wctgk-15.png?alt=media&token=871fc6c8-7cf7-48d9-aed1-4f876be97c67)

close Don’t

The individual components that are actionable within the app bar inherit focus states, not the whole app bar

### Keyboard focus indicator

Many people use the **Tab** key or other shortcut to navigate the interactive elements of a web page, like links, buttons, and chips.

When an element is tabbed to, it appears in its focused state with a ring-like **keyboard focus indicator**. This indicator helps web users know where they are on the page.

While focused, an element can be acted on with the keyboard.

![A single filled button in focused state, displaying the keyboard focus indicator.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wdmfh-16.png?alt=media&token=68221847-c082-4963-8058-4e75a9c38465)

Keyboard focus indicator for a filled button

### Behavior

Focus states are initiated by the user by pressing the **Tab** key on the keyboard (or equivalent).

Focus states can be represented in combination with hover, activated, or selected states.

![A single filter chip simultaneously in selected state and focus state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wf3qd-17.png?alt=media&token=67048848-6bba-4299-9dfd-3b5fe3c753ec)

A selected filter chip in both selected and focused states

There can only be one focus state at a time in a layout.

A focus state applied to one card at a time

## Pressed

A pressed state communicates a user-initiated tap or click via cursor, keyboard, or voice input. This state applies to all interactive components.

Pressed states trigger a change in composition and should be high-emphasis.

A ripple overlay signifies a pressed state. It can be applied to an entire component or elements within a component, or as a circular shape over part of the component.

![Button using a ripple overlay to signify it’s in a pressed state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wj03t-25.png?alt=media&token=776a2614-2e05-4545-96d3-a6bc53947375)

Pressed button

Some components, such as buttons or cards, can inherit elevation to signify a pressed state.

![Button using elevation to signify it’s in a pressed state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wk46q-26.png?alt=media&token=b1e55cc3-9ee8-44b0-8722-0a4a23636069)

Pressed button with elevation

Pressed states **are** inherited by action, selection, and some containment components: 

-   Buttons
-   Cards
-   Checkbox
-   Chips
-   List items
-   Text fields

![Four components shown in pressed state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wl23l-27.png?alt=media&token=b2dff0e0-1bf2-47fb-a689-040b778ffcf1)

Pressed states for:

1.  FAB
2.  Icon button
3.  Chip
4.  Segmented button

Pressed states **aren’t** inherited by communication, navigation, or some containment components: 

-   App bars
-   Badges
-   Bottom navigation
-   Dialogs
-   Menus
-   Sheets
-   Tabs

![Mobile screen showing  entire app bar in pressed state is an error.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wo5k7-28.png?alt=media&token=93cc4266-18d2-497d-a0d9-55a73988142f)

close Don’t

The individual components that are actionable within the app bar inherit pressed states, not the whole app bar

### Behavior

Pressed states are initiated by user keyboard or voice input on an interactive element.

Activated states appear in user-initiated order

Pressed states can be combined with hovered, focused, activated, or selected states.

Activated states can be represented in combination with hover and focus

There may only be a single pressed state at a time in a layout.

A pressed state applied to one card at a time

## Dragged

A dragged state occurs when a user presses and moves an element or component. Dragged states should be low emphasis, to avoid distracting users from their task.

Dragged states use a lower emphasis overlay. It can be applied to the entire component or to elements within a component.

Some components, such as list items, chips, or cards, can inherit elevation to signify a dragged state.

![List item shown in dragged state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wu37e-32.png?alt=media&token=fefabf35-2cb5-4fdd-b0bb-4cee4442d148)

Dragged list item

Dragged states **are** inherited by some containment and selection components: 

-   Cards
-   Chips
-   List items
-   Sliders

![A chip and a card both shown in dragged state.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2wv77r-33.png?alt=media&token=a3ace83a-7173-47cb-9fc2-60646fe0dd47)

Dragged states for:

1.  Chip
2.  Card

Dragged states **aren’t** inherited by action, communication, navigation, or some containment components: 

-   App bars
-   Badges
-   Buttons
-   Dialogs
-   Menus
-   Navigation bar, drawer, and rail

![Mobile screen with app bar in dragged state is an error.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2ww2lq-34.png?alt=media&token=33a7d3f2-493d-4137-a038-289ddac5488c)

close Don’t

Components like an app bar that require consistent placement should not inherit dragged states

### Behavior

Dragged states are initiated when users touch and hold elements, using an input method such as a tap or click.

A list item in a dragged state

There may only be a single dragged state at a time within a layout.

Dragged state applied to one card at a time
