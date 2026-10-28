---
source: https://m3.material.io/foundations/interaction/inputs
title: "Inputs"
captured: 2026-09-14
---

# Inputs

> Inputs are devices that provide interactive control of an app. Common inputs include a mouse, keyboard, or touchpad.

-   Design for touch, keyboard, and mouse interactions
-   Embrace multiple input methods and gestures within your app

![Editing interface on a large screen device. The selected text is highlighted and the text cursor is visible.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwvoasbb-1.png?alt=media&token=2706b8e6-4f43-4a00-9f8c-313bf1ca33d1)

Designing for inputs allows people to use the inputs they prefer, like a mouse to highlight text on a tablet

## External inputs for devices

People can use external inputs like a mouse, keyboard, or stylus with their phone, tablet, foldable, TV, laptop, or desktop computer. When someone connects an external input to their device, they expect it to behave in familiar and useful ways. Designing for different input methods can make a product more usable and accessible on all screen sizes.

### Common features of external inputs

#### **Mouse**

-   Left and right click
-   Mouse wheel
-   Extra buttons

#### **Trackpad**

-   Left and right click
-   Gestures
-   Haptics

#### **Physical keyboard**

-   Replaces virtual keyboard
-   Media keys
-   Modifier keys

![Image of a mouse.](https://lh3.googleusercontent.com/EDnkwobNdIi9JnBJEISCm5eYhpIWsgVN2S_ZihqgFHsP7nILBYc1UC82xXCpptPSTQ9pgxBTFOGtAV0xHX_TzOrnyu-sstE1aqQhvG61pK4=s0)

![Image of a laptop keyboard and trackpad.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwvoce8y-3.png?alt=media&token=858a71ae-a1ab-403a-adb6-074566f3b0b0)

![Image of a keyboard.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwvocxli-4.png?alt=media&token=fe5784ee-f092-40d6-9c96-4b3b6e1b4a10)

### Input device behaviors

Depending on the input device, designers and developers can implement behaviors that meet standard conventions and user expectations.

| Input device action | Anticipated behavior |
| --- | --- |
| Mouse and trackpad movement | Show a mouse cursor on the screen |
| Primary click | Treat mouse clicks differently than touch events |
| Secondary click | Activate context menus |
| Hover | Change component states |
| Highlight | Allow text to be selected by the mouse cursor |
| Mouse wheel and trackpad two finger drag | Scroll list vertically and horizontally |
| Trackpad pinch | Zoom an element or page |
| Physical keyboard | Hide and show on screen keyboard |

## Mouse and cursor interactions

When an external mouse input device is used, a mouse cursor should be shown, regardless of the device type. 

A mouse may be connected to tablets, laptops, phones, foldables, and more. On some devices, it's possible to use an external input device simultaneously with touch input. 

On devices that don't specifically recognize mouse or stylus input, the mouse is treated as touch input.

### Primary click

A mouse click or stylus tap should demonstrate the same feedback as touch input. One example of this is showing the ripple for a pressed state.

![A view of a display with a visible mouse cursor.](https://lh3.googleusercontent.com/Cb5WD95kLIK5F45ql60cUftzpvrvxGv8UxPGKAQCkKOdBFnZJ1zMtrQR8zKkTi7R4Gh_-jmKSWccF5DlfUXp12m7AwMcHfzXmvaj3T9JYDAZ=w40)

A visible mouse cursor is seen when the external input is connected

### Secondary click

#### Context menus

A secondary click (whether using a single button or two fingers on a trackpad) should activate a context menu. The context menu shows additional options for the object that's clicked. See [menus](/m3/pages/menus/overview) for more usage and guidelines.

![A context menu pop up from a link with the options: Open link in new window, Save link as, Copy link location, and Inspect.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwvoetuu-6.png?alt=media&token=a1d1943b-8906-4e9f-96bd-e23ba631d331)

The context menu should appear when right clicking with a mouse or trackpad

### Hover

When using a mouse cursor, help users discover interactive objects by enabling visual changes. When the mouse rests on an interactive element, the hover state is a valuable cue for interaction. See [states](/m3/pages/interaction-states/applying-states#71c347c2-dd75-485b-892e-04d2900bd844) for styles and guidelines.

Hovering with a cursor (or stylus) should also invoke tooltips when applicable. See [tooltips](/m3/pages/tooltips/overview) for guidance.

![Icon button, floating action button, and menu items in their hovered and not hovered states.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwvofwmm-7.png?alt=media&token=c01eebb6-93d7-4e40-8156-947c480b8840)

1.  Components without a hover state
2.  Components with a hover state change applied

### Cursors

Cursors appear when using external input devices like a mouse or trackpad. The cursor can change to communicate more information about interactive elements.

#### Pointer

By default, external input control should be rendered as a pointer.

![A cursor rendered as a pointer.](https://lh3.googleusercontent.com/MW8dKSHxn8lhooyCbNv66f5sACoziJe1wryABcQYzei0NB1QJHHHVqdgbSGRxVZWTaKG6OQ4cAwu1HAwUEN_eDJNYFdK8kegwkE4wVpABLjK=w40)

1.  A pointer provides a visible indicator for input controls

#### Hand

The cursor should appear as a hand to indicate links or linked images.

![A link cursor (hand) shown when hovering over a linked image.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwvogkod-8.png?alt=media&token=d6119250-af14-4742-b20d-8f562a50274d)

1.  The hand cursor is used for links and clickable images

#### Resize arrows

The cursor should change to resize arrows on the boundaries of resizable elements.

![A cursor at the edge of the screen as resize arrows.](https://lh3.googleusercontent.com/aRwe1YYgXEjJUzdpUE4zmut0gi_yxDBXooTLnGjJBam3RQxVhs2a49MKfwHQ8twxxBhfI2BBaK0ND-BaR9fLS1czLbpsxQDpYvUMTnnkGlc=w40)

1.  Resize arrows indicate an element can be resized

#### I-beam

The cursor should appear as an I-beam when hovering on text. When manipulating editable text, the following interactions apply:

-   Single click places the cursor

-   Double click selects a word

-   Triple click selects a paragraph

-   Single click deselects text and repositions the cursor

![I-beam cursor hovering over selectable text.](https://lh3.googleusercontent.com/E5W_SctCrkKHCihIzCBXv5u805M6wtGVi3yUbX0aLhjAeI20kCi0iiEW7cC9D6ESJCGpjeIj7yxEtXpwaL20A8kzMlwF0yDx6HTcAfD2ZaQ=w40)

1.  An I-beam cursor indicates selectable text

### Text selection

When selecting text using a mouse, trackpad, or stylus:

-   Highlight the selected area using a single color

-   Don’t show touch controls next to the highlighted area

![Highlighted text in a single color.](https://lh3.googleusercontent.com/eubJ_19rLe9XCTY6isagTFwSDbS7CJ7cX0Cq1RREujdf6UYnHObBD2JkGz243IXVgGvLHghQxkZ7dGF4VlOxz9_q1wjLdf7XgiJlIXPv17OW7Q=w40)

1.  Selected text shows a visible highlight

### Text selection with touch control

When interacting using touch, always show touch controls, even if other inputs are connected.

When using a mouse, trackpad, or stylus, show the I-beam and context menu, even if it's a touch device.

![Touch controls are produced on selected text, with mouse and trackpad detected.](https://lh3.googleusercontent.com/xoKyWfrnOMhrSuigyo4npW9rNQIFurShW01IyOXNrkuYzbIrcj68iuZkXMDrO-aziTXQhk5ZOT-SPutDWlR9wumV1VjP6lTq5jwE2cpEPleH=w40)

When using a touchscreen to select text, show touch controls

![Selected text with a context menu, with mouse and trackpad detected.](https://lh3.googleusercontent.com/kalcMGlh7aH93geQ13BxCGUrfw2CvcwnPgHoh-XOSBfE-1g9ZCPCkv1fT84HLFASoOnWFb6MjXSBNiEFEGWXCDHourlTUpsxFwIEVFfCn13l=w40)

When using a mouse, trackpad, or stylus to select text, use the right-click context menu

### Stylus input

When using a stylus, cursors are usually not necessary, unless they communicate tool properties such as brush size or shape.

![A cursor rendered as a circle.](https://lh3.googleusercontent.com/3EzjVm189HykitEGTOdtrYA8VZNhYTSJwWcXtLiP2DzGuC2vxDeeR21k8ixi3Dl1BSlkS7Z0-BhYiHyDqKWJc73KpFG8lg-XWkQUL88MMUli=w40)

1.  The circle cursor indicates the selected stylus tool and size

## Mouse wheel and trackpad gestures

When an external mouse or touchpad is used, the mouse wheel and trackpad gesture allow more actions.

### Vertical scroll

When a cursor is positioned on a list, the mouse wheel and two-finger touchpad gesture should allow vertical scrolling of the list.

Scrolling a vertical list using the mouse wheel or trackpad gestures. Note that only the detail panel under the cursor scrolls.

### Touch scroll & mouse text selection

Upon touch and drag gesture, the text area will scroll. With a mouse interaction, dragging in a text area will select the text.

On a touch screen, dragging upward scrolls the field down

When using a mouse, dragging upward selects text and images

### Horizontal scroll

Mouse users should be able to scroll with a mouse wheel to navigate horizontally scrolling fields. Trackpad users should be able to scroll using a two-finger horizontal gesture. 

Carousels can scroll horizontally using a scroll wheel or trackpad

## Physical keyboard

When a physical keyboard is connected to a device, either externally or as a built-in laptop keyboard, users should be able to perform any actions that the virtual keyboard provides, and more.

### Show and hide virtual keyboard

A virtual keyboard should appear or hide in response to the presence of a physical keyboard.

![Text being entered into a field with no on-screen keyboard displayed.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0b7vzhy-19.png?alt=media&token=7ae7282f-1e8d-4ce9-9fd5-7423bcf4e498)

check Do

When a physical keyboard is attached, hide the virtual keyboard

![Text being entered into a field with an on-screen keyboard.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0b7w8fa-20.png?alt=media&token=51ece2e1-122e-45bc-9c5d-7ddf5a72ba7d)

check Do

When a physical keyboard is removed, show the virtual keyboard

### Common keyboard interactions

#### Enter key

People typically expect the **E****nter** key on a physical keyboard to be enabled by developers to allow a common function like sending a message. 

The **Enter** key typically triggers actions like sending a message

#### Spacebar control

People typically expect the **Spacebar** (or available media keys) to be enabled to play and pause music or video.

Pressing **Space** usually pauses and plays media

#### Tab focus

When keyboard users navigate a page using **Tab**, the focus on interactive items must follow a logical order. On most pages, that means left to right, top to bottom.

When focused from a keyboard or other input device, the focus state includes a ring-like keyboard focus indicator.

![Tab focus is on “small,” which is one of four size options for sweatshirts at an online store.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0b7yvt7-23.png?alt=media&token=0461477f-c0fb-48d3-b29b-fd0a463524c3)

Tab focus includes a visible keyboard focus indicator

![Tab focus is on “medium,” which is one of four size options for sweatshirts at an online store.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0b7zlqx-24.png?alt=media&token=ebdbbf64-30b6-48f0-9195-7278153eb547)

The focus state moves elements as the user presses **Tab** on their keyboard

#### Escape key

People typically expect the **Escape** key on a physical keyboard to dismiss elements, remove focus, or clear selections.

The **Escape** key should dismiss any visible modal elements like menus, dialogs, or bottom sheets

The **Escape** key should remove any visible focus indicators and set the focus order to 0

The **Escape** key should remove the text cursor when typing, but should not remove already-typed text
