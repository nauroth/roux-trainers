---
source: https://m3.material.io/components/floating-action-button/specs
title: "Floating action buttons (FABs)"
captured: 2026-09-14
---

# Floating action buttons (FABs)

> Floating action buttons (FABs) help people take primary actions

## Variants

![An icon on the container of a FAB, medium FAB, and large FAB.](https://lh3.googleusercontent.com/CdTXXgPJ5XavoUEXtTKTczb0ENYt1VwreirVIJMyIYnwI6gFCYn1S4LCQyptGlF6EzKq9xL2hzPOQKv2RdKrhf6kTIj5vkcNY2u-VuQRqghs=s0)

1.  FAB
2.  Medium FAB
3.  Large FAB

### Baseline variants

The small FAB is still available, but no longer recommended. [Jump to baseline specs](/m3/pages/fab/specs#cd336045-e97d-4a6d-ac23-f778fa695e3c)

![An icon on the container of a small FAB.](https://lh3.googleusercontent.com/LVMfvx2rKsoVM1_1Pq9CQ8o0dDyfSQtfCxYgle_57GhDKX0oDkNepZr0yvyqmoI6mL-0QfWWfFkmVJV5RwLbJVGJ4YGXZBTcT9JW2-IPRQNpVg=s0)

1\. Small FAB

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| FAB | Available | Available |
| Medium FAB | \-- | Available |
| Large FAB | Available | Available |
| Small FAB | Available | Not recommended.Use a larger size. |

## Configurations

In the expressive update, the **primary**, **secondary**, and **tertiary** set colors were renamed to **primary container**, **secondary container**, and **tertiary container** to match the actual color roles used. New primary, secondary, and tertiary color styles were created to match the corresponding color roles. [View details in the color styles section](/m3/pages/fab/specs#67e71ec7-b520-405a-aa06-2decfa0b92a3)

| Category | Configuration | M3 | M3 Expressive |
| --- | --- | --- | --- |
| Color | Primary container, secondary container, tertiary container | Available as primary, secondary, tertiary | Available |
| Primary. secondary, tertiary | \-- | Available |

## Tokens & specs

Use the table's menu to select a token set. FAB tokens are organized by size and color. [Learn more about design tokens](/m3/pages/design-tokens/overview/)

Token

Value

Close

## Anatomy

![2 elements of the FAB.](https://lh3.googleusercontent.com/ANFTHcXuJZA9FSSl3I315pOU3UzwgUh_BZgfudPuvatQY4tLh2hREtb6ESAQZulQZBDe8iHcqQ548uZe2aJd2UGGv-8q2XXCBeGLdERRlXs=w40)

1\. Container

2\. Icon

## Color

Color values are implemented through design tokens. For design, this means working with color values that correspond with tokens. In implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens)

### Color styles

FABs can use several combinations of **color** and **on-color** styles, such as **primary** and **on-primary**. The following color mappings provide the same legibility and functionality, so the color mapping you use depends on style alone.

![6 FAB color styles in light and dark themes. Each style has 2 color roles, 1 for the container and icon.](https://lh3.googleusercontent.com/ZwUAoGfKU_nKPy45dUL885gk5_UbUfDoN2lY0oreRhS7vnkY12iBhnT3a1Fm1LydwMZVkqFYkQhYjVbGHx_hHsPwlmEm2KWwSQ75kOOKSkCsEA=w40)

1.  Primary container & On primary container (default)
2.  Secondary container & On secondary container
3.  Tertiary container & On tertiary container
4.  Primary & On primary
5.  Secondary & On secondary
6.  Tertiary & On tertiary

### Baseline color styles

Surface FAB color styles are still available, but no longer recommended.

![Baseline FAB style in all 3 sizes.](https://lh3.googleusercontent.com/Yt-382N_6b_TEqwyVAFZY_PG3zCmejVTFm6-tfbkUGpTqwgeECy2CNFH8n0bV1Spc6qU-ruc9l-Qja0_LpTeeYatxSxOi7qyzjF5tSeeXuEU=w40)

1.  Surface FABs

## States

States are visual representations used to communicate the status of a component or interactive element.

When using a non-default color mapping for FABs, make sure the state layer color is the same as the icon color. For example, the state layer color for the **primary** color style should be md.sys.color.primary.

![4 states of a FAB shown in light and dark themes.](https://lh3.googleusercontent.com/zCVGIf6lxv-ExBpOFiRo9G2yv-hIzjqPkEG0HKniNMzlBuWcEI8tXSvAndc3RL7Q0OOG56i6xP36k1rP1E-Fz92l4TGPZlkzdbNCF67rj2M=w40)

1.  Enabled
2.  Hovered (8% state layer) - elevation 4
3.  Focused (10% state layer)
4.  Pressed (10% state layer)

## Measurements

### FAB

![FAB size measurements.](https://lh3.googleusercontent.com/bY4SJyZCamFkqUakHco1-HsHBRJ55wn7zAWPhJCBlE9W4aA7wFnRywl8NSl_e7oToqU6JODtUnjeguVn7BJd5irT8DYnHQmq1lQKEvgN3g3Q=w40)

FAB size measurements

![FAB padding measurements.](https://lh3.googleusercontent.com/beevX-JBo5BT5oaSR6WnfIvvspxwDFUOsGg0TBWuDEAgjCYevFNjOhNnz6om1Pbxkal9dwoBR5HwAeyyn7LB8z1N-NrDjH_F9ZcxN_lEL60=w40)

FAB padding measurements

### Medium FAB

![Medium FAB size measurements.](https://lh3.googleusercontent.com/l-yip97Leh5bLumalSFuxS1DEMG6p3xJlXkUCTioixjvr0uXlzTaKK85zQzLnZPpgD9E72Zajd1yO9VMW1FKpSUVCWXbP5XIxIz6dUiubWALJw=w40)

Medium FAB size measurements

![Medium FAB padding measurements.](https://lh3.googleusercontent.com/qQZXXxZh9x9LRJyZI_2tblBDG7aMd-Rx3HQVX-ssihAGa-xSIGuOA2FZNPKeHgfbI-q19SD0IIUCT-xnLHk4Q-P2KSb-KnSm95tRPJQs2rKx=w40)

Medium FAB padding measurements

### Large FAB

![Large FAB size measurements.](https://lh3.googleusercontent.com/_1q2AqUdfZfCbC9aKRbQaXHO48GA5OSdH6ywXyyosvlIznXjrr0Wx-WM9xomavwT1qj6RA42qG01crP9I7GQPJ92BWnvJqijQ01UxjQKKcgS=w40)

Large FAB size measurements

![Large FAB padding measurements.](https://lh3.googleusercontent.com/PsH6GvakYnsKOw9X05rxaShBXItlCIc3qS-LGjmdITmzFgAnhxdiyhzUEM34i8B0MGtZoBoDdXE7eA1hYAFqcWEqFyipPBdhE0TirWp_HMWxTA=w40)

Large FAB padding measurements

## Baseline tokens & specs

Use the table's menu to select a token set. This only includes tokens for small and surface FABs, which are both no longer recommended. It doesn't include other colors, or large or regular FABs, since those are still currently used.

Token

Value

Close
