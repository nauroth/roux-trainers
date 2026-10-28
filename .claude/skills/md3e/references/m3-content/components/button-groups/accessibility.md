---
source: https://m3.material.io/components/button-groups/accessibility
title: "Button groups"
captured: 2026-09-14
---

# Button groups

> Button groups organize buttons and add interactions between them

## Use cases

People should be able to do the following with assistive technology:

-   Navigate to and interact with each button in the group 
-   Identify when buttons are selected

## Interaction & style

Each button in a group should have a minimum 48x48dp target. 

Extra small and small button groups have larger inner padding to ensure accessible targets. Avoid reducing the padding in these sizes.

![Extra small and small button groups with 48x48dp target areas annotated over top. The area is larger than the buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dgm57d-tap%20targets.png?alt=media&token=cf93b998-0435-47db-9f91-0ad62e7362e6)

1.  Extra small button group
2.  Small button group

### Initial focus

The button group container is not a focusable element. Initial focus should land on the first button in the group and then move to each button.

![Focus order lands on the first button, then the next buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dgsbc6-focus.png?alt=media&token=5e86fe8a-b489-46d5-9b3f-9ce2fdb2d310)

Initial focus should land on the first button, not on the container

Use **Tab** to navigate through each item in the group, and **Space** or **Enter** to select buttons.

![Button group with annotations for navigation with Tab and selecting with Space or Enter.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dgutj5-keyboard%20nav.png?alt=media&token=34ed6f40-4477-4b3c-a39f-9c8e53631657)

1.  Initial focus
2.  Selected button

## Keyboard navigation

| Keys | Actions |
| --- | --- |
| Tab | Navigates to the next button |
| Space or Enter | Activates the focused button |

## Labeling elements

The button group container does not need to be labeled. Label each button according to the button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) and icon button Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview) accessibility guidance.

![In a messaging products, an email icon is labelled “email” with the role “button”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dh20ef-label.png?alt=media&token=a99c4ff1-098a-4c02-91fc-b8510e558d48)

Label each button within the button group
