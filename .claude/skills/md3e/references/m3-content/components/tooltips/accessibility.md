---
source: https://m3.material.io/components/tooltips/accessibility
title: "Tooltips"
captured: 2026-09-14
---

# Tooltips

> Tooltips display brief labels or messages

## Use cases

People should be able to do the following using assistive technology:

-   Receive a tooltip message
-   Activate a tooltip with a keyboard or switch input

## Interaction & style

Plain and rich tooltips without required actions should remain on screen long enough for people to receive the information without disrupting their existing flow or task.

check Do

Plain tooltips should remain on the screen temporarily after the cursor moves away

Tooltips can appear when an actionable element, like a button or navigation rail, is hovered or focused. However, this tooltip shouldn’t hide crucial information.

Rich tooltips can also appear by selecting an element instead of hovering or focusing on it.

![A cursor hovers over a favorite button producing text about finding this item later in favorites.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme6ru5uh-02.png?alt=media&token=1a4085d9-9e8f-42d5-9aab-470093ca7dbf)

Tooltips can appear on hover or focus to explain actions

![An information button in a selected state produces text about finding this item later in favorites.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme6ruf33-03.png?alt=media&token=98c44750-5967-4b0e-8e26-933fd0cdcdbe)

Rich tooltips can appear when an element is selected

## Focus order

Tooltip containers should not block important information or prevent a person from completing an action. 

Focus order within the rich tooltip moves top to bottom between interactive elements. 

Avoid trapping screen reader and keyboard focus on rich tooltips.

People should be able to move linearly through the rest of the page.

![Different elements of a rich tooltip are given a focus order, moving from parent element to inline link to text button.](https://lh3.googleusercontent.com/KCWqivAVbjIzMGBp1AVQbceVT02tQdKQSNJOd-FA_ARUYwMLQX2GUYZi55K0wxG_c2dYdGFnsBnB-_1n-m8thxhCgVavyU0W9_Dz5C9aVBLEdA=w40)![Different elements of a rich tooltip are given a focus order, moving from parent element to inline link to text button.](https://lh3.googleusercontent.com/KCWqivAVbjIzMGBp1AVQbceVT02tQdKQSNJOd-FA_ARUYwMLQX2GUYZi55K0wxG_c2dYdGFnsBnB-_1n-m8thxhCgVavyU0W9_Dz5C9aVBLEdA=s0)

1.  Parent element
2.  Inline link
3.  Text button

## Keyboard navigation

| **Keys** | **Actions** |
| --- | --- |
| **Tab** | Focus lands on button, if available |
| **Space** or **Enter** | Activates the focused element |

## Labeling elements

Tooltips should have the **Tooltip** role, or similar. 

Label all elements in the tooltip according to their own accessibility guidance.

![A rich and plain tooltip with all elements matched to accessibility labels.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme6ry9ry-05.png?alt=media&token=8d4b4d42-2cb4-4496-ac89-02fed5e0e0fb)

The tooltip container should have the **Tooltip** role
