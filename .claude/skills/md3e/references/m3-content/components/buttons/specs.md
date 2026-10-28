---
source: https://m3.material.io/components/buttons/specs
title: "Buttons"
captured: 2026-09-14
---

# Buttons

> Buttons prompt most actions in a UI.

## Variants

![Diagram comparing buttons with toggle buttons.](https://lh3.googleusercontent.com/aWhLmNGkz1dTgFMtkYbi73APlAcBdOgT9xviQJI1Riu10oLOdnakrGGJv6HBp6_9LHBw9lPT-lqF_xNp_Es_lsO2J0W-zT4MewEEILa9OQZZzw=s0)

1.  Default button

2.  Toggle button

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| Default | Available | Available |
| Toggle (selection) | \-- | Available |

## Configurations

![Diagram showing configurations of buttons.](https://lh3.googleusercontent.com/qtqOoy4NuC3QFb7pfhfLLiZPXFCDrM-rLo38WY2V4ao1NGmIml-wNHF0Gk4ydIEttrZsWWGMlACpZAu5YiQZTrK5NaG52Zqr0PSE4IpQVBoi=w40)![Diagram showing configurations of buttons.](https://lh3.googleusercontent.com/qtqOoy4NuC3QFb7pfhfLLiZPXFCDrM-rLo38WY2V4ao1NGmIml-wNHF0Gk4ydIEttrZsWWGMlACpZAu5YiQZTrK5NaG52Zqr0PSE4IpQVBoi=s0)

1.  Size

2.  Shape

3.  Color

4.  Small button padding

| Category | Configuration | M3 | M3 Expressive |
| --- | --- | --- | --- |
| Size | Small (default) | Available | Available |
| XS, M, L, XL | \-- | Available |
| Shape | Round (default) | Available | Available |
| Square | \-- | Available |
| Color | Elevated, filled (default), tonal, outlined, text | Available | Available |
| Small button padding | 24dp | Available | Not recommended.Use 16dp |
| 16dp | \-- | Available |

## Tokens & specs

Use the table's menu to select a token set. Button token sets are separated into common tokens, color, and size. [View baseline tokens](/m3/pages/common-buttons/specs#c305d304-a6c0-466a-a48c-8d0718a29ae2)

Token

Value

Close

## Anatomy

![Diagram labeling 3 parts of a button.](https://lh3.googleusercontent.com/Vd3wDLwuuQXUGiUdmogIFMY3V4WzpDIz9WvepaTJAmdJhaiKXTxshhrlEwJizdXlvsISt1vMjtSw5AdEr74lkf-uocBR-renjDhE95DrK05r=w40)![Diagram labeling 3 parts of a button.](https://lh3.googleusercontent.com/Vd3wDLwuuQXUGiUdmogIFMY3V4WzpDIz9WvepaTJAmdJhaiKXTxshhrlEwJizdXlvsISt1vMjtSw5AdEr74lkf-uocBR-renjDhE95DrK05r=s0)

1.  Container

2.  Label text

3.  Icon (optional)

## Color

Color values are implemented through design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) . For designers, this means working with color values that correspond with tokens. In implementation, a color value will be a token that references a value.

-   There are five built-in button color styles: elevated, filled, tonal, outlined, and text

-   The default and toggle buttons use different colors

-   Toggle buttons don’t use the text style

star

Note:

These color roles were chosen to create design coherence and familiarity. Other color roles can be used as long as the container and text have a 3:1 contrast ratio. For example, tertiary and on tertiary.

![Diagram shows dark and light color schemes for buttons.](https://lh3.googleusercontent.com/rniAgyk0C8Ys1AH7Lxciu7xnv8p_HA8iVm0AmoTKx5Ntedg_FdE0W66BG1udiPwCbGek3f0g8R2vlirupxprvRfYX8ID2uslj_bVROAMHgI=w40)

A. Elevated, B. Filled, C. Tonal, D. Outlined, E. Text

1.  Default

2.  Toggle: unselected

3.  Toggle: selected

|  | 1\. Default | 2\. Toggle unselected | 3\. Toggle selected |
| --- | --- | --- | --- |
| Elevated containerElevated icon & label | Surface container lowPrimary | Surface container lowPrimary | PrimaryOn primary |
| Filled containerFilled icon & label | Primary On primary | Surface containerOn surface variant | PrimaryOn primary |
| Tonal containerTonal icon & label | Secondary containerOn secondary container | Secondary containerOn secondary container | SecondaryOn secondary |
| Outlined containerOutlined icon & label | Outline variant (outline)On surface variant | Outline variant (outline)On surface variant | Inverse surfaceInverse on surface |
| Text icon & label | Primary | \-- | \-- |

## States

States States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) are visual representations used to communicate the status of a component or interactive element.

### Elevated button states

The elevated button style has an elevation of 1 by default and 0 when disabled.

#### Default

![Elevated button states.](https://lh3.googleusercontent.com/n_5apeWPNXiSqDwG3UYvNY5A-FyHJOvbkdqH0Mq47KIxzVbHAq76C6DM1jG_TYTWiHgMPMjgdWA8N3zSKVM2ISe5HiS3MdV5P_u6A8rscjg=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed

#### Toggle

![Toggle elevated button states.](https://lh3.googleusercontent.com/GQDxPmCDjJpgGWRA_VTNzseTsmouIs0lh8IVP8woIQk4cgCiAnDMZThBIfxG1GHEqTlUoL585KoCLj8c-1gmGB4OXQJs9qhHkSyjVB0ad6tE=w40)

A. Unselected, B. Selected

1.  Enabled 
2.  Disabled 
3.  Hovered 
4.  Focused 
5.  Pressed

### Filled button states

#### Default

![Filled button states.](https://lh3.googleusercontent.com/RwG9SEB4yIRACbW517DyRW2mUveISG198EE64jJb0f277Q33MLyuP9uiKdCmeWhZeWKXDx_yRiSQtlWlpaFp2kRVRX7LlCN5TWc-QwwqszbX3Q=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed

#### Toggle

![Toggle filled button states.](https://lh3.googleusercontent.com/oM057IT2WiygsF0GMglnN22051Pgx_Xop2in-So8huFo-CUC5_gyPnBYksLf-wCXu4r6pZJQ1Qg9tPTvn5MUNHjXHilHCB-dPu7kkAF4PhVc=w40)

A. Unselected, B. Selected

1.  Enabled 
2.  Disabled 
3.  Hovered 
4.  Focused 
5.  Pressed

### Tonal button states

#### Default

![Tonal button states.](https://lh3.googleusercontent.com/wdF2kYSVD8W-FnPza7kOisTKCDc5FZKUskKzi8j3yZ0m7Ras4cKeoBCwUjpRr4EXjlSia_UfiRWFCCXl4VhbU9ZiwpbpVZetlqdtRGey0LU=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed

#### Toggle

![Toggle tonal button states.](https://lh3.googleusercontent.com/SKh3_709LukNHRLX1h-4h3GWRx_g-PfrLaU28b33QM11qyAwNH2d-NPumu2KYhi9TECvF2QqeQ4ptDYUxgdMvdYTbcTiwmm-dsg6CS8Bd_0=w40)

A. Unselected, B. Selected

1.  Enabled 
2.  Disabled 
3.  Hovered 
4.  Focused 
5.  Pressed

### Outlined button states

The outlined button’s container fill is invisible at rest, but the opacity and state layers behave the same as other button styles when disabled, hovered, focused, or pressed.

#### Default

![Outlined button states.](https://lh3.googleusercontent.com/0RiSKbIPPzMC64WPAmZrA0Xi2bxyaBAQ8vmzHpEp1yjrhjSJqC0xv3_4jJgYaqh7v4BH7lAJZXkkN_HVyyIupF2JQQWfsYkCl5w2Pd_HEq90=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed

#### Toggle

![Outlined button states.](https://lh3.googleusercontent.com/U9yJ0EWfejvgr2j2FQRTLwN2Fk4H0pM4JxoYvRkql-jgBFGSqS26j--nqv_a23AL1Fhsjk5GAjgK4E1h_zDezwK_14acNyWL1Gy4_DWIgkY=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed

### Text button style states

The text button’s container is invisible at rest, but the opacity and state layers behave the same as other button styles when disabled, hovered, focused, or pressed. There is no toggle text button.

![Default text button style states.](https://lh3.googleusercontent.com/BYjS_Tdp0yXd5Dh1aupX_ELYzONtiZU21cT0y1kA5Pb3ne2T43AcIQ85r6jYIkHW6yRp0kQb7TNPiw5qKB9OuAyLUK1GKAa84krq1YOktFnf=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed

## Shape morph

### Pressed state

When pressed, buttons can morph to become more square. Both round and square buttons should have the same pressed shape.

The corner radius value differs for each button size. [See full button corner measurements](/m3/pages/common-buttons/specs#b1f39738-6f3a-409b-8f08-4cab6d78d756)

![Shape changes of a button.](https://lh3.googleusercontent.com/Si9asaI7X7SFuvDU46W5nHcZ9p9EVqCsu1Tb4Qfp1iPp2ho_kp85z_RXtK9EcyBqT5eoV-A4i8sJSQeDlY-tBGTl21KSLqLGpzM66hTvyZ67=w40)

A. Round button, B. Square button

1.  Enabled
2.  Hovered
3.  Pressed

### When selected

In addition to changing shape when pressed, toggle buttons also change the resting shape from round (unselected) to square (selected). 

If the resting unselected shape is square, the selected shape should be round.

![Shape changes of a toggle button.](https://lh3.googleusercontent.com/5hC5Vdz-txbFAuGYY8Bkij-tCNyyjHc1B2zDoFQ5WWkR9Aw6yCNB8hKYi3CO0DJ2xlNab2JbXSPsm4HrByy21SU6_KVLN7PYaiSOeDlSmsbc=w40)

A. Round button, B. Square button

1.  Enabled

2.  Hovered

3.  Pressed

4.  Selected

## Measurements

![Diagram of measurements of all button sizes.](https://lh3.googleusercontent.com/JI2E9iCMwHgDDeC9fzCaTP1M974jPyBdpsV1OJoM83PKO0IINS4OUaPbdn9iT6ogQQqtFeBYb_IBT_sycEUkj3S6t4KEjZbGE1xT7-RL0JDX=w40)

Padding and size measurements of each button size

1.  Extra small

2.  Small

3.  Medium

4.  Large

5.  Extra large

### Target areas

Extra small and small icon buttons must have a target size of 48x48dp or larger to be accessible.

![Diagram of small button target areas.](https://lh3.googleusercontent.com/35JMIvVuBd4UPv4LMpZ6rM_Hkn4S2UZlra92CcqY20cPp9334PxNr8KPaR-1P1d8q6Emonifwrp79hmxD5e2Ia_FQBDuKQhTKptbwn8uvPNZUQ=w40)

A. Extra small  B. Small

1.  Round button 
2.  Button with icon
3.  Square button

### Corner sizes

![Diagram of corner radii of buttons.](https://lh3.googleusercontent.com/sULNWNl9-8wPo3EiYHaqeFSTE3FnFXFotQmIJzabpV-JJPCaSWvwhK3u82A6CeaMqBYmQz3dyWBArTDULDf2FRWfTYV2ZtrX0IA2na9bdbJa=w40)

|  | XS | S | M | L | XL |
| --- | --- | --- | --- | --- | --- |
| A. Round button | Full | Full | Full | Full | Full |
| B. Square button | 12dp | 12dp | 16dp | 28dp | 28dp |
| C. Pressed state | 8dp | 8dp | 12dp | 16dp | 16dp |

## Baseline tokens

Use the table's menu to switch token sets. The baseline button token sets are organized by color. 

Token

Value

Close
