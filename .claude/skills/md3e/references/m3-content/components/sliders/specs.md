---
source: https://m3.material.io/components/sliders/specs
title: "Sliders"
captured: 2026-09-14
---

# Sliders

> Sliders allow users to make selections from a range of values

## Variants

![3 variants of sliders.](https://lh3.googleusercontent.com/-UgZpnEJ6uET5STSdzpCWEydsoa9cfqtNAbzpuKX9-4jQ3d8IdU0EjRtpfgizjIX8I7XM-ETfXPEnfKi7XNZSQWJTTyKrLHjS95bsb6ZQc7smQ=s0)

1.  Standard

2.  Centered

3.  Range

| Variant | M3 | M3 Expressive |
| --- | --- | --- |
| Standard | Available as “continuous” slider | Available |
| Centered | Available (web only) | Available |
| Range | Available | Available |
| Discrete | Available | Available as “stops” configuration |

## Configurations

![Orientation and size configurations of sliders.](https://lh3.googleusercontent.com/PUKZpvA88_wvpKTUHRmGx0XIOjDEUAFWbO14A9AMUDyX-mu0w9qTo7ywQTKCcm8ERhdQHoohHwHt3Z-Tqo29eVw4_KyVf3pn-Z-UIcsszrYc=s0)

1.  Orientation: Horizontal, vertical
2.  Size: XS, S, M, L, XL

![Optional anatomy configurations of sliders.](https://lh3.googleusercontent.com/QFc1hXc78XHCuqhH4no1fQLDRvSzLaW1K8El5jIW1v3K3sNXjMquxEGcaq22u48Mq5kCqGRoPSCD7m8H37sAwyP_XyI6xY4AJp2GGW3e7-hs=w40)![Optional anatomy configurations of sliders.](https://lh3.googleusercontent.com/QFc1hXc78XHCuqhH4no1fQLDRvSzLaW1K8El5jIW1v3K3sNXjMquxEGcaq22u48Mq5kCqGRoPSCD7m8H37sAwyP_XyI6xY4AJp2GGW3e7-hs=s0)

1.  Inset icon
2.  Stops 
3.  Value indicator

| Category | Configuration | M3 | M3 Expressive |
| --- | --- | --- | --- |
| Inset icon | No (default) | Available | Available |
| Yes | \-- | Available |
| Orientation | Horizontal (default) | Available | Available |
| Vertical | \-- | Available |
| Size | XS (default) | Available | Available |
| S, M, L, XL | \-- | Available on Android Views (MDC-Android). Available as tokens on other platforms.\* |
| Stop indicators | No (default), Yes | Available as “discrete” slider | Available |
| Value Indicator | No (default), Yes | Available | Available |

> \*Configurations only available using tokens don’t have implemented presets in code. To change the size, swap the default size tokens md.comp.slider.**xsmall**.\[...\] with those of the desired size.

## Tokens & specs

Slider tokens are organized into a common token set, and token sets for each size. Switch token sets from the table’s menu. [Learn more about design tokens](/m3/pages/design-tokens/overview)

Token

Value

Close

## Anatomy

![6 elements of a slider.](https://lh3.googleusercontent.com/Tj-xqiQbRv2zhsiRQmk6ZkdhFwQgK6qEZx40m4TMy8W7B8ulEiPsHemm1KcY6ejMeYjYFnJF2GHGnWzVq-v8yDHTRon1k-oZGg9VuIa2C4Q=w40)

1.  Value indicator (optional)
2.  Stop indicators (optional)
3.  Active track
4.  Handle
5.  Inactive track
6.  Inset icon (optional)

## Color

![9 color roles of a slider.](https://lh3.googleusercontent.com/CV3PfOlQdK3A_3O8RLyu_r-GjqW7NK-qgzQmKuo5M5tWBmI6eDGdNfq7p8bTvQbP1jYCpk8WaRktgSsCrKD9Lp1vbaeCtE2einRTw6e1J7dbGA=w40)

Slider color roles used for light and dark schemes:

1.  Inverse surface
2.  Inverse on surface
3.  Primary
4.  On primary
5.  Primary
6.  Secondary container
7.  On secondary container
8.  On secondary container
9.  On primary

## States

![5 states of sliders in light and dark schemes.](https://lh3.googleusercontent.com/PgYCQrkBSJUOlzQMXu0BmIe16Fho4X9NdvdYYSOtE1tIl0aucZejoImkNIfdTpbPity3lWJxxg2WSoilrjogEOWTcVhxyGN0aYZl0sRWQuMpJA=w40)

1.  Enabled
2.  Disabled
3.  Hovered
4.  Focused
5.  Pressed

## Measurements

![Common slider padding and size measurements.](https://lh3.googleusercontent.com/WLMws1Xen6XFUKvbCJS2NM4jwTMVmQxFlh8QhTslZGI-TR2eoFPXUp-ck8i0FhO_U2cy0cW5qnNP6Qkrsu1kJ-eztl1sJ_o5lHzXSUtr4FAMPw=w40)

Padding and size measurements for common sliders

![Slider padding and size measurements at each size configuration, XS to XL.](https://lh3.googleusercontent.com/FH3TsHZ1NpVLh--XKKb2ygB9rd0bgZ6ig1vGxWhQu5HOFVbk_8CXIxMAVdJnPxKj3fojh8jFh6qDqm41tD0R3YRaK0luWcktoURO5RZfBsuO=w40)

Padding and size measurements for XS, S, M, L, and XL sliders

| Attribute | XS | S | M | L | XL |
| --- | --- | --- | --- | --- | --- |
| Track height | 16dp | 24dp | 40dp | 56dp | 96dp |
| Label container height | 44dp |
| Label container width | 48dp |
| Handle height | 44dp | 44dp | 52dp | 68dp | 108dp |
| Handle width | 4dp |
| Track shape | 8dp | 8dp | 12dp | 16dp | 28dp |
| Inset icon size | \-- | \-- | 24dp | 24dp | 32dp |
