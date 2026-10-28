---
source: https://m3.material.io/components/toolbars/accessibility
title: "Toolbars"
captured: 2026-09-14
---

# Toolbars

> Toolbars display frequently used actions relevant to the current page

## Use cases

People should be able to the following with assistive technology:

-   Navigate and activate any actions in the toolbar

-   Select a destination from a menu

-   Activate a back button

-   Maintain access to toolbar controls when the content is scrolled or collapsed

## Interaction & style

The toolbar has no interactions by default. All interactions are with the elements placed inside. 

**Touch**

-   When tapping on an icon button in the toolbar, a touch ripple appears, indicating interaction feedback.

Touch: Tap

**Cursor**

-   When hovered, the hover state provides a visual cue to the user that the element is interactive. 
-   When clicked (in both active and inactive states), a ripple appears, showing the user feedback.

Cursor: Hover, Click

### Initial focus

Focus lands on the first interactive element. 

Use **Tab** to navigate through all other actions.

![Navigating the top app bar using arrow or tab on a keyboard.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0anu1gy-3.png?alt=media&token=6ce1a9cb-f8d9-4e2e-a0b5-5c3d56691c9a)

Use **Tab** to navigate through interactive elements

![Activating actions in the top app bar using space or enter on a keyboard.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0anv4t7-4.png?alt=media&token=83f51ce3-ac26-4425-a6ff-a97026cb1e74)

Use **Space** or **Enter** to activate actions

## Keyboard navigation

<table style="width:100%"><tbody><tr><th>Keys</th><td>Actions</td></tr><tr><th><span style="white-space:pre-wrap" id="isPasted">Tab or Arrows</span></th><td><span style="white-space:pre-wrap" id="isPasted">Navigate between interactive elements</span></td></tr><tr><th><span style="white-space:pre-wrap" id="isPasted">Space or&nbsp;Enter</span></th><td><span style="white-space:pre-wrap" id="isPasted">Activate the focused element</span></td></tr></tbody></table>

### Labeling elements

On web, the toolbar container should have the **toolbar** role. 

On mobile, it can be a generic container. 

All actions inside the toolbar should follow their respective accessibility guidelines.

![A toolbar on web, with a “toolbar” role label.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0anynmv-5.png?alt=media&token=f53e2da8-9f81-47fa-9786-b445bc596dc8)

On web, use the **toolbar** role
