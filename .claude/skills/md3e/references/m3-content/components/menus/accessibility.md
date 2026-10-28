---
source: https://m3.material.io/components/menus/accessibility
title: "Menus"
captured: 2026-09-14
---

# Menus

> Menus display a list of choices on a temporary surface

## Use cases

People should be able to do the following using assistive technology:

-   Navigate to, open, and close a menu
-   Navigate between and select menu items

## Interaction & style

Menu items need certain cues to clearly show when they're selected: 

-   By default, menu items change shape and color when selected
-   The default color contrast is 3:1 between selected and unselected menu items
-   It's recommended to include another visual cue, like a checkmark

![A state dropdown menu with the selected item Alaska highlighted in a vibrant color, with a checkmark icon.](https://lh3.googleusercontent.com/sQHnduUnTdZmXVul2Np64bpBWRigAhD_49ObKd4Ks5y6nO0DHiY9tADgizMA9vOTkfNS_w-InRysGae7hxIwcyap_iuISouSE2W03bRdQWM=s0)

Use multiple visual cues like color, shape, and icons to show that an item is selected

## Flexibility & slots

Use caution when adding slots to menus:

-   Make sure the menu remains accessible
-   Elements must follow the rules and interaction patterns of the menu component
-   Keep the same menu item padding
-   Targets should be 48x48dp or larger

Don't add buttons, switches, or other direct actions into the menu item. Nested elements should only perform one action. Adding multiple actions can break keyboard navigation and screen reader functionality.

[More on slots in menus](/m3/pages/menus/guidelines#8a1684bb-99a5-4a73-91a0-068d0b406127)

![1 diagram and 1 menu showing icons in each item’s leading slot.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhkskcq8-02-caution.png?alt=media&token=f56e6e61-6119-41d8-920c-26f6a7cdafff)

exclamation Caution

Reserve the use of slots for use cases that maintain the menu’s accessibility and functionality

## Focus

**Initial focus**

When a menu opens, focus should be placed on the first menu item. This allows people using a keyboard or other assistive technologies to begin navigating the menu immediately.

**Exiting a menu**

People expect to exit a menu by:

-   Selecting an option
-   Tapping **Escape** or outside of the menu 
-   Using the system back button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview)

Where focus is placed after closing the menu depends on the app.

![4 common keyboard navigation methods for menus on Android and web.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhkewf5t-03.png?alt=media&token=374bb47a-9f22-409d-b8e5-f427a1f35c00)

Keyboard navigation on Android and web:

1.  **Tab** to select a menu item
2.  **Space** or **Enter** to open a menu
3.  **Space** or **Enter** to select a menu item
4.  **Escape** to close a menu

## Keyboard navigation

| **Keys** | **Actions** |
| --- | --- |
| **Tab** | Focus lands on menu |
| **Space** or **Enter** | For closed menus: Opens menu or submenuFor open menus: Selects a menu item |
| **Up** and **Down** arrows | For closed menus: Opens menu For open menus: Moves focus to the next item |
| **Left** and **Right** arrows | Opens or closes a submenu |
| **Letters** | Focus moves to the next menu item starting with letter |
| **Escape** | Closes menu |

## Interactability

Disabled A disabled state communicates a non-interactive component or element. [More on disabled state](/m3/pages/interaction-states/applying-states#4aff9c51-d20f-4580-a510-862d2e25e931) menu items can receive focus but aren't selectable.

Dividers and gaps can't receive focus.

![A disabled menu item “Share” is in focus.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhkkp9r3-05-do.png?alt=media&token=4dda61ae-eb7f-45b1-b02f-d88aed80dd28)

check Do

Disabled menu items can receive focus

![A divider with focus.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhkkqmt3-05-don't.png?alt=media&token=f3178013-9a18-4ac1-9d98-c21a2876ea6d)

close Don’t

A divider or gap can’t receive focus

## Labeling elements

Accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview/principles) labels are used with assistive technology devices like screen readers. 

The accessibility label should be the same as the menu item text.

The role is [dependent on platform](/m3/pages/menus/accessibility#9c562e2c-da3a-4212-a2e3-ac91ba450b65).

![A “Preview” menu item has an accessibility label of ”preview”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhkl2sea-07.png?alt=media&token=9603d6f5-030f-41e2-84e6-2af9fd0deee5)

The menu item’s accessibility label aligns with the UI text

| **Element** | **A11y label** | **Role (Web)** | **Role (Android Views)** | **Role (Jetpack Compose)** |
| --- | --- | --- | --- | --- |
| Menu item text | Preview | Menu item | Generic actionable element | Generic actionable element  |

For menu items with text and an icon, the icon’s accessibility label should be marked as **decorative** to avoid redundant verbalizations.

![A menu item icon of an eye next to the word “preview” has a note of “Decorative.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhkkynea-08.png?alt=media&token=3adbfb1f-b0e8-4cd9-8d17-918d2830ddac)

For menu items with text and an icon, the icon’s accessibility label is **decorative**
