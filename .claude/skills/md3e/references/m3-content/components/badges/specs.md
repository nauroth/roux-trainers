---
source: https://m3.material.io/components/badges/specs
title: "Badges"
captured: 2026-09-14
---

# Badges

> Badges show notifications, counts, or status information on navigation items and icons

![5 aspects of badge anatomy on a navigation bar.](https://lh3.googleusercontent.com/1c2wjkW2_C9l1HmNkRT8GpeQ7WqSDcJdMKdNym4xk_wPBfFSgVP3NhSXBwBV52vI3L-Z7CAmnY7c-1WM1I9xfyj4EfI_ucXRgOhWSRvfLy5E=s0)

Navigation bar

1.  Small badge
2.  Large badge container
3.  Large badge label
4.  Large badge maximum character count container
5.  Large badge maximum character count label

![5 aspects of badge anatomy on a navigation rail.](https://lh3.googleusercontent.com/9yjKmecr7ZJh2Tm71DBDcwftLy2cMEpCW2yl73CCr7kUctUtmKaW78yFdO-0ZUSBXShJh9CDLZtQhcOyVt9CmdNhywVGvneguYneZMeui26j=s0)

Navigation rail

1.  Small badge
2.  Large badge container
3.  Large badge label
4.  Large badge maximum character count container
5.  Large badge maximum character count label

## Tokens & specs

Browse the component elements, attributes, tokens, and their values.

Token

Value

Close

## Color

Color values are implemented through design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) . For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![5 applications of badge color on light and dark theme navigation bars.](https://lh3.googleusercontent.com/GXqQAaWohBPLwvJAZUGaxFwy8CI_R4BLcAXPDq-e4P67CObmbEHL-GzwJbo6hBOmuqFuoV8QrPMXhmL2Zfca9_o5bTyMbxGhVxeM1Fwf7KU=w40)![5 applications of badge color on light and dark theme navigation bars.](https://lh3.googleusercontent.com/GXqQAaWohBPLwvJAZUGaxFwy8CI_R4BLcAXPDq-e4P67CObmbEHL-GzwJbo6hBOmuqFuoV8QrPMXhmL2Zfca9_o5bTyMbxGhVxeM1Fwf7KU=s0)

Badge color roles used for light and dark schemes in navigation bar:

1.  Error
2.  Error
3.  On error
4.  On error
5.  Error

![5 applications of badge color on light and dark theme navigation rails.](https://lh3.googleusercontent.com/8-bcqHO-CggN9L5OTiWVxPDT-wPzcurO0xXI7dZeo5htfXRjDwMnoMl_Qco9Z8NGG9CE2_5qrO2QdLV-nmieRVopeqNZeeHavE0GJqJpLRA=w40)![5 applications of badge color on light and dark theme navigation rails.](https://lh3.googleusercontent.com/8-bcqHO-CggN9L5OTiWVxPDT-wPzcurO0xXI7dZeo5htfXRjDwMnoMl_Qco9Z8NGG9CE2_5qrO2QdLV-nmieRVopeqNZeeHavE0GJqJpLRA=s0)

Badge color roles used for light and dark schemes in navigation rail:

1.  Error
2.  On error
3.  Error
4.  On error
5.  Error

## Measurements

![Annotation of badge sizes, padding, and measurements from the corner of the icon to the badge opposite corner.](https://lh3.googleusercontent.com/_9tsQOYHX4YH6bQJJwi1ylkI-nu2RJBNb84ivjXE8ksTqqpuE4w-riSO17Sh2gclSOMxjzlDHS_B2zKmb7uBo3Y1ZBPiLWi6UoHlHOAK9Zw=w40)![Annotation of badge sizes, padding, and measurements from the corner of the icon to the badge opposite corner.](https://lh3.googleusercontent.com/_9tsQOYHX4YH6bQJJwi1ylkI-nu2RJBNb84ivjXE8ksTqqpuE4w-riSO17Sh2gclSOMxjzlDHS_B2zKmb7uBo3Y1ZBPiLWi6UoHlHOAK9Zw=s0)

Badge padding and size measurements

| Attribute | Value |
| --- | --- |
| Small badge shape | 3dp corner radius |
| Small badge size (HxW) | 6dp |
| Large badge shape | 8dp corner radius |
| Large badge one digit size (HxW) | 16dp |
| Large badge max character count size (HxW) | 16x34dp |
| Small badge: distance from top trailing icon corner to bottom leading badge corner (HxW) | 6x6dp |
| Large badge: distance from top trailing icon corner to bottom leading badge corner (HxW) | 14x12dp |
| Large badge padding between badge and text container | 4dp |

## Configuration

Different badges are shown on navigation destinations in various states. States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview)

![Diagram of 3 badge variations shown on navigation destinations in various states.](https://lh3.googleusercontent.com/dmnjAmE1Ol38Ijd8REgLVSvLNv733cEX_WngU88yFKfiKjSdwanYmhHnCGueyMQAzJRxRMrvdgtC2KPaNzyG_B4Rn3ptMP-22440icqyFFKmFA=w40)

1.  Inactive with label - small badge
2.  Inactive with label - large badge
3.  Inactive with label - large badge max character count
4.  Inactive - small badge
5.  Inactive - large badge
6.  Inactive - large badge max character count
7.  Active with label - small badge
8.  Active with label - large badge
9.  Active with label - large badge max character count
10.  Active nav bar no label - small badge
11.  Active nav bar no label - large badge
12.  Active nav bar no label - large badge max character count
13.  Active nav rail no label - small badge
14.  Active nav rail no label - large badge
15.  Active nav rail no label - large badge max character count
