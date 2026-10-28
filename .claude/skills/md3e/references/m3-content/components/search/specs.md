---
source: https://m3.material.io/components/search/specs
title: "Search"
captured: 2026-09-14
---

# Search

> Search lets people enter a keyword or phrase to get relevant information

## Variants

When a person executes a **search**, results appear in a list below the search bar

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| Search | Available | Available |

## Configurations

### Style

Search comes in two styles:

-   Contained: Has an expressive M3 Expressive is a major update to Material 3, adding visually stunning features, components, and variants, plus updates to the shape, motion, and typography systems. [More on M3 expressive](https://m3.material.io/blog/building-with-m3-expressive) look and feel. It uses a filled container to separate a search bar from a list Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview) of suggestions or results

-   Divided ( baseline Baseline variants and styles are the original M3 component designs. They may not have the latest features introduced in M3 Expressive, like updated motion, shapes, type, and styles. ): Doesn’t have the latest visual style, motion, or flexibility

![An email inbox search bar in a contained style.](https://lh3.googleusercontent.com/mZviJwGIZh_IpUNqJc4qSUDOLFrmDTpbjX_bufkF90qso_IE6fyfgB1e2VmG5N_E6Picjiw05l7vRqKShb46NyHV0Od2WHuqcVP4my2v5YBZ=s0)

The contained style has a persistent, filled container, expressive motion, and rounded shape

![An email inbox search bar in a divided style.](https://lh3.googleusercontent.com/sA1JTXVXpg8LWSsXFxuxTShN08cJnxWigVkMDRzrHVQT6XnlvmPuvbVrmmeMZ7ZgDpNyRgv6T-zOjMh798bEXeoj0QjURzBE5oSimBCuYgSq4w=s0)

The divided (baseline) style uses a divider to separate the search bar from suggestions and results

### Layout

Search suggestions and results appear in customizable lists, with two layout options: full-screen and docked. [More on search layouts](/m3/pages/search/guidelines#4f6c921c-795f-4e06-9b12-27ae7d502adb)

![Full-screen search results with a search bar in the contained style.](https://lh3.googleusercontent.com/UN8OMCnrmxaASc6CRHtAONOcdeZf71JD03xLHV9sDt8-A6pMWEWH2DxRbjhxM7M8_IE2H7_w8mtdqqE56eamgN0CzGxQ-qpBH7UXsaOKE0c9-g=w40)![Full-screen search results with a search bar in the contained style.](https://lh3.googleusercontent.com/UN8OMCnrmxaASc6CRHtAONOcdeZf71JD03xLHV9sDt8-A6pMWEWH2DxRbjhxM7M8_IE2H7_w8mtdqqE56eamgN0CzGxQ-qpBH7UXsaOKE0c9-g=s0)

Full-screen layout in the contained style

![Docked search results with a search bar in the contained style.](https://lh3.googleusercontent.com/SlF8qBuCFFB-x7eQOBSJ6O2BgEmepkVWMQvU1b0gtBUdISdyG2QJbz0MeS6HPrO49nL_AZQaOil5-Rw8_SpIGMGHqioZRMJVOnwocdxXQQiamg=w40)![Docked search results with a search bar in the contained style.](https://lh3.googleusercontent.com/SlF8qBuCFFB-x7eQOBSJ6O2BgEmepkVWMQvU1b0gtBUdISdyG2QJbz0MeS6HPrO49nL_AZQaOil5-Rw8_SpIGMGHqioZRMJVOnwocdxXQQiamg=s0)

Docked layout in the contained style

![Full-screen search results with a search bar in the divided style.](https://lh3.googleusercontent.com/xcvU3lGYJQELKKllc3w1uW68diJE9YJPeiCtbZM8tC9Gzg0qg5TBBzjEiFkl8hYOWcik2XUQfgqpeXvX6hXmHX_oA5_PSHLKNeRZJT3i2NU=w40)

Full-screen layout in the divided style

![Docked search results with a search bar in the divided style.](https://lh3.googleusercontent.com/4FjOzW97D9JP3Mvu2GyfQ-PQhbAvpQRPjPjsqj3iM_125CTJgfv8X_u-qeSu4ti3i7ytSIZf4Crkoz5drPm10WS22uGld5GwXbFUhPKPLb1n=w40)

Docked layout in the divided style

| Category | Configuration | M3 | M3 Expressive |
| --- | --- | --- | --- |
| Style | Contained | \-- | Available |
|  | Divided | Available | Not recommended. Use contained. |
| Layout | Docked, full-screen | Available | Available |

## Tokens & specs

Use the table's menu to select a token set. The **search bar** set only contains tokens for the unfocused search bar. The **search view** set contains all other tokens when interacting with search, including all styles and layouts. [Learn more about design tokens](/m3/pages/design-tokens/overview)

Token

Value

Close

## Anatomy

Search includes a search bar and a container for suggestions and results. The container is empty by default. Use the list Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview) component to add content. In the divided (baseline) style, a divider separates the search bar and results.

![6 elements of search.](https://lh3.googleusercontent.com/nfgJlo7RsO4mElkJBSEo5E2yo1OPaLlu6o9PxA4lLhre5XuuiXAOj1LsjVPDk01MysoC5dasvtMXqSDJHFc1w6tycmubcpzPTA9uqm9hi-_z=w40)

1.  Search bar container

2.  Leading icon

3.  Supporting text

4.  Trailing icon and avatar (optional)

5.  Input text

6.  Container for search suggestions or results

### Examples

1.  With avatar

2.  With one trailing icon button Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview)

3.  With two trailing icon buttons

4.  With trailing icon button and avatar

![4 search bars with different trailing elements.](https://lh3.googleusercontent.com/4DOSj_PCy0dVTh_Mwwa-JmNfmmABObXarzG6mlKcjL7V1kdeh9_yrI9kQM5t1UhpsVOtc4bIq7mUwNYh2F50RDyInwgspspdrk-OHnd3lg=w40)

## Color

Color values are implemented through design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) . For designers, this means working with color values that correspond with tokens. In implementation, a color value will be a token that references a value.

### Full-screen layout

![6 full-screen search color roles in light and dark themes.](https://lh3.googleusercontent.com/GAGCWflTpnmoM0DwwKy1v0DdcEY5uW2zCwZpY8CaR61iuDKk3E7JY7yVPwx3ukkfq4B7qyOQOLInW7c7dRgKHXbbovgH_1bU5kc7pTZHwihLkg=w40)

Full-screen search color roles used in light and dark themes:

1.  Surface container low

2.  On surface variant

3.  On surface variant

4.  Surface container high

5.  On surface variant

6.  On surface

### Docked layout

![6 docked search color roles in light and dark themes.](https://lh3.googleusercontent.com/nq53ckQlKsYuKPXvcEYzyrhQ7Fevp-zkK7TzePU0X7GjTIveyJLPIHzZrZ3ejyWOGKASNBS7Ir8_si6O61ubAWXRj8r_zYZNHNNpFK5JLTpGWQ=w40)

Docked search color roles used in light and dark themes:

1.  Surface container high

2.  On surface variant

3.  On surface variant

4.  Surface container high

5.  On surface variant

6.  On surface

## States

States are visual representations used to communicate the status of a component or an interactive element. In [focused search](/m3/pages/search/guidelines#a9b2df31-8561-4326-82cd-41ed6532b765), individual elements maintain their own interaction states. [Learn more about interaction states](/m3/pages/interaction-states/overview)

### Search bar

![4 search bar states in light and dark mode.](https://lh3.googleusercontent.com/YhREfAtX7rK4eHN7NEAdJA3S1VPgesRkPzepAVAMJWT7aA0MSV9dxw8A248GG0PwSTS8FjyLqzorX8U4wiSSaFgvjC3mwqVRAW48XjyvexXNnA=w40)

1.  Enabled

2.  Hovered

3.  Focused

4.  Pressed (ripple)

### Search suggestions & results

Search includes a container for suggestions and results. The container is empty by default. Use the list component to add content.

![4 search result states in light and dark mode.](https://lh3.googleusercontent.com/r1ddmkgjt_KkZZC-S8XGOaYfxyTvkqH_xLNf6MgWq89lOToWeBm5mEo8Kz2QhMxh3H_FOF_EjatnziEymAHu_ieaLrNcWfVEHkaM3AtgfOvZGQ=w40)

1.  Enabled

2.  Hovered

3.  Focused

4.  Pressed (ripple)

## Measurements

### Search bar

![Search bar with leading and trailing icon size and padding measurements.](https://lh3.googleusercontent.com/mGptx_4JUwLVcbHz93O72eFnZN6uaFTxfpTyUe7VfjOxvJQn0kew6pVVDeiAeV4S5rWjZ0xQR-RsZMNC_1ZPJIYVvSeqIh18hIMxI9NpJQ4=w40)

Unfocused search bar with leading and trailing icon measurements

![Search bar with trailing avatar size and padding measurements.](https://lh3.googleusercontent.com/dURHAt9JC2YGWnXNGRK34cv-wK4xrn9GhPUNnWdQ3ZcgzjMRuwGi5KNwpFaWn19j7Nls-mp9PTDF79hTW8gbm_201W-ZYWlQ1nrpTHCtT6kG=w40)

Unfocused search bar with avatar measurements

In M3 Expressive, the search bar expands when focused. The margins change from 24dp to 12dp.

![Unfocused search bar margins of 24dp.](https://lh3.googleusercontent.com/OfNDMCVyfuBJXmI9HLNp26jlV-aQMKAawCfhfzbzlt-wYn0lR4BxkbXOVbiEP6I2tgz0HFbjC2SY5qvbZ3flpPLc4Ad6I8VdNoZbdvc2rZQ=w40)

Unfocused search bar margin measurements

![Focused search bar margins of 12dp.](https://lh3.googleusercontent.com/R4k1-IGNQH3zamzgc2laHGU70E3SDajTXtksf4eWJIQO7gmrwoj9PCGHzqhrOju-IKtpdeoOCRi7WqJ5_xLvnUgtneP1ve8Wdj-lFQ5O74An=w40)

Focused search bar margin measurements

| Element | Attribute | Value |
| --- | --- | --- |
| Container | Width | Min: 360dp, max: 720dp |
| Height | 56dp |
| Label alignment | Start-aligned |
| Leading padding | Unfocused: 24dp, focused: 12dp |
| Trailing padding | Unfocused: 24dp, focused: 12dp |
| Leading icon and label padding (from tap target) | 4dp |
| Label and trailing icon padding (from tap target) | 4dp |
| Avatar | Size | 30dp |

### Focused search

#### Contained style

![Full-screen layout size and padding measurements in contained style.](https://lh3.googleusercontent.com/b0xykJB3s1NEcZz6gQP37YfP-r6S3fbfqNKJaY-XbWy2AyoWViOPlmHhW6Lq6b4IbhmcDYAQJHonH59HvnDeIUdeXeMjIUdoWKNxbjQpN6xk=w40)

Full-screen search padding and size measurements for contained style

![Docked layout size and padding measurements in contained style.](https://lh3.googleusercontent.com/5Hst6KPsjyxhxQTptCBbkRahderHldeKa_33ucNVW9xZ9svHkx9eBhbhDKYR656D5DkvhdfdMIPhs5L9gWqq2yfEjn_AQvTQQg5Q2Y5WHhJ1=w40)

Docked search padding and size measurements for contained style

| Element | Attribute | Value |
| --- | --- | --- |
| Full-screen container | Width | Full width |
| Height | Full height |
| Docked container | Width | Min: 360dp, max: 720dp |
| Height | Min: 240dp, max: 2/3 of screen height |
| Search bar container | Height | 56dp |
| Label alignment | Start-aligned |
| Leading padding | 16dp |
| Trailing padding | 16dp |
| Leading icon and label padding (from tap target) | 4dp |
| Leading icon and label padding (from tap target) | 4dp |

#### Divided style

![Full-screen layout size and padding measurements in divided style.](https://lh3.googleusercontent.com/RhpQaBUaokljf6Qv0Pb6sUHofotzoGbLGs7O74snG2B9yjauRk1iv6JFhmSRsHNdUu3nacOIuEmi0RoGtRGrjv8cs9IT5uFzr30IZDU7kge9vw=w40)

Full-screen search padding and size measurements for divided style

![Docked layout size and padding measurements in divided style.](https://lh3.googleusercontent.com/52yDW7vsdT_ythER_zFPD7eAyH2K5BvU_V9fB4COC5khSNA81CffErRCuS1kxNZkIfPYCWceEYxrnu07HijSkwnq5sIb-oMGHk_PUOu88t4=w40)

Docked search padding and size measurements for divided style
