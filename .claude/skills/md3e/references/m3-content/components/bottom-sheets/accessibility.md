---
source: https://m3.material.io/components/bottom-sheets/accessibility
title: "Bottom sheets"
captured: 2026-09-14
---

# Bottom sheets

> Bottom sheets show secondary content anchored to the bottom of the screen

## Use cases

Users should be able to:

-   Resize bottom sheets without having to rely on touch gestures

## Interaction & style

### Touch target area

The top 48dp portion of the bottom sheet is interactive when user-initiated resizing is available and the drag handle is present.

![Touch target area of a bottom sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flvp8g5p9-1.png?alt=media&token=8e64004e-3857-4101-b39c-99d3a1202671)

To ensure touch target accessibility, the top portion of a bottom sheet can be reserved for resize interactions

### Initial focus

The optional drag handle can be focused A focused state communicates when a user has highlighted an element, using an input method such as a keyboard or voice. [More on focused state](/m3/pages/interaction-states/applying-states#bc6d6853-48ef-490e-8076-448e89e69f0f) in the tab order and interacted with using non-touch inputs Inputs are devices that provide interactive control of an app. Common inputs are a mouse, keyboard, and touchpad. , such as keyboard or switch Switches toggle the state of an item on or off. [More on switches](/m3/pages/switch/overview) controls.

![Focus on the drag handle of a bottom sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flvp8gmd5-bottom-sheet-focus.png?alt=media&token=cdb9816d-b6f1-4f2d-a6c9-57c7f19adf6a)

Visible focus shown on the drag handle affordance

### Dragging

Include a single-pointer alternative for any action that can be completed by dragging.

Drag handles should cycle the bottom sheet through available heights when selected. If a drag handle can’t be used, add a button to do this action.

![Bottom sheet with focused drag handle at lower preset height.](https://lh3.googleusercontent.com/oTYgjX2EiyzXtztzy6pKLtl4orLwt83InSn2nHXrJuSKwwBhO-R1pllkNzYnilWk-qI5_eNNob5zUMIP1SSUAOOPOspSu6g7aWhV4--hKz0=w40)![Bottom sheet with focused drag handle at lower preset height.](https://lh3.googleusercontent.com/oTYgjX2EiyzXtztzy6pKLtl4orLwt83InSn2nHXrJuSKwwBhO-R1pllkNzYnilWk-qI5_eNNob5zUMIP1SSUAOOPOspSu6g7aWhV4--hKz0=s0)

Interacting with the drag handle can quickly move a bottom sheet through preset heights

![Bottom sheet with drag handle at higher preset height.](https://lh3.googleusercontent.com/Qbh70YFT_L81Y-982OVil6qLEB90imUJs9wbRQLdxVkcYIPlYik995maTieLEuP8Oc-T1-2WrcTuO_ZBCd2kwc9yD-9SgngSP2FvrpqzCubGcw=w40)![Bottom sheet with drag handle at higher preset height.](https://lh3.googleusercontent.com/Qbh70YFT_L81Y-982OVil6qLEB90imUJs9wbRQLdxVkcYIPlYik995maTieLEuP8Oc-T1-2WrcTuO_ZBCd2kwc9yD-9SgngSP2FvrpqzCubGcw=s0)

A bottom sheet can automatically resize to another height after interacting with the drag handle

## Keyboard navigation

| Keys | Actions |
| --- | --- |
| Tab | Focus lands on drag handle |
| Space / Enter | Toggles between available heights |

## Labeling

Label only the drag handle. The accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview) role for the drag handle is “button.”

![Labeled drag handle with role of button.](https://lh3.googleusercontent.com/rQnID5aS5_ORuWh7Yp2LhBOLLPZQrEvPmowQpgTLFeBfTwyBEMJjvvOYIo991CA4BiA9o4uEZBALyTu1klLA5adv9b49GO3gJuCp_2IIQxsBVQ=w40)![Labeled drag handle with role of button.](https://lh3.googleusercontent.com/rQnID5aS5_ORuWh7Yp2LhBOLLPZQrEvPmowQpgTLFeBfTwyBEMJjvvOYIo991CA4BiA9o4uEZBALyTu1klLA5adv9b49GO3gJuCp_2IIQxsBVQ=s0)

Label the drag handle
