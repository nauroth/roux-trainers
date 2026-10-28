---
source: https://m3.material.io/components/fab-menu/specs
title: "FAB menu"
captured: 2026-09-14
---

# FAB menu

> The floating action button (FAB) menu opens from a FAB to display multiple related actions

## Variants

![The FAB menu in its single variant.](https://lh3.googleusercontent.com/aEJrDU0HXKoBxMGFWOq1I7O6QB2fl6EPJGEDSP0L7CVDgvAjMdaM_LX10txGb1GDquvp0R-IiszOHSY23xw1qRcCit1YcAxSgB4P3HKa4wGs=s0)

There’s one variant of FAB menu

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| FAB menu | \-- | Available |

## Configurations

![3 color configurations of FAB menus.](https://lh3.googleusercontent.com/ysJ9Ea896_EYwed_YofScZMv_HuE8BH4IJVkWyw4v2Xw-KInaEtXmOyWaaQNTTAZw0oLB9neXbgOnHTv2rPWRCii81v_hwh0ZkDiyQp2seY=w40)![3 color configurations of FAB menus.](https://lh3.googleusercontent.com/ysJ9Ea896_EYwed_YofScZMv_HuE8BH4IJVkWyw4v2Xw-KInaEtXmOyWaaQNTTAZw0oLB9neXbgOnHTv2rPWRCii81v_hwh0ZkDiyQp2seY=s0)

Three color sets:

1.  Primary

2.  Secondary

3.  Tertiary

| Category | Configuration | M3 | M3 Expressive |
| --- | --- | --- | --- |
| Color | Primary set, secondary set, tertiary set | \-- | Available |

## Tokens & specs

Use the table's menu to switch token sets. The FAB menu has a common token set and six color sets, three for each element (close button and menu item). [Learn about design tokens](/m3/pages/design-tokens/overview/)

Token

Value

Close

## Anatomy

![2 elements of a FAB menu.](https://lh3.googleusercontent.com/CsC2u7L3QL6svcrFzmZM2foCzJxzUjF93lwZuZ-oJW7RK-lKsp4Ei0iNdLiNhbFST2y9U34PClKaRDJVJK8dT582gl98nYYhiCGKAwXNSKO6=w40)![2 elements of a FAB menu.](https://lh3.googleusercontent.com/CsC2u7L3QL6svcrFzmZM2foCzJxzUjF93lwZuZ-oJW7RK-lKsp4Ei0iNdLiNhbFST2y9U34PClKaRDJVJK8dT582gl98nYYhiCGKAwXNSKO6=s0)

1.  Close button
2.  Menu item

![5 FAB menus showing the range of 2–6 items.](https://lh3.googleusercontent.com/KIWWfbv6JG0LIK8rzUSHcalH5BrNbW8_o8_U3uLqVkUDcdZNw4VS_nwoQ33DaomQXt95s6R_EY49aEQsWTQhxxDn2aYrDvU4ZSv4_arxasPc=w40)![5 FAB menus showing the range of 2–6 items.](https://lh3.googleusercontent.com/KIWWfbv6JG0LIK8rzUSHcalH5BrNbW8_o8_U3uLqVkUDcdZNw4VS_nwoQ33DaomQXt95s6R_EY49aEQsWTQhxxDn2aYrDvU4ZSv4_arxasPc=s0)

The FAB menu can have up to six items

## Color

Color values are implemented through design tokens. For designers, this means working with color values that correspond with tokens. In implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![12 colors of the FAB menu.](https://lh3.googleusercontent.com/tZxH6WCjbJBIqPlpd4_nt_npacUlh9WWyrIqJWs6Z1BCdGKbGFPt_BaW0CrG9HHNVQzBFYxxGU4hYm8LnEeWldCP9dezTNn3BwRy0uvJR2FoEw=w40)

1.  On primary container
2.  Primary container
3.  On primary
4.  Primary
5.  On secondary container
6.  Secondary container
7.  On secondary
8.  Secondary
9.  On tertiary container
10.  Tertiary container
11.  On tertiary
12.  Tertiary

## States

States are visual representations used to communicate the status of a component or interactive element. [Learn more about interaction states](/m3/pages/interaction-states)

### Close button

![4 states of the FAB menu close button.](https://lh3.googleusercontent.com/IBxWcDPavbWf55MsedxQZnCouJM3OZfbOudsfZQNrILcXhsyU_EI9iIEZ1UeKo-BwB7btsT0_0ZApQFHjZA4TOMjuOaY7TDtozX-qV09ssI=w40)

Close button states in light and dark themes: 

1.  Enabled

2.  Hovered

3.  Focused

4.  Pressed

### Menu item

![4 states of the FAB menu items.](https://lh3.googleusercontent.com/GHST3WLAtYjpsKWjXfoTtSy1pybwjIFPYgrw1GBjynLRHHSxmZWT-t8VhnSMGbOvYWG0O65po5ceeOVrqt5KKtMzyxazm1PLFiTj4KMgg-CB=w40)

Menu item states in light and dark themes:

1.  Enabled

2.  Hovered

3.  Focused

4.  Pressed

## Measurements

FAB menu items share the same measurements as the medium button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) specs. 

The close button should always be 56dp.

![FAB menu size measurements.](https://lh3.googleusercontent.com/6K5OibGh_d83LTRduhambKrHPD8JMVCHm19eHlen8e58fVWnoLyh8wWGZyLrdCPSO8Q3m01icndNcp7uuA0LLzeHzKWk60mGzGS3wrlB78o=w40)

FAB menu size measurements

The FAB menu animates from the top trailing edge of the FAB to ensure a smooth animation.

![FAB on a mobile screen with 16dp margins annotated.](https://lh3.googleusercontent.com/WhBYTHZseZ9EfjdiU3CqPLeEC36wFENc3fV_9h5eR9T5ze6ooQya6w3-f1JWj7bBOkJnQHFL3LpbcmG_N1zDZC9RT3dkok2EOHrbxNP5-rQ=w40)

The FAB should always have 16dp margins

![FAB menu opened from a FAB has matching margins of 16dp.](https://lh3.googleusercontent.com/HWYLNxfsd_aBEZRMazrMRxUthRgVqeA8_evmV1IZrkKg878uq7DK0dg5EZaR8q7n-QP_kLrEaYALuBpmKtQjnBiVXhjfz_1-yYZw-CG0MTQ=w40)

The close button and FAB share the top trailing corner as an anchor and appear in the same place

Larger FABs will place the FAB menu slightly higher, with larger margins underneath.

![Medium FAB on a mobile screen with 16dp margins annotated.](https://lh3.googleusercontent.com/gce3Kgv0OcZSOCiWq672oYOzAE9YJhGCC0oGLAcdxJ59BPnVhlV3HdjJPyrHiJy1LgUNnQkTKyOc9d6e2N7EL7hyrzOoMq8kRrAZwtFYUDJz=w40)

The medium FAB placement has 16dp margins

![FAB menu opened from the medium FAB has a 40dp margin from bottom of screen.](https://lh3.googleusercontent.com/kfovl3xRwL77xd7_XYJlFsLMybMdv16Nd0U9T5f87iZTyW3lo8gU72nkr81ZLumjSbxXIYnkvJX7ea84B8WmUtmukv4fhG1Wppp4IGnOgENn=w40)

The close button is placed higher to align with the top of the medium FAB

![Large FAB on a mobile screen with 16dp margins annotated.](https://lh3.googleusercontent.com/_9hh4PDq9vnfiJ2AAOX8VKeIFe9De47Av_acmKjjFbTkWQOGjZTLOqGY5cWqLsxkDLWjG4bgquVe81njJP9pL12nQlj_F7iNMl7KTugTGLWP=w40)

The large FAB placement has 16dp margins

![FAB menu opened from the large FAB has a 56dp margin from bottom of screen.](https://lh3.googleusercontent.com/zGkr1v4xtHihId5hAGO-4ESfqwzsweXE2xqXba2w8m0zl9Hswn3RWimV53apAvslPo7y0G2yrUchBqCB8sR1_96IAzSaJyALM8gE8GshfO85=w40)

The close button is placed higher to align with the top of the large FAB

On web, the FAB menu opens from the FAB, and inherits its states and specs from the baseline  menu Menus display a list of choices on a temporary surface. [More on menus](/m3/pages/menus/overview/) component. 

The gap between the FAB and menu can vary, but 4dp is recommended.

![FAB menu on web states and specifications.](https://lh3.googleusercontent.com/EvVSXxIPCIQmi5H_Tf238AlVWE4QCT1NNKDXE9IYMtRbF3FF7S-t0Y_sxaQ1dCGsRSQGM6EkWT2LI5yHx3lpiF-agl1JQ8D670U0NjvwG8Jd=w40)

Spacing and interaction on FAB menu for web:

1.  Enabled

2.  Hovered

3.  Selected
