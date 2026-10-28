---
source: https://m3.material.io/components/lists/specs
title: "Lists"
captured: 2026-09-14
---

# Lists

> Lists are continuous, vertical indexes of text and images

## Variants

### Expressive lists

Use the expressive list variant for more flexible styling, highlighted selection states, and customizable slots.

![2 expressive lists: a photos list on a tablet, and a song list on mobile.](https://lh3.googleusercontent.com/za34_v9MVYFLgx4_LMophxugdmjrYW0gWSPfWtA_ntmDC74Lx_qID9YyOa7IEqJ73xCrYnCAXghjFmDugBK86DdvpEUUKbkfWTYCA2pV5iwt=s0)

An **expressive list** has a segmented style and round corners

### Baseline lists

Baseline Baseline variants are the original M3 component designs. They may not have the latest features introduced in M3 Expressive, like updated motion, shapes, type, and styles. [More on M3 Expressive](<https://m3.material.io/blog/building-with-m3-expressive >) lists are still available to use, but don’t have the latest visual style, selection treatment, and slot functionality.

On web, expressive lists are built on top of baseline lists.

[See baseline list specs](/m3/pages/lists/specs#94cf7f4d-fe29-4fab-9aae-a99e9b754329)

![3 baseline list items with square corners.](https://lh3.googleusercontent.com/N4Dqm-y0qh8NW2KuKAqcRAmf_oyfUyeY2HgR3cHvoCwL-cM6j7fuAg97gGrX73Rs25WTv-POEG1ZSlXeyFPRkjhexmngaaSJMDJV0azeZXhV=s0)

**Baseline list items** have square corners and standard colors

| **Variants** | **M3** | **M3 Expressive** |
| --- | --- | --- |
| Lists (expressive) | \-- | Available |
| Lists (baseline) | Available | Not recommended. Use expressive lists instead. |

## Configurations

### Styles

The standard and segmented styles are a visual choice, and don’t affect a list’s behavior.

![A standard list and segmented list in dark mode.](https://lh3.googleusercontent.com/AjWZ3hS3wVVBYsai8chTl-DhNYum8MkyLgX24Q1dLLV43O6P2gRIbTqcrvQMXwyFG9Jai3R-zExVwkBZ5A3QZGW4EryAzfylOS6N0FB1brD8=w40)

1.  Standard

2.  Segmented

### List selection

A list can have only one selection mode at a time. For example, a single-action list can change to a multi-select list, but can’t be both at once.

![A single-action list with 4 items and no additional actions.](https://lh3.googleusercontent.com/b5GgNFwCct9zCo3T-5FIclsjz95tsQWzwwptHqyfIs9ooGmMg8C4FLlknKKmivn_ho5bbYRLRnaxophUvZLmKrLqm1bkGF4tEyHNR4_CObV0og=w40)

In a **single-action list**, each item is a single tappable area

![A list with 4 items. Each item has 2 trailing icons for additional actions.](https://lh3.googleusercontent.com/YZNJPefhDxEZHejO2AZtRcJlJmExP5SKLT5whDkHInauUNxfIgYBOXhlhXukAnjNfZRDhVUlk5fRz8QNgGAWqUaDPYkKANg3ZJ1vyK0GXZA=w40)

**Multi-action list** items include a primary action, and one or more secondary actions

![A list with 1 item selected.](https://lh3.googleusercontent.com/N1XQO63f9X32oDtv-OfmhY2QXVt4JpIIbZVk7BmB_2FcLR7QDWORgKJOQkA81-R5pujkxNiZHTMRgjMuAcytlrMERtLFsohNDJDu888bY3g=w40)

A **single-select list**

![A list with 2 items selected.](https://lh3.googleusercontent.com/ANybLHYX4h2Z9SkeL_p_Pp1K3Wg9plho_Lbg3-Z5d7NwszrsXTlRm434BJIm0mbM1Km5s9XFun2jYrYZqVcj3vRF0rRY-Dk3ZpeQLYrzooMq=w40)

A **multi-select list**

### List interactions

Lists can:

-   [Expand and collapse](/m3/pages/lists/guidelines#90a236ee-b587-4361-8911-34006f25a6f1)

-   [Swipe to reveal](/m3/pages/lists/guidelines#01204f7d-ce32-4739-aece-e95db24858c9)\*

[More on list interaction accessibility](/m3/pages/lists/accessibility#a6f937f5-3e1f-4db4-ba35-ac6dd9fef140)

A list can **expand** to include multiple items

![A list item is swiped, and reveals 3 more actions.](https://lh3.googleusercontent.com/7CIUKy6Fim2680D81iGn6XanxNoVlnFioAJfyYiwtTyF2xh2_RvyyLsLSFZoUj6LRfn6MVEyvaHyv_W0q2Al0pNkZL2JYjKuWHfF8q1vLvk=w40)

A list item can be **swiped** to reveal more actions

| **Category** | **Configuration** | **M3** | **M3 Expressive** |
| --- | --- | --- | --- |
| Styles | Standard | Available | Available |
| Segmented | \-- | Available |
| Selection modes | Single-action, multi-action,single-select, multi-select | Available | Available |
| Interactions | Expand, swipe\* | Available | Available |

\* Swipe-to-reveal interactions are only available on Android Views

## Tokens & specs

Use the table's menu to select a token set. The **common** set combines baseline tokens with new expressive shapes and sizes. The **expand** set has tokens for the expand interaction. [Learn about design tokens](/m3/pages/design-tokens/overview)

Token

Value

Close

## Anatomy

![Diagram with 10 elements that can be included in lists.](https://lh3.googleusercontent.com/Sa8xghsBnkEPnF8eS5BsRjuohsdTmqbkr_f1sENLSXj6Vvj60a-fAE32n9nUI8ErJeIbxkQPPl7wExD8qwxOM1aUbjPPV60s-E5vfR6EN6i7=w40)

Container and label text are required. All other elements are optional:

1.  Container

2.  Overline

3.  Label text

4.  Trailing text

5.  Supporting text

6.  Trailing icon

7.  Divider

8.  Leading avatar

9.  Leading icon

10.  Leading media - image or video

### Flexibility & slots

The [M3 Design Kit](https://www.figma.com/community/file/1035203688168086460) includes lists with custom slots for designing flexible item layouts. Think of a custom list as a container with three different slots: leading, content, and trailing. Each slot can hold a different element.

#### **Slot accessibility**

Slots are not accessible by default. Consider the following:

-   Elements must follow the rules, structure, and interaction patterns for lists

-   Use standard list item padding

-   Target size must be at least 48x48dp

-   Don't add interactive elements that make the list item difficult to navigate, especially for people using screen readers

[More on required accessibility guidelines](/m3/pages/lists/accessibility#538f23f7-689c-4516-bfc8-5f6933a43f5e)

![A diagram with leading, content, and trailing slots.](https://lh3.googleusercontent.com/xpDca9BbXlTiv20zpU4gfBwt6MkKXaY5ZNLRcxAljGC5QsVXgH3mKaHiaEI6okSs2gUhacnLEdM2zCIC5raKpqBZl476yJ8Qchx5bxvt6Kywwg=w40)

exclamation Caution

Reserve the use of slots for use cases that maintain the list’s accessibility and functionality

1.  Leading slot

2.  Content slot

3.  Trailing slot

warning

Caution:

Slots require custom code implementation that you must create and maintain

The **leading** and **trailing** slot positions must be a smaller width than the **content** section.

1\. **Leading slots** can contain:

-   Visual elements: Avatar, icon, image, or video thumbnail

-   Selection Selection lets users choose specific items to act on. [More on selection](/m3/pages/selection) controls: Checkbox, radio button, or switch

-   Customizations: Badge or larger image

2\. **Content slots** must be the largest-width slot and can contain:

-   Default content: Label text, supporting text

-   Optional add-ons: Badge, icon, in-line label, or more text elements

-   Avoid long lines of text to preserve readability

3. **Trailing slots** can contain:

-   Action elements or text: Icon, icon button, or trailing text

-   Selection controls: Checkbox, radio button, or switch

![Slot diagram showing slot placement in the middle of the list.](https://lh3.googleusercontent.com/jx4zxtSR4RN6N-1sCYapnbcg_EJOMuolnJBIPdx5aR9tEJ3PB1VtfNmemVGd-IKUMyPhpg1xj2FOUwBYzeekhv1rOIX4bE33jmMPNbV10RTL8w=w40)

The content slot must be the largest section, placed in the middle of the list item

#### Selection lists

For selection lists, use only one selection interaction per list item.

![A selected list item with a checkmark in the leading slot.](https://lh3.googleusercontent.com/_cCLtqaTv3_VJ2Su5-NcT91PPqYvyAFZeK-5w0av-NbLChQrKPvD3HSBWsc6adlc9M1DQGkIVd_eisASsmoVyA_2nO23ObPXfcuLp6O9sMU=w40)

check Do

Use only one selection interaction per list item

![A selected list item with both a checkmark in the leading slot and a bookmark in the trailing slot.](https://lh3.googleusercontent.com/7ikqKMFSD3KqUsrjy_D0FguVESN7UimX34YCtDgR8Cqm5sbof9nysVBBnBgjQukuuXjAQooDRC5mtopWMuGcpNL6TIQDNjGzQ3fkSDJVFfLZrg=w40)

close Don’t

Don't use multiple selection interactions in one item

## Color

Color values are implemented through design tokens. For designers, this means working with color values that correspond with tokens. In implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![10 list element color roles in light mode and dark mode.](https://lh3.googleusercontent.com/ARd2jFHJp7QY8tjQqnTd9qITF5sD6WqWXpapVsC25_-ej0okbpB1kkGYkJ8V7jSl-iFv0cW18ZGseOUM3x1CqZflXxkdU7T4znEQ0bJ3qCvx=w40)

List color roles used for light and dark themes:

1.  Surface

2.  On surface variant

3.  On surface

4.  On surface variant

5.  On surface variant

6.  On surface variant

7.  Outline variant

8.  Primary container

9.  On primary container

10.  On surface variant

## States

States are visual representations used to communicate the status of a component or an interactive element. [Learn more about interaction states

](/google-material-3/pages/interaction-states/overview)[More on list focus](/m3/pages/lists/accessibility#f7e067e1-722f-40c5-a95a-63929869bf3e)

### Default list items

![6 default list states in light and dark mode.](https://lh3.googleusercontent.com/WfsQdzz9ydTMtaG8lRdHEb8GmuDilZ3RVX7fNys6QemgIc3Euv0bnB2eKnFMZNxvApj-l2ZNNVTtCrgdS3CfuR6FmBFEv8ppLObmmykaM6yO=w40)

1.  Enabled

2.  Disabled

3.  Hovered

4.  Focused

5.  Pressed

6.  Dragged

### Selected list items

![6 selected list states in light and dark mode.](https://lh3.googleusercontent.com/plktb9RXA8a9SyxyQIpnF8qX_hMwZP0_SIXh-vuSRreRX9e8DbpLs90qXW4rIrtZyNyTmEbJTYmenlpK0EjS_q6HyaoZmb4ERojsZU2trNc=w40)

1.  Enabled

2.  Disabled

3.  Hovered

4.  Focused

5.  Pressed

6.  Dragged

## Measurements

![Size and padding measurements for list items.](https://lh3.googleusercontent.com/i93JWmCnwH8J71-rjNfpGP1SCy_v1gjfHOkLAph3y86kvhmpo9uT_x75vfDsKz_NxDbnt9C5GWA4xX0rba-hRzTmxtfWPw-zncFBcbmzKiLm=w40)

List item alignment, padding, and size measurements. The icon button height is dynamic, and automatically adjusts to fill the list item height.

### Shape morphing

When a list item is selected, the corner shape changes to highlight the active item:

-   Unselected corner radius: 4dp inner, 16dp outer

-   Selected corner radius: 16dp

![A 3-item list. The middle item is unselected, with a 4dp corner radius.](https://lh3.googleusercontent.com/ZP5JjdhEst35JLSuCdpnHvXs58yyjQdBREYdsNON0wtg-iHRjNtjvaPF6ekO3e3ceRrJWfJrP0ZfMVZ2EKbIqmfaRTuupnuHkDOkn1zwGORY=w40)

Unselected list items have a 4dp inner corner radius, and 16dp outer corner radius

![A 3-item list. The middle item is selected, with a 16dp corner radius.](https://lh3.googleusercontent.com/UeCgyEiHh76y34mk1S7ebdWal471s5Yjj34uWFbNb0sEgl-iICDps6JeHuje-47Lb8h1F1ii1GsWSra-8nEeqSH5Mp1R4KVCD_ff9IU9Bagi=w40)

Selected list items have a 16dp corner radius all around

## List (baseline)

The baseline Baseline variants are the original M3 component designs. They may not have the latest features introduced in M3 Expressive, like updated motion, shapes, type, and styles. [More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive) list variant is available and continues to work in existing products. However, the [expressive list](/m3/pages/lists/specs#ebf87f58-d5bf-4cb5-a856-d2bb104eec4d) variant is recommended for new designs.

### Tokens & specs

Baseline list tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview)  are in the **common** token set. Note: This set also includes several expressive tokens.

Token

Value

Close

### Color

Color values are implemented through design tokens. For designers, this means working with color values that correspond with tokens. In implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![9 baseline list element color roles in light and dark mode.](https://lh3.googleusercontent.com/c7bwcYNZe1HFiYuQW2r1uEEhDr_8PMPrgH911ney_P2AQnEZ64a34YKs47JbQnNjPbrtMfhw0FA7oQ3T1Euqx9HQ45ItoppUNl_7LUN5dX8=w40)

List color roles used for light and dark themes:

1.  Surface

2.  On surface

3.  On surface variant

4.  On surface variant

5.  On surface variant

6.  Outline variant

7.  Primary container

8.  On primary container

9.  On surface variant

### States

States are visual representations used to communicate the status of a component or interactive element.

![6 baseline list states in light and dark mode.](https://lh3.googleusercontent.com/5lf9R5VeSpT9MZ52tQ1Gr9G6LJSo3T61BAkwRTHYYL4e0_ymdXq3TFfAieV8fBpokbyEkAP1dql3Z23YsmOgHwTzZclYa1v5eLG9J7lTYcJu=w40)

1\. Enabled

2\. Disabled

3\. Hovered

4\. Focused

5\. Pressed

6\. Dragged

### Layout

#### One-line lists

![Alignment, padding, and size specifications for baseline list items with 1 line of text.](https://lh3.googleusercontent.com/z9QvwXHZzQCURyxwHxCKWIzN9bFCueiLYqnmwebzTymL8CQV6SfHPmE39ptDMlyCdxfAYa3ymS7TFM3eWfJEHnzXOq7ndUBAoqGr211VXq-K=w40)

Baseline one-line list alignment, padding, and size measurements

![Measurements for a 3-item list with 1 line each.](https://lh3.googleusercontent.com/khpu5JdGUDNFXqPEgOJ5ZWoXXvptYxD57jKRlck-ECQ1ge8a4pIcPdajOsbR3theeOCNLC8HoON7F71IWL5LsM5dFl_74zbveiiwPsZnriIqtQ=w40)

Baseline list item measurements and padding

#### Two-line lists

![Alignment, padding, and size specifications for baseline list items with 2 lines of text.](https://lh3.googleusercontent.com/LxLM2jQt0STwJFF6mM7jaAxeP09Gu8KXxM8a2gg_tCprAziEoUSMbqhONXIWU-yKoahTjXATtmhpqTaSxfe7x7UoAhhTD157g0YkJwJS-tse=w40)

Baseline two-line list alignment, padding, and size measurements

![Measurements for a 3-item list with 2 lines each.](https://lh3.googleusercontent.com/UIM_5cKOrqy1Jgy2wF6ND6qMT0cXmrXlqkqpSr1hUtJoShVECpFJt1jn39e7aoczco9L3ABwR7O4gd366Fdwg7tfQnWGas_8LRAM0LWM7z0NRg=w40)

Baseline list item measurements and padding

#### Three-line lists

![Alignment, padding, and size specifications for baseline list items with 3 lines of text.](https://lh3.googleusercontent.com/eoubrmM-Nl9VlpagzZuJBlQ7Ze1c-LjzmdIfk2sIxw16gjTgSUXdPTTLa1P1o1klSZk9SP6JZjG3BrVkBCnvatvekRTyo1Qkq2SoN5eSHEWy=w40)

Baseline three-line list alignment, padding, and size measurements

![Measurements for a 3-item list with 3 lines each.](https://lh3.googleusercontent.com/mX9bAsTDGyRcmgR60R9k2JBak4FqR4Iq5BHj_D9vHhsd3GwzcWjsnjvUzz4UDdrcd4KZE27gqKYtovW1ejGeDrnmqzdeoUULLnR8dLqTLZsf=w40)

Baseline list item measurements and padding

| Attribute | Value |
| --- | --- |
| Label alignment | Center |
| Label alignment when height is 88dp or taller | Top |
| Label left padding | 16dp |
| Leading element alignment (vertical) | Center |
| Leading element alignment (vertical) when height is 88dp or taller | Top |
| Leading element left padding | 16dp |
| Leading icon alignment (vertical) | Top |
| Leading icon top padding | 8dp |
| Leading icon top padding when height is 88dp or taller | 12dp |
| Trailing element alignment (vertical) | Center |
| Trailing element alignment (vertical) when height is 88dp or taller | Top |
| Trailing element left padding | 16dp |
| Trailing element right padding | 24dp |
| Padding above/below divider | 0dp |
| Targets | 48dp |
| Divider full-width | 100% |
| Divider inset left padding | 16dp |
| Divider inset right padding | 24dp |

### Configurations

#### Leading avatar

![1, 2, and 3-line list items with and without a leading avatar and trailing checkbox, in dark mode.](https://lh3.googleusercontent.com/YtV6g40j9-XQCPCAVu67QZhyyBxdzXse8Aq4zgVnIWxg5eL0YP-62b5XRWhoQFLGZ77XDbPLnnLnc6cQrbdVy0vdd5Qop9rt2L0vbVMrGlw=w40)

1.  With leading avatar

2.  With leading avatar and trailing checkbox

#### Leading image or thumbnail

![1, 2, and 3-line list items with and without a leading image and trailing checkbox, in dark mode.](https://lh3.googleusercontent.com/7K4R5eQvQLtvBGZ8iDlPrwl6-HftUdcPx0S6MRj8QLMuQMLlHQXj0EYkvlawvcIQOlaTsf1CAq8GIXC-zPanjI8B5o0Wznt8P_Os0Bir_Fq92A=w40)

1.  With leading image

2.  With leading image and trailing checkbox

#### Leading video

![1, 2, and 3-line list items with and without a leading video and trailing checkbox, in dark mode.](https://lh3.googleusercontent.com/811g1L2vKGQ0BTtqAoZPO-jApLgGPEDiV-7oi308iwDk-GrwrWTuQmCkNSok5-5XqCp7iNaldpc6cnpOL2Xe1RfUSfURXuucBF8O5k5WUomf=w40)

1.  With leading video

2.  With leading video and trailing checkbox

#### Leading icon

![1, 2, and 3-line list items with and without a leading icon and trailing checkbox, in dark mode.](https://lh3.googleusercontent.com/F_D2HGWtWYSMxDVgfkIRpfgvy8O26m5Gq1uzE8tvEuo9m9sMLfRhcnuVfZSE6hyxoICYNuSzjIfA1yRVpcXvaJG1b02lEpkYn-l0scGCQTmt=w40)

1.  With leading icon

2.  With leading icon and trailing checkbox

#### Text-only

![1, 2, and 3-line text only list items with and without a trailing checkbox, in dark mode.](https://lh3.googleusercontent.com/0D-xONvUbyoPV0EMlMrBItgWHQXbW1IV2dBVpIslSFeHc0mUoHbJsP3y9on5ym7Ch1ICbFcFH7026UzSdnQvTABrsRQhYe8yRiG2imFaK00=w40)

1.  With text only

2.  With text and trailing checkbox

#### Leading checkbox

![1, 2, and 3-line list items with and without a leading checkbox and trailing text, in dark mode.](https://lh3.googleusercontent.com/3pOgKx-2m1N3ewCJ-joHRZ0IFwf-GHaxzimTyF_4-SYx_80TL6UnaBywa7ogFoCCil_KQgEFXoNmwKuXP_6dGsFC0uMqCLGE5qQpUqHOGdrxZQ=w40)

1.  With leading checkbox

2.  With leading checkbox and trailing text

#### Leading radio button

![1, 2, and 3-line list items with and without a leading radio button and trailing text, in dark mode.](https://lh3.googleusercontent.com/-Eph6i5PJ8k8D5ABIpITkh-WLe2a-gMsM-sq2qCDM1cFBVfQN3FGAYAwiryrXRkrF8-8Q3Exypco2Ir4iP0s0IRbZ_n-ZvFI2ZTuNUzz7bs=w40)

1.  With leading radio button

2.  With leading radio button and trailing text

#### Trailing switch

![1, 2, and 3-line list items with and without a leading icon and trailing switch, in dark mode.](https://lh3.googleusercontent.com/6qcPlbTkPuUN2vByfw3QiZU3_haTWYgitgstbbYGI9ugO1r8LknZ2RPovveQ18B9EOKQNu5robyVqrQs0AvZchLuQXeckUeWZEn2meby2vkA=w40)

1.  With trailing switch

2.  With leading icon and trailing switch
