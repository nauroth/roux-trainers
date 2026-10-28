---
source: https://m3.material.io/components/checkbox/guidelines
title: "Checkbox"
captured: 2026-09-14
---

# Checkbox

![A list of burger additions represented with checkboxes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0yt1n6-1.png?alt=media&token=e687e377-f0e9-4a8c-8323-97b6f3b03b2d)

Checkboxes in a list of items

## Usage

Use checkboxes to: 

-   Select one or more options from a list
-   Present a list containing sub-selections
-   Turn an item on or off in a desktop environment
-   Visually group similar options together

![List of 80's songs indicating choice through checkbox selection.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0vnl39-2.png?alt=media&token=a6b2f259-cb48-4e43-9699-e20e94c0d737)

Checkboxes select multiple, related options

Checkboxes should be used instead of switches Switches toggle the state of an item on or off. [More on switches](/m3/pages/switch/overview) if multiple, related options can be selected from a list. Checkboxes visually group similar items effectively and take up less space than switches.

![List indicating choice with checkbox selection.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0vok05-3_do.png?alt=media&token=6dd5d04d-babd-45cf-b7f8-a5e95ab275ff)

check Do

Checkboxes let users select one or more options from a list. A parent checkbox allows for easy selection or deselection of all items.

![A list with multiple switches selected.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0vwf9n-4_dont.png?alt=media&token=049701a4-cc33-442f-8e4e-db9c79aa40fa)

close Don’t

If a list consists of multiple options, don't use switches. Instead, use checkboxes. Checkboxes imply the items are related, and take up less visual space.

### Alternate selection controls

Checkboxes, radio buttons Radio buttons let people select one option from a set of options. [More on radio buttons](/m3/pages/radio-button/overview) , and switches Switches toggle the state of an item on or off. [More on switches](/m3/pages/switch/overview) are the three main selection controls. They all help people make choices, like selecting options or switching settings on or off.

-   Use checkboxes to select multiple related options in a list.

-   Use radio buttons to select a single option in a list.

-   Use switches to select standalone or more verbose options in a list, like settings.

![Diagram of 2 radio buttons, one selected and one unselected.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmcypcjyf-5.png?alt=media&token=e0bb850c-365e-424b-aaa7-703285e8a6ea)

Radio buttons

![Diagram of 2 switches, one selected and one unselected.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0vwj88-6.png?alt=media&token=9323d5db-9e97-4df0-a4b0-2cf2136cf1d2)

Switches

## Anatomy

![Diagram of checkbox indicating the 2 parts of its anatomy.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmcypfx6t-7.png?alt=media&token=5f2b1048-7e0f-45f5-8f9b-3f09fab4e910)

1\. Container

2\. Icon

## Responsive layout

In expanded breakpoints Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , placing checkboxes within a contained region such as a side sheet Side sheets show secondary content anchored to the side of the screen. [More on side sheets](/m3/pages/side-sheets/overview) can help group related controls and available actions.

![Desktop screen showing music albums and a side sheet containing checkboxes for filtering music genres.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0vp83b-8.png?alt=media&token=ccabbf13-9b61-4bec-938e-708c502111b0)

A side sheet can group related controls on larger screens

## Behavior

Multiple checkboxes in a list can be selected.

Selecting multiple items in a list using checkboxes

Checkboxes can have a parent-child relationship with other checkboxes.

-   When the parent checkbox is checked, all child checkboxes are checked
-   If a parent checkbox is unchecked, all child checkboxes are unchecked
-   If some, but not all, child checkboxes are checked, the parent checkbox becomes an indeterminate checkbox. Checking an indeterminate checkbox checks all child items.

Use a parent checkbox to make it more efficient to select many items

When selected, a checkbox clearly and instantly communicates its selected state.

If used to turn something on or off, the action should be immediately executed.

Turning an item on or off using a checkbox
