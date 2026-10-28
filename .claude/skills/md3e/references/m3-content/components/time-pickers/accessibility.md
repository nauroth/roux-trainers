---
source: https://m3.material.io/components/time-pickers/accessibility
title: "Time pickers"
captured: 2026-09-14
---

# Time pickers

> Time pickers help people select and set a specific time

## Use cases

People should be able to use assistive technology to: 

-   Select or enter hours/minutes, and in some cases, seconds/milliseconds
-   Choose from multiple time formats, including 24-hour clock view and AM/PM
-   Enter time selection manually using input fields

## Interaction & style

Time pickers should allow manual time entry through text input, rather than exclusively through the dial selector. This makes it easier for those using keyboard inputs Inputs are devices that provide interactive control of an app. Common inputs are a mouse, keyboard, and touchpad. rather than touchscreens. 

If a screen is not large enough to display the dial selector, consider displaying the input selector alone. Currently for Android Views, the dial selector is always visible.

The input selector should be accessible from the dial selector via the keyboard icon. This interaction allows multiple input methods and makes the time picker accessible for assistive technology users.

![Time picker with active manual text input for hours.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmd2w3xxn-01.png?alt=media&token=84c832db-808d-448c-a8dd-9d89620c4d1f)

For time selection that doesn’t require a dial view, make a time input picker the default option

### Targets

Targets for dial selectors should be 48x48dp.

![Time picker dial selector specs, selecting hour 7.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmd2w61b9-02.png?alt=media&token=92a4708a-fda3-4fca-b285-153413dd00b4)

Dial selector targets should be 48x48dp

## Keyboard navigation

| Keys | Actions |
| --- | --- |
| **Tab** | Focus lands on (non-disabled) time slot |
| **Space** or **Enter** | Activates the (non-disabled) time slot |

## Labeling elements

If the input text is correctly linked, assistive tech like a screenreader will read the component’s role first, then the UI text.

![Accessibility tags on the time picker's hour input field.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmd2w8i4o-03.png?alt=media&token=da4a19d6-ee3a-4eaf-bce3-256e3d0681b1)

The hour and minute fields have the text input role

The dial selector will read a selection of total hours, such as **Hour 7 of 12**.

![Accessibility tag on the time picker's dial selector.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmd2w9ugu-04.png?alt=media&token=07079a68-62a9-49fd-ab7f-2638edda3047)

A screen reader reads the text label of a dial selector

### Dial selector

| Element | Accessibility label | Role (Wiz and Jetpack Compose) | Role (Android Views) |
| --- | --- | --- | --- |
| Hour input (input picker) | Hour | Text input | \- |
| Minutes input | Minute | Text input | \- |
| AM/PM selection  | AM or PM | Radio button (in list) | Checkbox (in list) |
| Keyboard button | Toggle input picker | Button | Button |
| Cancel button | Cancel | Button | Button |
| OK button | OK | Button | Button |
| Clock dial time selection (dial selector) | {Value} Hours or minutes of {Total} | Button | \- |

### Input selector

| Element | Accessibility label | Role (Wiz and Jetpack Compose) | Role (Android Views) |
| --- | --- | --- | --- |
| Hour input (input picker) | Hour | Text input | \- |
| Minutes input | Minute | Text input | \- |
| Clock button | Toggle dial picker | Button | Button |
| Cancel button | Cancel | Button | Button |
| OK button | OK | Button | Button |
