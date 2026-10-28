---
source: https://m3.material.io/components/menus/guidelines
title: "Menus"
captured: 2026-09-14
---

# Menus

> Menus display a list of choices on a temporary surface

A menu in the **vibrant** color style is more expressive, and one with **standard** colors is more utilitarian

## Usage

Use a menu to show a temporary set of actions. To show actions on screen at all times, use a toolbar Toolbars display frequently used actions relevant to the current page. [More on toolbars](/m3/pages/toolbars/overview) instead. 

A menu takes up less space than a set of radio buttons Radio buttons let people select one option from a set of options. [More on radio buttons](/m3/pages/radio-button/overview) or chips Chips help people enter information, make selections, filter content, or trigger actions. [More on chips](/m3/pages/chips/overview) . 

### Color options

Menus have two color mappings:

-   Standard: Surface-based, lower visual emphasis

-   Vibrant: Tertiary-based, higher visual emphasis

Vibrant menus are more prominent, and should be used sparingly.

![Menu shows item “Line spacing” opening a submenu. In the second menu, “Custom 1.2” is selected with vibrant color.](https://lh3.googleusercontent.com/MfCxNMg5F-PVblTlXd6HMYiZd-Lw5KIY6xwvm7F0Pn_sCm-wiLtOMX8xTxOztwb_4xY__6nSEFl-E1txwgI6GJ2awsvnRaTuMiK0t15jyUQ=s0)

On web, menus can open submenus

### Opening menus

Menus temporarily appear in front of all other permanent UI elements.

A menu should open when a person:

-   Selects an element, such as an icon, button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) , or text field

-   Performs a specific action to trigger the menu, like right-click or press-and-hold

Use menus in situations that need extra actions, like: 

-   Overflow menus

-   Text field dropdown menus

-   Select menus

-   Context menus

![A grouped menu with Undo, Redo, Cut, Copy, and Paste options appear over highlighted text in an ebook.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhlkhju5-04.png?alt=media&token=ab3df2c7-0424-482c-ad21-d5cf945ca16b)

Menus appear in front of all other UI elements

### Menu groups

Vertical menu items can be grouped by adding a divider or small gap. Use groups to bundle similar actions together.  

