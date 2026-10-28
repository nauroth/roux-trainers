---
source: https://m3.material.io/components/navigation-bar/specs
title: "Navigation bar"
captured: 2026-09-14
---

# Navigation bar

> Navigation bars let people switch between UI views on smaller devices

## Variants

![The recommended flexible navigation bar.](https://lh3.googleusercontent.com/UvjUYsyF9gAgVOmfiC9h3zFaS-jU0wYws-HjqFyeiABhm3ubP8ZtHn__4wPEPmw3eR3D4C4O6sUeHVmdJ_IX9zTrzi1GmuiTUcQlauA2Fs-B=s0)

1.  Flexible navigation bar

### Baseline variants

The baseline nav bar is no longer recommended, and should be replaced by the flexible nav bar, which is shorter and supports horizontal navigation items in medium windows. [View baseline nav bar specs](/m3/pages/navigation-bar/specs#46dc2521-acf0-44e3-bbc0-78dc225b9749)

![1 baseline navigation bar.](https://lh3.googleusercontent.com/PmEPtOw84s8SQu9KJJ0EX-gTgEL5PDGneaQfz9OVdFSXWjLd7P41B6qpIiWnAOuSfGl7JnCQOqa3Lfx8hZfXRG7HzJJNam-HCDFV1lfKvLlw=s0)

1.  Navigation bar (not recommended)

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| Flexible navigation bar | \-- | Available |
| Navigation bar | Available | Not recommended.Use **flexible navigation bar**. |

## Configurations

In compact windows, navigation bars use vertical items. In medium windows, navigation bars should use horizontal items.

![Two size configurations for navigation bar and items.](https://lh3.googleusercontent.com/p7YCl5pH99g_eM4-BCFHmEgxIdJxmb5UuE-CUwR8M9OjjPkNJpYAwQPZTAxamQBoiRr25F23T4mxDVNRUG3kESL--vZihbUkQWN04W9DAFiH=w40)![Two size configurations for navigation bar and items.](https://lh3.googleusercontent.com/p7YCl5pH99g_eM4-BCFHmEgxIdJxmb5UuE-CUwR8M9OjjPkNJpYAwQPZTAxamQBoiRr25F23T4mxDVNRUG3kESL--vZihbUkQWN04W9DAFiH=s0)

1.  Vertical navigation items

2.  Horizontal navigation items

| Category | Configuration | M3 | M3 Expressive |
| --- | --- | --- | --- |
| Navigation item layout | Vertical (default) | Available | Available |
| Horizontal | \-- | Available |

## Tokens & specs

Use the table's menu to switch between token sets for the navigation bar and the nav items. [](/m3/pages/navigation-bar/specs#3425f33a-0b11-492a-ae5a-40d63f939384)[Learn about design tokens](/m3/pages/design-tokens/overview/)

Close

## Anatomy

![Seven elements of the navigation bar.](https://lh3.googleusercontent.com/NkOIeqvJB7WxPg28DI-4uEHBrBfN38qDD2CWuX-NM2tTrxYwRknjdhOMzMCD1D9d65WN-Lzfo1Zg_B3G8Zk7pjT7Os-D2EfYGXQPDxawqpA=w40)

1.  Container

2.  Icon

3.  Label text

4.  Active indicator

5.  Small badge (optional)

6.  Large badge (optional)

7.  Large badge label 

## Color

Color values are implemented through design tokens. For designers, this means working with color values that correspond with tokens; in implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![Six color roles of the navigation bar.](https://lh3.googleusercontent.com/ec6ZkQGVtf5t0AOua9lhgucAZ31inD_mF4vm24sW2MeH8X2dK3xV1rpfoNuX6hlO5rU7wJVfCH0KMCt8Xqzl0qDIR668oCFEKb97YswmeuuC=w40)

Navigation bar color roles used for light and dark schemes:

1.  Surface container

2.  On-secondary container

3.  Secondary

4.  Secondary container

5.  On-surface variant

6.  On-surface variant

For badge color roles, go to [badge specs](/m3/pages/badges/specs).

## States

States are visual representations used to communicate the status of a component or an interactive element.

![Four states of the navigation bar items.](https://lh3.googleusercontent.com/FTJk0MWbkT2YuqVJl3k8F57gmzTtSUKbQCovcet18WLLqbCMFFYds_DS65Sx8fzuFpEK6G_W5lmDc55s5ZUEpvBZIGM31aOI1psEFpn7GWnk=w40)

1.  Enabled

2.  Hovered (8% state layer)

3.  Focused (10% state layer)

4.  Pressed (10% state layer)

## Measurements

The navigation bar stretches the full window width.

![Navigation bar padding and size measurements.](https://lh3.googleusercontent.com/zjuYI8XOBcjHmnNU2V9qHk9gbz3xJW9E2cEVE0Ov9Bh2fz8VI7RoISP5ykh9u5mqCXhF1nYKXT696Hfw-YIUMzX37jseGZdsA2bN_-YfErA=w40)

Navigation bar padding and size measurements

Vertical navigation items dynamically change width to equally fit the container. Horizontal navigation items have a fixed width, so extra space is added to the ends of the navigation bar instead.

![Navigation bar and item widths.](https://lh3.googleusercontent.com/VMRrzRH_T07zMqRPwp1sLZPmkAVJVwQDqqrhuD-synkhADa-mjbbjtbh_tWZ4QZ9ael3lvNq52dhMRNCMOTZRh5aISTWk7bvSEt-vud2RGvW=w40)

Navigation bar width and margins for compact and medium windows.

1.  Vertical navigation item

2.  Margin from window edge
3.  Horizontal navigation item

* * *

## Baseline navigation bar

![7 elements of baseline navigation bar.](https://lh3.googleusercontent.com/DBrM1eLC6HN2CNBg9Gr9UjPRuBgV0C7N3JLMzR2Y3nemUs8z0I71LTJM36azNtt45cWQiwISFwjAGc2G8coCUD9vfnIi-30wBlBw7OB1rSk=w40)

1.  Container

2.  Icon

3.  Label text

4.  Active indicator

5.  Small badge

6.  Large badge

7.  Large badge label

### Tokens & specs

These tokens are for the baseline navigation bar.

Close

### Color

Color values are implemented through design tokens. For designers, this means working with color values that correspond with tokens; in implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![6 color roles of baseline navigation bar.](https://lh3.googleusercontent.com/iFtbyGfchUzulQmxsrcS-I7WwK9b3AywZsdXqs8Z1jIytViyh4uD1UC9qpNKi44ejAswfg-jDNjzVCkq8diuRU4130swhkqbtGDL508M2zU=w40)

Navigation bar color roles used for light and dark schemes:

1.  Surface

2.  On secondary container

3.  On surface

4.  Secondary container

5.  On surface variant

6.  On surface variant

For badge color roles, go to [badge specs](/m3/pages/badges/specs).

### States

States are visual representations used to communicate the status of a component or an interactive element.

![4 states of baseline navigation bar.](https://lh3.googleusercontent.com/Tz8X4rigXztIPIhpYB584wZpWuKYAEz4C4mIBNVQksaN4sRvl_eXy8dk9cwcWhM3iOfOJVLvlckzcDdPOScuGYJVhjvzuSAMRwpvZk2mdNOpTw=w40)

Navigation bar states: 

1.  Enabled 
2.  Hovered 
3.  Focused 
4.  Pressed

## Measurements

![Baseline navigation bar padding and size measurements.](https://lh3.googleusercontent.com/yZAR82Wh75nazTTTOrRenBXPtuOb1BG45198tsOGQMOTUk0QS_Ety_wa_9wsQRVXkBVii9TYrwCmSAiwxxlvHY95EetWd78rd4DPR-qTy3X-4Q=w40)

Navigation bar padding and size measurements

![Baseline navigation bar target size and margins.](https://lh3.googleusercontent.com/Cx_HLEfaqKx72AHNtDdP7raUEXmHCDKOWC40CCuYLkfYn6d93KRaJHBWdxVHOkoU22j4UAJJExrl3uQYnpFQ_wu895nHHKn8qNUXZVMtCwqT=w40)

Navigation bar target size and margins

## Configurations

![3 configurations of the baseline navigation bar.](https://lh3.googleusercontent.com/ALYNjmr0KKRFb33P4hKrUxeXha7V6L7eyz_izrbW4nGMgFfZtYjbLa7cHF3mxpWOr4TiAswFklndquusmv_dRJsruNjzu4ZSh7WgBrOCWDQ=w40)

1.  3 destinations

2.  4 destinations

3.  5 destinations
