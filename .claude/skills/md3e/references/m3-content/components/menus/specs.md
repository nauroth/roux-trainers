---
source: https://m3.material.io/components/menus/specs
title: "Menus"
captured: 2026-09-14
---

# Menus

> Menus display a list of choices on a temporary surface

## Variants

### Vertical menus

Use vertical menus for a more expressive look and feel, including rounded corners, standard and vibrant color styles, more selection states, and submenu motion.

![2 vertical menus use shape and color to indicate selected state.](https://lh3.googleusercontent.com/ryW1crRfja9xt_7sPlT_XlF64XPHQjHmk6HkJ91EP23gfGW2Z1TNt8V1RsaAEt4bzOOow6wEtTrB4tk32rzhd4WL2dVMKVlbh3x6ZD3oqdK7=s0)

1.  Vertical menu with gap
2.  Vertical menu with divider

### Baseline variant

In M3 Expressive, baseline Baseline variants are the original M3 component designs. They may not have the latest features introduced in M3 Expressive, like updated motion, shapes, type, and styles. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive) menu is still available to use, but doesn’t have the latest shapes, color styles, selection states, and motion. [See baseline menu specs](/m3/pages/menus/specs#a80df2f9-8610-4ce0-b3a3-b9ee749d5c98)

![A baseline menu variant with square corners and standard colors.](https://lh3.googleusercontent.com/I8AoQRDKlS29lSyVHYVs4-2PKXVQUXC_wlPJx5IT1hWiga7bEC7DZUlNH_OEoICZN5hCf8ii45dpApcg23TY6JhadwCluvznISW6HNfGKHUc=s0)

A baseline **menu** has square corners, as compared to a **vertical menu’s** round corners and expressive styling

| **Variant** | **M3** | **M3 Expressive** |
| --- | --- | --- |
| Vertical menus | \-- | Available |
| Menu ( baseline Baseline variants are the original M3 component designs. They may not have the latest features introduced in M3 Expressive, like updated motion, shapes, type, and styles. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive) ) | Available | Available |

## Configurations

### Vertical menus layout

![2 menus: 1 standard, and 1 with a gap, creating groups.](https://lh3.googleusercontent.com/fJlPTJ2NqSiweyHvIr8M0iPk67mplnSmEnq_2SEOW1OvhT31iv4txdTlYrXWpNvmmBVVfJJzaE_lPSakS5hW51-I3oC8XuRu0l2lxGxm7zXi=w40)![2 menus: 1 standard, and 1 with a gap, creating groups.](https://lh3.googleusercontent.com/fJlPTJ2NqSiweyHvIr8M0iPk67mplnSmEnq_2SEOW1OvhT31iv4txdTlYrXWpNvmmBVVfJJzaE_lPSakS5hW51-I3oC8XuRu0l2lxGxm7zXi=s0)

1.  Standard
2.  Grouped

| **Category** | **Configuration** | **M3** | **M3 Expressiv****e** |
| --- | --- | --- | --- |
| Color | Standard | Available | Available |
| Vibrant | \-- | Available |
| Layout | Standard | Available | Available |
| Grouped | \-- | Available |

## Tokens & specs

Browse the component elements, attributes, tokens, and their values. [Learn about design tokens](/m3/pages/design-tokens/overview)

Token

Value

Close

## Anatomy

### Vertical menus

![A diagram of a vertical menu.](https://lh3.googleusercontent.com/AfTrO7v-T_4xnHi8Fa-xmOOn21wmjYQWZ9CqSCVGaG910Nd8K4lS3FqfcNgYQ0iF4FSY12e_AEjX1WNsFOOM02AuYBuTSGrwaTpCPKxUNBAQ=w40)

1.  Menu item 
2.  Leading icon (optional)
3.  Menu item text
4.  Trailing icon (optional)
5.  Badge (optional)
6.  Trailing text (optional)
7.  Container
8.  Supporting text (optional)
9.  Label text (optional)
10.  Gap (optional)
11.  Divider (optional)

## Color

Color values are implemented through design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) . For designers, this means working with color values that correspond with tokens. In implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

Menus have two color mappings:

-   Standard: Surface-based
-   Vibrant: Tertiary-based

These mappings provide options for lower or higher visual emphasis. Vibrant menus are more prominent so should be used sparingly.

![2 vertical menus: 1 with lower visual emphasis, and 1 vibrant menu with bold shades.](https://lh3.googleusercontent.com/UQTohIy6KP6b1-pM2Mvhf_SyQW6J3ibpKvf3Z5T8dI48XoYQ6DqhwG5ILCidkiXxCje50h4Tdx6VPzv1-2LVN2sSo_4JfItM9mhfrHEdHV8H=w40)

1.  Standard color scheme
2.  Vibrant color scheme

### Standard colors

![2 vertical menus with standard color roles mapped to 11 elements.](https://lh3.googleusercontent.com/nA4wviKihXfkWje8PlNIZNpYajfpoudcjVm30OYpC8UdMEdquwj9QeSziFOs7KjJ3IR-fioXjTLMlZsyKMaUgi3Bfy70RpHTCCsGaJX5hWkc=w40)

Vertical menus color roles used for light and dark themes:

1.  On surface variant
2.  On surface
3.  On surface (state layer)
4.  Surface container low
5.  On surface variant
6.  On surface variant
7.  Tertiary container (selected)
8.  On tertiary container (selected)
9.  On surface variant
10.  On surface variant
11.  On tertiary container (selected)

### Vibrant colors

![2 vertical menus with vibrant color roles mapped to 11 elements.](https://lh3.googleusercontent.com/6B9lmZdfYRC5nkKI-x6hS9U37bZC1o0jRWDkYe90mc-TV-OjPicvEckz5sYKYsoyP2hRO_hR3An76jKHGR-b8qAYp_56q49AgW4kMo8Ez98=w40)

Vertical menus color roles used for light and dark themes:

1.  On tertiary container
2.  On tertiary container
3.  On tertiary container (state layer)
4.  Tertiary container
5.  On tertiary container
6.  On tertiary container
7.  Tertiary (selected)
8.  On tertiary (selected)
9.  On tertiary container
10.  On tertiary container
11.  On tertiary (selected)

## States

States States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) are visual representations used to communicate the status of a component or an interactive element. [More on interaction states](/m3/pages/interaction-states/overview)

Shape morphing in vertical menus creates an expressive active state. As focus moves between submenus, the corner shape changes to highlight the active menu. [More on menu focus](/m3/pages/menus/guidelines#7cc1d01b-a454-48c7-8306-e60347ffd17f)

![6 vertical menu states in light and dark themes.](https://lh3.googleusercontent.com/9y63FlzafeIP9Tth6PTh9NKO6wwrYUZqCs6PTUKqIQPfYd7apIWRsvYx91maUHu43E0GoIkm7nDVC_DZA6K-15ItBpV-1KJ550QZCGSHlzo8=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed
6.  Active (main menu reveals submenu)

## Measurements

![Vertical menu marked with spacing and padding measurements.](https://lh3.googleusercontent.com/SyybBdmLyz7BXoGoAF1kjCwXx7BiZvB0e_I7bpFAIDO-W4YGSJ21CKgtu5PdH7J49aZfYEJbVPyjVFN2E9fWBLfUXDP44mP90E_Unc-g3c8=w40)

Vertical menu padding and size measurements

## Menu (baseline)

The baseline Baseline variants are the original M3 component designs. They may not have the latest features introduced in M3 Expressive, like updated motion, shapes, type, and styles. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive) menu variant is available and continues to work in existing products. However, M3 expressive vertical menus are recommended for new designs. 

### Baseline tokens & specs

Browse the component elements, attributes, tokens, and their values. [Learn about design tokens](/m3/pages/design-tokens/overview)

Token

Value

Close

### Anatomy

![Diagram of 6 elements of a baseline menu.](https://lh3.googleusercontent.com/j5d1I8gfzjOWuHT_-hl99nkZRsYTe7HewZawtXqtHSrfZhzBSF92oFrF4O2icV5C3AUdsRZTxRIgSGBhA37l-s5SWozyvwe70RLG6OwzZUSoQw=w40)

1.  List item 
2.  List item leading icon 
3.  List item trailing icon 
4.  Container
5.  List item trailing text
6.  Divider

### Color

![9 color roles of a baseline menu in light and dark themes.](https://lh3.googleusercontent.com/1vrmeDpf2FtiP2c9fRq9p_aeqONtRV3zqmzYfkoIOaJesocpZ19K_ZUuMj99rTWJxwAW_r9WSMEHiVvKYKjwvUcpYtdJ5Vz60I5nTjnhGSR5=w40)

Baseline menu color roles used for light and dark themes:

1.  On surface variant
2.  On surface
3.  On surface - opacity: 0.08
4.  Surface container
5.  On surface variant
6.  On surface variant
7.  On surface variant
8.  Surface container highest
9.  Outline variant

### States

#### Default menu items

![Diagram numbering the 5 default states of a baseline menu.](https://lh3.googleusercontent.com/9WZ8E98mBPsfeJqGE1w6ExWLXo1jACCCgppiykccySkhqcZCqFfrTs87Gp_XAlUNSqxRdv04cO62X2W3LQamj64dSRw2mEkG86v7cJaYZAI=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed 

#### Selected menu items

![5 states of a selected baseline menu item.](https://lh3.googleusercontent.com/Eg2mSAl6lckNeGZn60i3N6b7ltjvGCbssGUhr-LWmLpa2HDbKhgxvA72PVKqTsT0ho7uQZWaK_buL-Y81PKV7_GpS90CXSbLfCU9JqkRq-Y=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed 

[State specs are in the token module above](/m3/pages/menus/specs#c811d2fa-469a-4e4e-9d9f-0f535c5c9b4c)

### Measurements

![Diagram of a baseline menu’s padding, text alignment, height, and width.](https://lh3.googleusercontent.com/MRcY8zpznxkaZVmDq-MvnNSUQnLDJ3uftXolOX1MZ7ZczEmBCp4nro5uy3WDlxm8De9S3E9m7yoHTUtCD1IJmm-KOI975AQnrXOePAhR8TWM=w40)

Baseline menu padding and size measurements

| Attribute | Value |
| --- | --- |
| Container width | 112dp min, 280dp max |
| Corner radius | 4dp |
| Vertical label text alignment | Center-aligned |
| Horizontal label text alignment | Start-aligned |
| Left/right padding | 12dp |
| Left/right padding with-icon | 12dp |
| List item height | 48dp |
| Padding between elements within a list item | 12dp |
| Divider top/bottom padding | 8dp |
| Divider height | 1dp |
| Divider width | Dynamic |
| Leading/trailing icon size | 24dp |

### Configurations

A baseline menu appears when a person interacts with a button, action, or other control. 

A few examples:

1.  Button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview)
2.  Text field Text fields let users enter text into a UI. [More on text fields](/m3/pages/text-fields/overview)
3.  Icon button Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview)
4.  Selected text

![Examples of 4 baseline menu inputs.](https://lh3.googleusercontent.com/qaQR6Vom4qUYAtiLZOaGC34kpj4PCzx3--sowDis88NJ1VOQiwhipAIlwryE8_cYmOrso8ZXJ8O56o-PeU4ZC0SvopP5Ej5WB23rBIQmn9kL=w40)
