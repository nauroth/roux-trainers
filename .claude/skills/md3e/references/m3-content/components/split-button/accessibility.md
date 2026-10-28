---
source: https://m3.material.io/components/split-button/accessibility
title: "Split buttons"
captured: 2026-09-14
---

# Split buttons

> Split buttons open a menu to give people more options related to an action

## Use cases

People should be able to do the following using assistive technology:

-   Navigate to each button and interact with them
-   Navigate to any element opened by the trailing button
-   Understand the current selection state of the button

## Interaction & style

Each button in the split button needs a minimum target area of 48x48dp. Extra small and small split buttons are shorter than 48dp, so the target areas around them need to be at least 48dp tall.

![Diagram showing extra small and small split buttons with visible 48x48dp target areas.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dpv69h-1.png?alt=media&token=649cab35-4ea3-432c-b027-1dd04227d045)

Target areas should be at least 48x48dp 

1.  Extra small

2.  Small

## Initial focus

Focus should land on the leading button then move to the trailing button. This can depend on the operating system’s settings.

![Focus on the leading button and trailing button for both LTR and RTL languages.](https://lh3.googleusercontent.com/Hxb_s-kioHaVoJt_tb0g2lLobKLWCPoTiVio9TRl21G3_8Ss0_qrmvpKS-bFeozlGusX8XxyQlG8s9rBSF2VaA_n569tXLPN4Qq9n93ibtBO=s0)

1.  Left to right

2.  Right to left

## Keyboard navigation

| Keys | Actions |
| --- | --- |
| Tab | Navigate between buttons |
| Space or enter | Activate focused button |

## Labeling elements

The accessibility label for the leading button is the same as buttons.

![“Watch later” is both the button label text and the accessibility label.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dq2sfs-3.png?alt=media&token=85b75ca9-ea9b-4199-939d-9b42767d223b)

Leading buttons should have the same labels as common buttons

The trailing icon button should have an extra state or similar label indicating that the menu is expanded or collapsed.

Label the button to clearly indicate that there are more options. The label of the secondary button should indicate that it provides additional choices related to the action of the main button. For instance, if the main button says "Watch later," the secondary button should be something like "More watch options."

Label the opened menu according to the [menu accessibility guidance](/m3/pages/menus/accessibility/).

![Collapsed state indicated for the trailing button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dq40tg-4.png?alt=media&token=e787ddba-953d-423a-bdee-55583e4500a7)

Trailing buttons should communicate the state of the menu and that more options are available
