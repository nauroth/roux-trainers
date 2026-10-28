---
source: https://m3.material.io/components/navigation-rail/specs
title: "Navigation rail"
captured: 2026-09-14
---

# Navigation rail

> Navigation rails let people switch between UI views on mid-sized devices

## Variants

![2 variants of navigation rails.](https://lh3.googleusercontent.com/iQ9mPuq7sZfsnSF_EfYMxQdypYp9K_fDEGHm0-4zuKdHXU48Kf7zItSC0hxmu3QW_ugdX67kQeQlrkgs7GzF6Kpo1FFERw1SFlVd6DCQC5gm=s0)

1.  Collapsed navigation rail

2.  Expanded navigation rail

### Baseline variants

The baseline navigation rail is no longer recommended, and should be replaced by the collapsed navigation rail. [View baseline tokens](/m3/pages/navigation-rail/specs#d4d97764-20ec-496f-a6f3-0d423940ec5a)

![Baseline navigation rail.](https://lh3.googleusercontent.com/_GDghBF084KxFoboNpBiBukL7eC9btnn0Mb6Jk_768f3C75CzUZ_lS1sJyKteHLGeR2sa__sSE-baRgcdfAxgBR3jxoUV13DucOJj2FXrDM=s0)

1.  The baseline navigation rail is no longer recommended

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| Collapsed navigation rail | \-- | Available |
| Expanded navigation rail  | \-- | Available |
| Navigation rail (baseline) | Available | Not recommended.Use **collapsed navigation rail**. |

## Configurations

![Standard and modal layouts of navigation rail.](https://lh3.googleusercontent.com/Q6opw4o2Z-4QOi0ydyk2R1MLywKayfVfAMWjKN6nvzz6OZzoJOGsl_BvoY_XaQp0dSV2iH4gwgEJ0tYqAXEKQKJy1Gko4-M5s1umRBx2MaHD=w40)![Standard and modal layouts of navigation rail.](https://lh3.googleusercontent.com/Q6opw4o2Z-4QOi0ydyk2R1MLywKayfVfAMWjKN6nvzz6OZzoJOGsl_BvoY_XaQp0dSV2iH4gwgEJ0tYqAXEKQKJy1Gko4-M5s1umRBx2MaHD=s0)

1.  Expanded layout: standard
2.  Expanded layout: modal

| Category | Configuration | M3 |       M3 Expressive |
| --- | --- | --- | --- |
| Expanded layout | Standard (default) | Available as navigation drawer Navigation drawers let people switch between UI views on larger devices. In the expressive update, use an expanded navigation rail. [More on navigation drawers](/m3/pages/navigation-drawer/overview) | Available |
| Modal | Available as navigation drawer Navigation drawers let people switch between UI views on larger devices. In the expressive update, use an expanded navigation rail. [More on navigation drawers](/m3/pages/navigation-drawer/overview) | Available |
| Expanded behavior | Hide when collapsed | \-- | Available |

## Tokens & specs

Browse the component elements, attributes, tokens, and their values. [Learn about design tokens](/m3/pages/design-tokens/overview/)

Token

Value

Close

## Anatomy

![9 elements of collapsed and expanded navigation rails.](https://lh3.googleusercontent.com/zju3SaKNZtIg8oswdNqjqbU2pgzAazbfcyzRL_wo1UneMQSp9D6yIVFbPDeEtmh09MwYuYYHofz5j6DGbwBVO9cBdpqUxwJehXqI242Tz80bUg=w40)

Collapsed and expanded navigation rail elements:

1.  Container
2.  Menu (optional)
3.  FAB or Extended FAB (optional)
4.  Icon
5.  Active indicator
6.  Label text
7.  Large badge (optional)
8.  Large badge label (optional)
9.  Small badge (optional)

## Color

Color values are implemented through design tokens. For designers, this means working with color values that correspond with tokens; in implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![Color roles of 9 elements of collapsed and expanded navigation rails in light and dark color schemes.](https://lh3.googleusercontent.com/d3PlE8MkpZrvAvwFNjnOiUQXi8R7ep0qmhurwSRvAq_yf3Eb44NIbzr78sGxD1gNgCLxhWdlVv_Mti8eRMPEi3Nn0WQRUnjZNO_XRFQt6Yan=w40)

Navigation rail color roles used for light and dark schemes:

1.  Surface container (optional)

2.  On secondary container

3.  Secondary container

4.  Secondary (vertical), On secondary container (horizontal)

5.  On surface variant

6.  On surface variant

7.  Error

8.  On error

9.  Error

## States

States States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) are visual representations used to communicate the status of a component or an interactive element.

The navigation item’s target area always spans the full width of the nav rail, even if the item container hugs its contents.

![4 states of collapsed navigation rails.](https://lh3.googleusercontent.com/1IxCo2XIMga54ROSNhrWET0gIRcndin6fwUN_DdJMu2VZ4PFpdW1-c-vio2nIOXxmj3p_tGkbBc1N0KGdzg6iuqMCS1_ZsgFG1FfzS6Fppk=w40)

![4 states of expanded navigation rails.](https://lh3.googleusercontent.com/uvOYTNSaWtfWdqdoR0tVR9eCjmd4f-AEfdMVEacZJc0VwURGK8_8FeAvzOY4Kr3sV9YzZfIF-gguMC8haBwaeJB7tgykjwBvSFhlQtuC4AzahA=w40)

1.  Enabled
2.  Hovered
3.  Focused
4.  Pressed

## Measurements

![Padding and measurements for expanded and collapsed navigation rails.](https://lh3.googleusercontent.com/RTqY8bTqiMpwcsU_pJkWy9rMeFIjRoSs3m15t8w64kdPnvtTTTE6_Dklo68o5dm4vNj_CA14xM6FrVZkyBtYlf4hcPjBAMOTQ3rvBDY60BrmGw=w40)

Navigation rail padding and size measurements

## Common layouts

![4 common layouts of collapsed navigation rail.](https://lh3.googleusercontent.com/Q7TK1on1e6Srj9rXvfTaKHDKgYKSh07xaPRGq0zatThZiQkiwf-UMR1-H60g1esYikZSHRedr3h-lkPoU4ICPljobiH8pOBRjSINWIs7ANcD=w40)

![4 common layouts of expanded navigation rail.](https://lh3.googleusercontent.com/z_uzDW3EjZiO_WRnWUJem6qKFygJFreR0EX_C_F4b4gyUdaq1KV9KFpJqgJpBWstqQ1O-CdNp0N6b7mAK8Xp6CkIKHupoRyeHFQkqfLEpnI=w40)

1.  Three navigation items 
2.  Three navigation items with a menu
3.  Three navigation items with a FAB
4.  Three navigation items with a menu and FAB

* * *

## Baseline navigation rail

![8 elements of baseline navigation rail.](https://lh3.googleusercontent.com/ADBFvMHXuRRv0_6Z-N3tRHlMrh88FQQszAdMrNhAM-p2IdU_v8QQRA0cezT6n2vPpVmhQ7R8saOYcTsI1okUonFMqT8GzmCfjymxB9hHPv8=w40)

1.  Container
2.  Menu icon (optional)
3.  Icon
4.  Active indicator
5.  Label text
6.  Large badge label (optional)
7.  Large badge (optional)
8.  Badge (optional)

### Tokens & specs

Token

Value

Close

### Color

Color values are implemented through design tokens. For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![8 color roles of baseline navigation rail.](https://lh3.googleusercontent.com/bYdm_ngSm_bDBlh7cCiignDkbte5hHytBrpjYGp_9BfBLH1hF2zPxV-Oqdm6nn8fSHRROojsHBUwN5etdowcM8IHoq2XH1Qy7rRFtshsl5ca=w40)

Navigation rail color roles used for light and dark themes:

1.  On secondary container
2.  Secondary container
3.  On surface
4.  On surface variant
5.  On surface variant
6.  Error
7.  On error
8.  Error

### States

States are visual representations used to communicate the status of a component or interactive element.

![8 states of baseline navigation rail.](https://lh3.googleusercontent.com/q4Ce0kmHkUU63AUNns9xbrnQx2UlJBT9dfmW-RzlP1iM5biz8sOwR4G7BU8pEmGTbMSy2nnmyYzPFBNwQdyM6b8tJ20dhgkmDEF86WcUpVE=w40)

Navigation rail states:

1.  Enabled (on active destination)
2.  Hovered (on active destination)
3.  Focused (on active destination)
4.  Pressed (on active destination)
5.  Enabled (on inactive destination)
6.  Hovered (on inactive destination)
7.  Focused (on inactive destination)
8.  Pressed (on inactive destination)

### Measurements

![Baseline nav rail size measurements.](https://lh3.googleusercontent.com/PsBusqTr-OE5bCxYRV_i7_t-UpABd6wh-bbKu-mzMDv5-O3eoKvh-B144jLbqI5sf4B63G0hAv5k0m_hf7qTNA6ktxvfRVdk0cILpP3kghqk=w40)

Navigation rail size measurements

![Baseline nav rail padding and margin measurements.](https://lh3.googleusercontent.com/HCDSa0-MhFtUTT-jj2x4OG8rghWPku3boxc3_KKZzParDgXb2n-nNyXxh-eq8DyOgLXlqmxFHoc2sShKRMWf8m2DKVLHdtpCfsY9_7GGTFA=w40)

Navigation rail padding and margin measurements

### Configurations

Common arrangements of elements within a navigation rail.

![5 configurations of the baseline navigation rail.](https://lh3.googleusercontent.com/0ArxFOIUj1oF4bmcdt98kcylfvstmfHlWXRI2sVpFC5UG246qn6yr4185ERKim5I5IYDjTqDnWX_fMqGE_nrXr_7dJj5H7sCznQWP5SfkX4h=w40)

1.  With a menu
2.  With a FAB
3.  With menu and FAB, without labels
4.  All destinations with text labels
5.  With menu, FAB, and label text for all destinations
