---
source: https://m3.material.io/foundations/interaction/states/state-layers
title: "States"
captured: 2026-09-14
---

# States

> States show the interaction status of a component or UI element

## State layers

A state layer is a semi-transparent covering on an element that indicates its state. State layers provide a systematic approach to visualizing states by using opacity. A layer can be applied to an entire element or in a circular shape and only one state layer can be applied at a given time. 

To transition from an enabled style to a stateful style requires the addition of a state layer.

The state layer is an overlay with a fixed opacity for each state and uses the same color as the content. 

For example, if the enabled style uses the **secondary container** color for the container and **on secondary container** for content, the state layer will be an overlay using the **on secondary container** color.  

If the enabled style uses the **surface** color for the container and the **primary** color role for content, then the state layer will be an overlay using the **primary** color.

![State layer sandwiched between the container and content.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2qh1yi-1p_State%20Layers_1.png?alt=media&token=40e0a636-b5f9-4547-a0ad-90cccc333d70)

1.  Container
2.  State layer
3.  Content

The size of state layers is 40dp while the interactive target size is 48dp.

![Interaction target is larger than the state layer.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2qhye4-1p_State%20Layers_2.png?alt=media&token=772b1316-6175-4fb3-bae0-d523c06b125b)

1.  State layer
2.  Interactive target

### On colors

By default, a component’s state layer color is derived from the color of its content, either the color of an icon or label text if no icon is present.

An [on color](/m3/pages/color-roles#19e75989-7485-4f5b-a769-940c4e4364bc) is a color role used by the content. Each container color has its own corresponding on color. 

For example, if a container color is **secondary container**, the content will use the **on secondary container** color role. 

![State layer sandwiched between  the content and container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2qisol-1p_on_colors.png?alt=media&token=8c883e0d-7010-4c6e-8a25-fc4aa4d92370)

Order of surface layers shows the state layer (2) between the container (1) and content (3) layers

### State layer tokens & values

The state layer uses a fixed percentage for the opacity for each state. A state layer uses the color used by content (usually the [on color](/m3/pages/color-roles#19e75989-7485-4f5b-a769-940c4e4364bc)) and the percentage opacity for its respective state. 

![The opacity values of four overlay states.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fly2qnx2g-1p_state_layer_tokens%26value.png?alt=media&token=bf0becab-a73a-4693-bd6b-bd89c858de30)

Four overlay states and their values:

1.  Hover +8% opacity 
2.  Focus +10% opacity 
3.  Press +10% opacity
4.  Drag +16% opacity

0.16 Dragged state layer opacity

0.1 Pressed state layer opacity

0.1 Focus state layer opacity

0.08 Hover state layer opacity

0.38 Disabled state layer opacity

Close
