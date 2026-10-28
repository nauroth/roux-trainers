---
source: https://m3.material.io/components/checkbox/specs
title: "Checkbox"
captured: 2026-09-14
---

# Checkbox

> Checkboxes let users select one or more items from a list, or turn an item on or off

## Tokens & specs

Browse the component elements, attributes, tokens, and their values.

Token

Value

Close

## Checkbox

![Diagram of checkbox indicating the 2 parts of its anatomy.](https://lh3.googleusercontent.com/o7Jd5nbugG-76fMDJwv-WD-ardrEfZF5Nxfq_8Pikz0V6pnzJXvDA6C4NPzOpZ3z39Rjb6tb1yxxQs8GBhn0L11_ozezB4FsTlSHGIQrRFcz=s0)

1.  Container 
2.  Icon

## Color

Color values are implemented through design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) . For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![Checkbox color roles in light and dark themes.](https://lh3.googleusercontent.com/tRScc_0bS1gM7jai2Ojj3qDzyhE696wedzZNPry2Pson8ONvZ_S_IoRUO6RwZBC5-YQUmgqLKG0xWldIJ5y_DT6lfRcty3F0JPY7pJvbqkZG=w40)![Checkbox color roles in light and dark themes.](https://lh3.googleusercontent.com/tRScc_0bS1gM7jai2Ojj3qDzyhE696wedzZNPry2Pson8ONvZ_S_IoRUO6RwZBC5-YQUmgqLKG0xWldIJ5y_DT6lfRcty3F0JPY7pJvbqkZG=s0)

1.  Checkbox
2.  State-layer
3.  Icon

### Adjacent text label color

Use the color role Color roles are assigned to UI elements based on emphasis, container type, and relationship with other elements. This ensures proper contrast and usage in any color scheme. **on surface** for adjacent text labels. This remains the same even if interacting with the label or component.

![Checkboxes with text labels. The text color is the same for checked and unchecked checkboxes.](https://lh3.googleusercontent.com/712ygEoSMR9tGvygN9LKJ8DZ7BhOWkzxv1y86AilaXmqdTa30fz5WP68koUEZThkz30akxDDI3CUbIxJh6PeEKIj2HK48__RTspIhYMIFFeX=w40)![Checkboxes with text labels. The text color is the same for checked and unchecked checkboxes.](https://lh3.googleusercontent.com/712ygEoSMR9tGvygN9LKJ8DZ7BhOWkzxv1y86AilaXmqdTa30fz5WP68koUEZThkz30akxDDI3CUbIxJh6PeEKIj2HK48__RTspIhYMIFFeX=s0)

The text color remains the same regardless if the checkbox is selected or not

## States

States are visual representations used to communicate the status of a component or interactive element. [Learn more about interaction states](/m3/pages/interaction-states/overview)

![Side by side view of states in light and dark themes.](https://lh3.googleusercontent.com/Yor59BqmDg2qk4vgXtDVI9FzkAcqUFQZ4EjWrwLc_rYafcVTgirLkf-bt1t7JbvpRyPYQYvrP8ZM_ZgYUA17VWtk1h9UJcckiG_W0NPLDled=w40)![Side by side view of states in light and dark themes.](https://lh3.googleusercontent.com/Yor59BqmDg2qk4vgXtDVI9FzkAcqUFQZ4EjWrwLc_rYafcVTgirLkf-bt1t7JbvpRyPYQYvrP8ZM_ZgYUA17VWtk1h9UJcckiG_W0NPLDled=s0)

1.  Enabled 
2.  Disabled 
3.  Hovered 
4.  Focused 
5.  Pressed

## Measurements

![Diagram of a selected checkbox with a container width and height of 18dp and a state-layer width and height of 40dp.](https://lh3.googleusercontent.com/CcUqIZiHlrkBXYmqL54pCjCjsNpVnHsMf6QdUXITGzV89PkHrNbV84_w9I5ZgcNPlMFcCVbTxYhZzVbMESebqg2wWiSlqbYaRNstFOLT5P-s=w40)![Diagram of a selected checkbox with a container width and height of 18dp and a state-layer width and height of 40dp.](https://lh3.googleusercontent.com/CcUqIZiHlrkBXYmqL54pCjCjsNpVnHsMf6QdUXITGzV89PkHrNbV84_w9I5ZgcNPlMFcCVbTxYhZzVbMESebqg2wWiSlqbYaRNstFOLT5P-s=s0)

| Attribute | Value |
| --- | --- |
| Container size | 18dp |
| Container corner shape | 2dp |
| Icon size | 18dp |
| Icon alignment | Center-aligned |
| Target size | 48dp |
| State-layer size | 40dp |
