---
source: https://m3.material.io/components/extended-fab/specs
title: "Extended FABs"
captured: 2026-09-14
---

# Extended FABs

> Extended floating action buttons (extended FABs) help people take primary actions

## Variants

![3 variants of extended FABs.](https://lh3.googleusercontent.com/BU02XKNQEFAuGts8-NpS5UG9q4WN58-z0DM-KPlHoM4MBqV_R39vdorWW1ONyIKGphkVugmYfKEvEwPEUG4QsmAosBurPXcfoTs_RT4w4hta=s0)

1.  Small extended FAB
2.  Medium extended FAB
3.  Large extended FAB

### Baseline variants

The baseline extended FAB is no longer recommended in the M3 expressive update. Use a small extended FAB; the type style was updated from **label large** to **title medium**, and the inner padding was reduced. [View baseline extended FAB specs](/m3/pages/extended-fab/specs#01e114e6-8c3d-4d39-9376-65aa5c10e01b)

![1 baseline extended FAB.](https://lh3.googleusercontent.com/pcW-KzjKYIkI08HsYSKw2bRaDPQgikxhsVRQWVzMTObgMoJCv-Mx_IIXFzbhIDUXMXq-MaTXPrPWHipLOx_6LBdmJSC9UwJDsmg-rL9oxDU=w40)![1 baseline extended FAB.](https://lh3.googleusercontent.com/pcW-KzjKYIkI08HsYSKw2bRaDPQgikxhsVRQWVzMTObgMoJCv-Mx_IIXFzbhIDUXMXq-MaTXPrPWHipLOx_6LBdmJSC9UwJDsmg-rL9oxDU=s0)

1.  Extended FAB

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| Small extended FAB | \-- | Available |
| Medium extended FAB | \-- | Available |
| Large extended FAB | \-- | Available |
| Extended FAB (baseline)  | Available | Not recommended. Use **small extended FAB.** |

## Tokens & specs

Use the table's menu to select a token set. Extended FAB tokens are organized by size and color.

Token

Value

Close

## Anatomy

![3 elements of extended FABs.](https://lh3.googleusercontent.com/I81VtVjjXN2Snx8X1zpMv5Jp-q12chYm4QYjLJqDyHlxc6WVWKEa7y9y6NC761EXd6tsmGOBMY6xr0JQogHrvMTu0kC_4od3QLnE-OpJcy7J=w40)![3 elements of extended FABs.](https://lh3.googleusercontent.com/I81VtVjjXN2Snx8X1zpMv5Jp-q12chYm4QYjLJqDyHlxc6WVWKEa7y9y6NC761EXd6tsmGOBMY6xr0JQogHrvMTu0kC_4od3QLnE-OpJcy7J=s0)

1.  Container
2.  Label text
3.  Icon

## Color

Color values are implemented through design tokens. For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview/) 

### Color styles

Extended FABs can use several combinations of **color** and **on color** styles, such as **primary** and **on primary**. The following color mappings provide the same level of contrast and functionality, so choose a color mapping based on visual preference.

![6 extended FAB color styles.](https://lh3.googleusercontent.com/1n9kpQw8OhgILXZOD3kA6RzO20NmwQzt184w4PvBbS4qJxqseyJ81kr9yk5cbyr824e7gKDu01_ZzLI6OHKLZGRg9wAoqMG-0062EIHSGDc=w40)![6 extended FAB color styles.](https://lh3.googleusercontent.com/1n9kpQw8OhgILXZOD3kA6RzO20NmwQzt184w4PvBbS4qJxqseyJ81kr9yk5cbyr824e7gKDu01_ZzLI6OHKLZGRg9wAoqMG-0062EIHSGDc=s0)

Extended FAB color roles used for light and dark schemes:

1.  Primary container & on primary container (default)
2.  Secondary container & on secondary container
3.  Tertiary container & on tertiary container
4.  Primary & on primary
5.  Secondary & on secondary
6.  Tertiary & on tertiary

### Baseline color styles

Extended FABs should no longer use surface color styles. They’re still available, but not recommended.

![1 baseline extended FAB color style.](https://lh3.googleusercontent.com/SSZr-dBlNa4O7kbOQi9byJEQSVaZzUOBXZnNoDoxhb5G8Fbd3pQdTfo14YWIS6QTQTIcd70uYAYZWbp1gKwJoUoGZTam2-L5DOYQOHRU0Xnr=w40)![1 baseline extended FAB color style.](https://lh3.googleusercontent.com/SSZr-dBlNa4O7kbOQi9byJEQSVaZzUOBXZnNoDoxhb5G8Fbd3pQdTfo14YWIS6QTQTIcd70uYAYZWbp1gKwJoUoGZTam2-L5DOYQOHRU0Xnr=s0)

1.  Surface container FAB

## States

States are visual representations used to communicate the status of a component or interactive element. [Learn more about interaction states](/m3/pages/interaction-states/overview)

When using a non-default color mapping for extended FABs, make sure the state layer color is the same as the icon color. For example, the state layer color for primary mapping should be md.sys.color.primary.

![4 states of extended FABs.](https://lh3.googleusercontent.com/vHxV15QsYc98EQyLenfT7dOu3npLcTkKTLpe5YY2K0m6eNsWU8yXQs_d6XBpaPJ44MJODwpB8iCIgKlZcfnnuHEoReYQZyiWB4QmGyekbJ1I1g=w40)

1.  Enabled 
2.  Hovered - elevation 4
3.  Focused 
4.  Pressed

## Measurements

![Extended FAB padding and size measurements.](https://lh3.googleusercontent.com/9IwzFk5XDN4m9vzImfQxg0mR1AtQJ86eAkPH3xC5h2GPFNLw5Wqd0VWHGgMOUOSFF32Iv3M3ypdaXDq9lJRUf9xBuZXQcPS3iw7oWPLa3zqV_A=w40)

Size and padding measurements of the small, medium, and large extended FABs

![Extended FAB margin measurements.](https://lh3.googleusercontent.com/mirVSM4EDUYdZY4eF-l65mg6of6d1WI8u5nP3qZcTjDUZK8BdZl7QTjSzFtzkr-XBjVBzDFZpQ2CLi8k1gdYhc8LyHnqulU-U2XbkHumiIA=w40)

Extended FABs should have margins of 16dp

## Baseline extended FAB

![3 elements of baseline extended FAB.](https://lh3.googleusercontent.com/BfVkr1OjcKMdwpCyy_0JfIAuGNx2Z_AlwSDie5SKQmAIXXlRW1yGqf7UTrO1Vfn95sgY935-quSQmFr0p01AFg6fKCqv6G-a6Kt0XVpt1fM=w40)

1.  Container
2.  Label text
3.  Icon

### Baseline configurations

![Baseline extended FAB with icon.](https://lh3.googleusercontent.com/6_OCmL-IgDTNGgDG2E6_5sUGlzaM1D_glmAKdNWtLl2P-8vOR1ur1HBHKt1pfb1gp8TmMRFu3_ukbqP80rXfE7QL4JDjql7OuYuJLR_2UPfiFw=w40)

With icon

![Baseline extended FAB without icon.](https://lh3.googleusercontent.com/BHRB4fj8KQKyqwOGul6DN_sqlayRB3Gs5AMUQ5xbnA0jWl5JIDr7a6oM3eKNUM927e8s92y-w1T_S_Q8FJWVz_NLhMSkZkARwYIKXh8ayw0=w40)

Without icon

### Baseline tokens

Use the table's menu to select a token set. The baseline extended FAB token sets are organized by common tokens, then by surface and branded color styles. Other color styles like primary, secondary, and tertiary are still used by the latest extended FABs.

Token

Value

Enabled

Hovered

Focused

Pressed

Close

### Baseline colors

Color values are implemented through design tokens. For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview/)

![3 baseline extended FAB color roles.](https://lh3.googleusercontent.com/Z_RWOWfuQ9kdznoWiL_ox5ol2kDw2Th205LV2FDuX-rbxH3Rb1FZnDcgdSThvYwkuetWn9d2z62KhvWafnAuQ0e_Pwpt99WKFDwe8X6HegxGxA=w40)

Extended FAB color roles used for light and dark schemes:

1.  Primary container + shadow
2.  On primary container
3.  On primary container

#### Additional color mappings

Extended FABs can use other combinations of container and icon colors. The color mappings below provide the same legibility and functionality as the default, so the color mapping you use depends on style alone.

![3 deprecated extended FABs with different container and icon colors.](https://lh3.googleusercontent.com/xbMM1zoCiBMpqJ8DQ-gHGAoRRZ79UMQ5YGIaQyTy66Y5xKkq336JfbSeJzydBNoWJ_ojOQ4O2LfNwOp5SPEFBvASSLg1i1-WW1_he1W705r9rA=w40)

Extended FABs can use different combinations of container and icon colors

### Baseline states

States are visual representations used to communicate the status of a component or interactive element. [Learn more about interaction states](/m3/pages/interaction-states)

![4 states of baseline extended FAB.](https://lh3.googleusercontent.com/9NboEFx6AmMw3XNkz0ES2hdV0_-I3cQ50CSV64-QsxrOzwZO38CynMks9fxg3wvvq6GSZAQnWv1R-opDSxGpXn1O9g9PHbkKu-ah-ppXsEXa=w40)

1.  Enabled 
2.  Hovered 
3.  Focused 
4.  Pressed

### Baseline measurements

![Margins of baseline extended FAB.](https://lh3.googleusercontent.com/60hw0Nm5mZX8sW8xBY_eU64kA2Ju_GszCM_g9H5tr_aDrtbv_7lq2939sVn0QF8aZfjIrSoz9dUBK3EDw96wDCoQn8XEPoAqrwF_JPTZu3JZ=w40)

Extended FABs have a padding of 16dp

![Size of baseline extended FAB while on screen.](https://lh3.googleusercontent.com/oOjTBewuhKfDILRyn0mW8Y_Qv5I9nnTgLUnNJEwEARSu_ocixeZ9V2CTUmz5fjkT8G04_iXPUQWdMq3qFHG7deqTR5G8nXh8SxWqipbdWWdoQw=w40)

Extended FAB height, width, and icon size

| Attribute | Value |
| --- | --- |
| Container height | 56dp |
| Container width | Dynamic, 80dp min |
| Container shape | 16dp corner radius |
| Icon size | 24dp |
| Padding | 16dp |