[Gaps and dividers guidelines](/m3/pages/menus/guidelines#d75ac70c-9122-4b4c-bd60-b856bc66c9bc)

![2 vertical menus: a standard menu with no gap and a grouped menu with 1 gap.](https://lh3.googleusercontent.com/6e3Jr7pvYamV89OCHR395lTYFRLLVJsUseXpeuESUaJGC8qKEa1geMsIaYbWGi2O0l2OjBKn5rznan6ZXFBXTCAtf6e3IrBCNPyif9t2Hv5G=w40)![2 vertical menus: a standard menu with no gap and a grouped menu with 1 gap.](https://lh3.googleusercontent.com/6e3Jr7pvYamV89OCHR395lTYFRLLVJsUseXpeuESUaJGC8qKEa1geMsIaYbWGi2O0l2OjBKn5rznan6ZXFBXTCAtf6e3IrBCNPyif9t2Hv5G=s0)

Menu items can be grouped to be more scannable:

1.  Standard vertical menu
2.  Grouped vertical menu

### Context menus

Context menus provide a list of additional actions a person can take on an item. A secondary click, like a right-click on a mouse or a two-finger tap on a trackpad, opens a context menu. 

![A context menu pops up from a newspaper link. The menu items are: Open in new window, Save link as, Copy address, and Inspect.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhlkwxab-06.png?alt=media&token=f570d7bb-c80a-43dd-8dd0-9ba78258920f)

A context menu appears when right clicking with a mouse or trackpad. It can reveal key actions related to the associated content.

## Anatomy

![Diagram outlining 11 elements of a menu’s anatomy.](https://lh3.googleusercontent.com/23G6to4Ij-HsQF2iAQsFg737t4f1InY3ANqqt-NYDrCj4ajmDFHSL7o3BTM7CHvUGdR8bTgcGg-OWPY5sp5qepK-LfRRWNZg8b1gwuq3gjU=w40)

1.  Menu item 
2.  Leading icon (optional)
3.  Menu item text
4.  Trailing icon (optional)
5.  Badge (optional)
6.  Trailing text (optional)
7.  Container
8.  Supporting text (optional)
9.  Label text (optional)
10.  Gap (optional)
11.  Divider (optional)

### Menu items

Menu items can include label text, leading icons, trailing icons, and keyboard commands. 

When a menu item can only be used under specific conditions, it should appear disabled A disabled state communicates a non-interactive component or element. [More on disabled state](/m3/pages/interaction-states/applying-states#4aff9c51-d20f-4580-a510-862d2e25e931) rather than be removed.

![Menu shows 1 item that’s  disabled, “Redo”. The text color of the disabled item is lighter than the active items.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhll6qil-08.png?alt=media&token=ae8d6aaa-5646-493e-8c90-4b21457ff03f)

The **Redo** action is disabled when that action isn’t available

### Gaps & dividers (optional)

Gaps and dividers can be used to separate and group menu items.

**Gaps**

Use a gap to visually divide menu items into distinct groups. Gaps are more expressive than dividers and make the relationship between items clear.

-   Avoid changing the size of the gap
-   Limit the number of gaps in a menu to one or two
-   Don’t use gaps in scrollable menus

![2 vertical menus with 5 items. A gap separates items into a group of 3 and group of 2.](https://lh3.googleusercontent.com/nziJZIcye1oWsr-CrUorKQfgSBAvZMJQWCIaL-tKUJQA2oDY0EbExVpZu3EAaZSC8iljeK6nDpywWbMkK3mSwPrPm7r6JAVwtzHODDztJ9LdXw=w40)

Gaps separate menu items using expressive shapes

star

Note:

Gaps are not currently available on web

**Dividers** 

Dividers create a more subtle separation between items. Use a divider for:

-   Scrollable menus
-   Text fields with a dropdown menu, where a grouped treatment isn’t appropriate

On web, use a divider to separate menu items. 

![A menu on a web interface with items separated by a divider line.](https://lh3.googleusercontent.com/cguRYPI0KSnDbH8G-NsW_ChXLpqPsALNJLlbJiTLKfq99BgdHykJsf40GtSSBeubhxXoiDV74Gjhy3LlmJV8QlE3ZYHAteUNjkNheqp0V2h-=w40)

Dividers separate menu items in baseline menus and on web

## Flexibility & slots

Menus have custom slots that support more flexible item layouts.

When creating a complicated menu, think of the menu item as a container with a swappable slot.

Slots work best with simple content such as:

-   Images
-   Progress indicators
-   Color swatches

![A menu showing an undefined slot that could be used for a different element, such as an image.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhllndkg-11.png?alt=media&token=94c23245-a894-465a-a657-4cc1ec9e4e59)

Slots can appear anywhere in a menu

**Slot accessibility**

Use caution when adding slots to menus:

-   Make sure the menu remains accessible
-   Elements must follow the rules and interaction patterns of the menu component
-   Keep the same menu item padding
-   Targets should be 48x48dp or larger

Don't add buttons, switches, or other direct actions into the menu item. Nested elements should only perform one action. Adding multiple actions can break keyboard navigation and screen reader functionality.

[More on required accessibility guidelines](/m3/pages/menus/accessibility/)

![1 diagram and 1 menu showing icons in each item’s leading slot.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhllqs3p-12-alt.png?alt=media&token=10ba86ca-a5f2-4c70-8f5d-29f4c5a33dfa)

exclamation CautionReserve the use of slots for use cases that maintain the menu’s accessibility and functionality 

## Placement

A menu is positioned relative to the window edge. It typically appears below, next to, or in front of the element that generates it.

If a menu is in a position to be cut off, it should automatically reposition to appear to the left, right, or above the element that generates it.

![6 abstract shapes showing how a menu can extend from the edge of the screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhllv77j-13.png?alt=media&token=284a2b26-be83-4564-845a-e8e8f55b168e)

Menus can appear around or in front of the element that opened them

### Submenus

Submenus should open next to the parent menu item without overlapping it.

Submenus are best used on large screens where there's space. [See adaptive guidance](/m3/pages/menus/guidelines#e588ae16-7a76-4bf9-8532-8d931a13ca35) for alternatives on mobile.  

![A submenu opens to the right of its parent menu item, and doesn’t cover it. A selected submenu item includes a checkmark and vibrant highlight.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhlm1f1q-15.png?alt=media&token=57bbf425-3173-4f90-b96c-93de307cf824)

Position submenus to the side of the parent item

star

Note:

Submenus are not currently available on Jetpack Compose

## Adaptive design

### Compact breakpoints

Consider adapting menus into bottom sheets Bottom sheets show secondary content anchored to the bottom of the screen. [More on bottom sheets](/m3/pages/bottom-sheets/overview) on small screens. They have more space to display additional items and longer labels. 

![A bottom sheet shows longer labels and improved readability on a compact window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhlm7yx1-16.png?alt=media&token=efd00c45-20e0-4bdd-936c-3a2383306983)

A bottom sheet can replace a menu on smaller screens

### Other breakpoints

On medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) and expanded Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) windows, menus are most effective as they appear in context with the content. On larger screens, menus can also display more items, and can use submenus to organize complex sets of options.

![A menu with vibrant color on a mid-size screen, with the same elements as a bottom sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhlmbxni-17.png?alt=media&token=e4e83032-18f6-4c94-bdb8-62007e8524d3)

On large screens, a menu is often more appropriate than a bottom sheet

## Behavior

### Appearing

A menu can appear when a person interacts with an element on the page, like a button, text field, filter chip, or highlighted text.

A menu’s position on screen affects where and how it appears. If opened at the top of the screen, it expands downwards to avoid being cropped.

Menus at different positions on a screen open in different directions, adapting to the available space

A menu can open from a split button

A menu can appear in context, like next to highlighted text or a selected image

A menu can open from a text field

A menu can open from a filter chip

**Motion**

Menus use an enter and exit transition. This animation creates a relationship between the menu and the element that generates it.

When a menu expands, the trigger element becomes pressed. When an item is selected, a ripple appears on touch.

A menu expands when opened, and has a ripple when an item is selected

In dense products, such as on desktop, menus can open instantly to reduce motion.

Desktop menus can open instantly

### Filtering

A menu can include a text field to filter options. This pattern is also known as autocomplete. 

As someone types, the list of menu options filters to show relevant results. This helps people quickly find the right option from a long list. 

Menu items ease into their new position as the menu is filtered.

As a person types in the text field, the menu options filter to match the input

### Scrolling

Menus can scroll when all menu items can’t display at once. In this state, menus show a persistent scrollbar.

Don’t use gaps if a menu scrolls; this is currently unsupported.

When content is scrollable, menus display scrollbars

### Selecting

When a menu is opened, the corresponding button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) or icon button Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview) should remain the same visually, with the addition of a pressed state.

This should happen even when opening from a keyboard shortcut.

![The overflow icon remains the same, even after the menu is opened.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhlohkz8-28.png?alt=media&token=90813acd-a921-473b-8f98-cfc715b51d93)

Tapping the icon triggers a menu. Choosing a menu option doesn’t change the icon generating the menu.

### Single- and multi-select menus

Menus can allow either single-select or multi-select actions:

-   **Single-select** menus can have one item selected at a time. When a new item is selected, the previously selected item is automatically unselected.
-   **Multi-select** menus can have many selected items. They stay open until the person dismisses the menu.

[More on selection accessibility requirements](/m3/pages/menus/accessibility#149778c9-eb42-4a56-8a0b-9932181ac2cd)

![1 menu for dietary options shows a single selection, Vegan. Another menu shows Vegan and Nut-free selections at the same time. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhkpbo8d-30.png?alt=media&token=a9f4da83-0329-4222-b296-68c399154082)

Menus can be single- or multi-select

## Focus

When a menu has multiple submenus, focus follows the current hovered or focused submenu. 

**Shape morphing**

As a person moves from one submenu to the next, the corners of the focused submenu become more rounded, while the unfocused submenu becomes less rounded. This adds a dynamic quality to menu interactions.

On a custom menu, the corner shape changes to indicate focus as the cursor moves across submenus

## Density

On web only, density levels control the spacing between elements. Increasing density decreases the top and bottom padding. [More on layout density](/m3/pages/understanding-layout/density)

![4 menus becoming increasingly dense and compressed.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmhloonkj-32.png?alt=media&token=f60473a4-1b6d-4913-ba1e-002ea51339a2)

Density of menus from 0 to -3
