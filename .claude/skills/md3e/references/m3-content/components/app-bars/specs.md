---
source: https://m3.material.io/components/app-bars/specs
title: "App bars"
captured: 2026-09-14
---

# App bars

> App bars are placed at the top of the screen to help people navigate through a product.

## Variants

![4 variants of app bars.](https://lh3.googleusercontent.com/MgtUMHWDy00vUnks39ztFGEG28QfDRkbQeSEcmqqCBT0K5FWc4uP_-7g3LLkrMJC-g76aUQW1xsZQ9AyyGhpc5G3-_Cs_d-CCP7HTCk6LlVi=s0)

1.  Search app bar
2.  Small
3.  Medium flexible
4.  Large flexible

### Baseline variants

The baseline M3 **medium** and **large** app bars are no longer recommended in M3 Expressive, and should be replaced with **medium flexible** and **large flexible** app bars, which are similar visually, but have multi-line support, a shorter height, and can contain a wide variety of elements, like images. [Jump to baseline app bar specs](/m3/pages/app-bars/specs#faec9baf-140f-41dc-8b88-2792e90d9d5d)

![2 baseline app bar variants, medium and large.](https://lh3.googleusercontent.com/4jbnUGWxs16YDyExE7HfAtikzuBERI0C_O6PT00TGtEezDt5SyYIv-V3mUOU_fOoUYk9hJ4uowBcG1c5bR86ChJqq1RQIhbX8Yp4YTMNnBP7CA=s0)

Baseline variants

1.  Medium

2.  Large

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| Search app bar | \-- | Available |
| Small | Available | Available |
| Center-aligned | Available | Merged into **small**.  Use centered-text configuration. |
| Medium (baseline) | Available | Not recommended.Use **medium flexible** |
| Medium flexible | \-- | Available |
| Large (baseline) | Available | Not recommended.Use **large flexible** |
| Large flexible | \-- | Available |

## Configurations

### Text alignment

![4 variants of app bars with different left and center aligned text headlines.](https://lh3.googleusercontent.com/BOvvsqx3bdHcU0IHwgEXTkgiwJuhU9DOQ6kiQLIdTQ8qiU9YfauXCNFb6HxOTs-PbX7r-OTeqQBlOav0aNXzUSe6JfDHP8zw2jDorA65wQo=w40)

Text labels, including supporting text, can be aligned to the leading edge or centered

| Category | Configuration | M3 | M3 Expressive |
| --- | --- | --- | --- |
| Text alignment | Leading edge (default) | Available | Available |
| Centered | \-- | Available |

## Tokens & specs

Select a token set to view in the table's menu. App bar token sets are organized into a common token set, and size-specific tokens. [Learn about design tokens](/m3/pages/design-tokens/overview)

Token

Value

Close

### Search component tokens & specs

The default search Search lets people enter a keyword or phrase to get relevant information. [More on search](/m3/pages/search/overview) component tokens are used in the search app bar.

Token

Value

Close

## Anatomy

![5 elements of the component.](https://lh3.googleusercontent.com/UCS56fBRH7I7KiKUuK_vBKPDUCV85-8G25OIOM9PxyVN3dgUEozWDPgj2liGjw8OI7X5PTD6n2Icr1V7sZOS-nxTjMPTIth4wlj9KfX7kUth=w40)

1.  Container
2.  Leading button
3.  Trailing elements
4.  Headline
5.  Subtitle

App bars can be customized to include:

-   An image or logo
-   A subtitle
-   A filled icon button

Avoid customizing the size of the heading and subtitle, or adding too many actions. 

![3 app bars: 1 with a newspaper logo, 1 with a subtitle, and 1 with a filled icon button.](https://lh3.googleusercontent.com/Fwsip8AL-32WvFsouymOxtfDAK9nsgZu6JggbrZsEe1uIQ8Tm8E48NLKY4SPX1C687pcmu65V9xyHu3pme-1kwEyl5YsC1OFfJAKZlLlAGmI=w40)

The app bar can have different layouts depending on which elements are shown

### Search

The search app bar can include trailing actions inside and outside the search bar. When the search bar is selected, it should open the search view The search view is a full-screen modal often used to display a list of search results. It can also be opened by selecting a search icon. [More on search view](/m3/pages/search/overview) component.

![5 elements of the search app bar.](https://lh3.googleusercontent.com/OCgIkeJ9Mk6ibxz6tz0uSYOLL4zgYINQJdBhE0uqKG_KivTrv_i-4wbgiz0sNLxmAymZPsvXyPnH2i49hWvgI39jvCv0yra8PF-vnxPR3xFt=w40)

1.  Container
2.  Leading icon button
3.  Hinted search text
4.  Trailing icon or avatar
5.  Search container

![3 layouts of icons in the search app bar.](https://lh3.googleusercontent.com/T7dF8lnMsgF-ctH-bJxhvlTFNYfNCtaKFJ3_kWhNeWOT70jVcz5e2K6dcCMdvyTEMMwCh0VusP7U_cQT5PbY5eBTpwClU8jQPYWIUhRPfLImPA=w40)

1.  A leading element and a trailing element outside search
2.  A leading element, a trailing element inside search, and a trailing element outside search
3.  A leading element and two trailing elements outside search

### Image 

An image can be placed in the app bar. In small app bars, this can replace the label text.

![Graphic replacing text headline content.](https://lh3.googleusercontent.com/rM0ncqi1MU1B-iUCqpNvS1r6GIsPwybXwHKtPEB0hAo1k3NMLM3dqUpH_NK-k9vOlihsEFSneMWwVTYCaF5nWJOEPpRUupcrtmDHCB0C3d8a=w40)

Images can be added to app bars and can replace label text on small app bars

### Filled trailing icon button

The app bar's trailing icon buttons can be replaced with a single, primary, or tonal filled icon button in default or wide sizes. 

![App bars configured with filled trailing icons.](https://lh3.googleusercontent.com/-4xgb9ld5H8Q6HnmK-ld1O5qM0mfNJy_2WtE_WggmW1lbxjvzZp6GwimCbCZ92GiXuzdak-pBH-hlzbZ-oyphKRiho2Myrlsaal8-7UtKjqa=w40)

The trailing icons can be configured to be a single filled icon button

### Subtitle

![App bars configured with subtitles below their headlines.](https://lh3.googleusercontent.com/v37338PXuQO2QKzvv6eDPG3ATToEprV5f1RbgAP6J85Kkk5uUpqPb3M3U7L3YgKxNTDd_UlhkKMBrpc3PYRL8WgyTS5aax6L2gOQWYwxfsRo=w40)

The medium flexible and large flexible app bars hug the text contents, so they are taller when a subtitle is visible

1.  Small
2.  Small with subtitle
3.  Medium flexible
4.  Medium flexible with subtitle
5.  Large flexible
6.  Large flexible with subtitle

## Color

Color values are implemented through design tokens. For design, this means working with color values that correspond with tokens. For implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

All app bars share the same color roles. On scroll, the container changes color to **surface container**.

![4 color roles of the leading edge app bar in light and dark scheme.](https://lh3.googleusercontent.com/xpRALH4p7nwRTCrQbJRWXJjjKyr6SI9Lcz7DShFjgvTK8Zsvl45I69Y-m1OfJcWkp9Cc3cOV4UyCqZzo60kRaRSgGeatz80PbrGnGv1DQpXO=w40)

App bar color roles used for light and dark themes:

1.  Surface
2.  On surface
3.  On surface variant
4.  On surface
5.  On surface variant
6.  Surface container (on scroll)

![4 color roles of the center-aligned app bar in light and dark scheme.](https://lh3.googleusercontent.com/VsxxC6080HgD_QsQ6TLzafi0UFXVHAU3R4k2NDE144aZQBU9CYNjEOCd7tPTV3ur_gcYzZJO3LezRLYaNLoPcQnYpyuyQyH-C8KLRv1eIC2C=w40)

Search app bar color roles used for light and dark themes:

1.  Surface 

2.  On surface variant

3.  On surface variant

4.  On surface variant

5.  Surface container

6.  Surface container

7.  Surface container highest

### Scroll states

![Color roles for app bars when flat and on scroll.](https://lh3.googleusercontent.com/tRaHBa-YYJoR3wAF4m6Sr9plFPu3juGtThHBYYsKPfs-6nHxwPrhg7vEpJfwSA6hfyjHrl6k4Tzh4Z6WC95kDllNp9Q5nYiRXO_KpYBKsrIqiQ=w40)

The app bar changes color when flat or on scroll. The search bar can also change color on scroll.

1.  Flat
2.  On scroll

## Measurements

### Search app bar

![Search app bar size and padding measurements.](https://lh3.googleusercontent.com/GLzA-Bs2FesMv8_iNKDnGK-rmtF4_QBlkamCvjO3g0PR4Ohvu51Whqg_8UDbMF2Be0V0fNt2yy_YIYhbkBa3RaH32GCEcE7CYs7Qk7aJDWg=w40)

Search app bar padding and size measurements

### Small app bar

![Small app bar size and padding measurements.](https://lh3.googleusercontent.com/ZwtGrnk6IwZVeEjENYgXaaBm1o78pMZeWbKEvSKrXMaC4EsY1x5d6AyMOmeP5xBxsEtomfWPfRQeyjo9aj5TUCZfqTZ6DExOrrf4lPD6skGwOQ=w40)

Small app bar padding and size measurements

### Medium flexible app bar

![Medium flexible app bar padding and size measurements.](https://lh3.googleusercontent.com/tO6HUsX_WzDWijRcUovy7YHYqXB9nFkpIdJ1rb9xRF1f53fb5lfigX2U4DhrYnf54WpJxf_VMpqs2fVNtnQwzv1gxreCwgyge4K5p9WC71BK=w40)

Medium flexible app bar padding and size measurements

### Large flexible app bar

![Large flexible app bar padding and size measurements](https://lh3.googleusercontent.com/LZMvu4Uh6hlTMMN4lXncpG5Pl1yEm5A90QCK9BFFHrKogTsNr1PAWKpJ0su8E4BmXMOdKMzH3jk2BGZJcqrSGZ1AFOK40R6D9QHkBuhtEqgI=w40)

Large flexible app bar padding and size measurements

* * *

## Baseline app bars

The **medium** and **large** app bars are no longer recommended in M3 Expressive. Use the **medium flexible** and **large flexible** app bars in their place.

![4 elements of medium and large app bars.](https://lh3.googleusercontent.com/spB1ibTSmb0Q0vxy5WCz5hWULWcRYZTwf1gzkHBzBAOOx1kjBmF9_rN3rFooHw8wbZdYdo2piv_rickk6jDEeIefd5ZOWM6Gq7kaaLqNRZib=w40)

Medium and large app bars have the same elements:

1.  Container
2.  Leading button
3.  Trailing icons
4.  Headline

### Tokens & specs

Select a token set to view in the table's menu. Baseline app bar token sets are organized into medium, large, and older baseline token sets. [Learn about design tokens](/m3/pages/design-tokens/overview)

Token

Value

Close

### Color

Color values are implemented through design tokens. For designers, this means working with color values that correspond with tokens. In implementation, a color value will be a token that references a value. [Learn more about design tokens](/m3/pages/design-tokens/overview)

![4 color roles of the medium top app bar in light and dark scheme.](https://lh3.googleusercontent.com/a4e5waYXECuiUcxK2FX7nimSG7veFWYYiISRWkojPDXodUOqnLT2npaBpJhmc1AUBfOr9G3hcZ4TmUi9jLCRUdP0IqDw5pTdSCFYgc-zXcs=w40)

Medium top app bar color roles used for light and dark schemes:

1.  Surface
2.  On surface
3.  On surface
4.  On surface variant

### Measurements

#### Medium app bar

![Diagram of medium app bar padding and size measurements.](https://lh3.googleusercontent.com/iJPK4tOaZD9dNaqh6nZnimQR2kRKofGNS-fhCmjPY4mo8cyDKbIJg5nY8Osnxa7EVzTNNSIkA_3OqGAYWX8FJbOMxCThqTI6CocN1Ltci4sSaA=w40)

Medium app bar padding and size measurements

#### Large app bar

![Diagram of large app bar padding and size measurements.](https://lh3.googleusercontent.com/JaHOGKnlXOrSArCuG_UGfPN8Muth2rZ_WwBu0ZlvUPFvU8HdVdkDWZoz1M3pm1GB7vw8o_IUE-So65otchOt2cHBpzKsOJTdm2N5uw2aBc-A=w40)

Large app bar padding and size measurements
