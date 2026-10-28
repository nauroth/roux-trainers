---
source: https://m3.material.io/styles/motion/easing-and-duration/tokens-specs
title: "Easing and duration"
captured: 2026-09-14
---

# Easing and duration

> Easing and duration create responsive and expressive motion

star

Note:

In the expressive update, components and motion now use the [motion physics system](/m3/pages/motion-overview/), which uses springs. Products should migrate to the new system. The easing and duration system is still used for transitions and can be used by teams that haven't yet updated to GM3 Expressive, but is no longer maintained.

## Tokens

Motion easing and duration can be implemented using easing and duration tokens. [Learn more about design tokens](/m3/pages/design-tokens/overview)

Close

## Easing

### Emphasized easing set

This set is the most common because it captures the expressive style of M3.

Emphasized

Emphasized decelerate

Emphasized accelerate

| Info/Platform | Emphasized | Emphasized decelerate | Emphasized accelerate |
| --- | --- | --- | --- |
| Token | md.sys.motion.easing.emphasized | md.sys.motion.easing.emphasized.decelerate | md.sys.motion.easing.emphasized.accelerate |
| Android | [pathInterpolator(M 0,0 C 0.05, 0, 0.133333, 0.06, 0.166666, 0.4 C 0.208333, 0.82, 0.25, 1, 1, 1)](https://developer.android.com/reference/android/view/animation/PathInterpolator) | [PathInterpolator(0.05f, 0.7f, 0.1f, 1f)](https://developer.android.com/reference/android/view/animation/PathInterpolator) | [PathInterpolator(0.3f, 0f, 0.8f, 0.15f)](https://developer.android.com/reference/android/view/animation/PathInterpolator) |
| CSS | N/A (Use Standard as a fallback) | [cubic-bezier(0.05, 0.7, 0.1, 1.0)](https://www.w3schools.com/cssref/func_cubic-bezier.asp) | [cubic-bezier(0.3, 0.0, 0.8, 0.15)](https://www.w3schools.com/cssref/func_cubic-bezier.asp) |
| Flutter | [easeInOutCubicEmphasized](https://api.flutter.dev/flutter/animation/Curves/easeInOutCubicEmphasized-constant.html) | [Cubic(0.05, 0.7, 0.1, 1.0);](https://api.flutter.dev/flutter/animation/Cubic-class.html) | [Cubic(0.3, 0.0, 0.8, 0.15);](https://api.flutter.dev/flutter/animation/Cubic-class.html) |
| iOS | N/A (Use Standard as a fallback) | [ControlPoints:0.05f:0.7f:0.1f:1.0f\];](https://developer.apple.com/documentation/quartzcore/camediatimingfunction) | [ControlPoints:0.3f:0.0f:0.8f:0.15f\];](https://developer.apple.com/documentation/quartzcore/camediatimingfunction) |
| After Effects | Use [After Effects Easing Panel](https://storage.googleapis.com/material-io-static/resources/material-easing-1.1.3.zxp) (download) |

### Standard easing set

This set is used for simple, small, or utility-focused transitions.

Standard

Standard decelerate

Standard accelerate

|  | Standard | Standard decelerate | Standard accelerate |
| --- | --- | --- | --- |
| Token | md.sys.motion.easing.standard | md.sys.motion.easing.standard.decelerate | md.sys.motion.easing.standard.accelerate |
| Android | [PathInterpolator(0.2f, 0f, 0f, 1f)](https://developer.android.com/reference/android/view/animation/PathInterpolator) | [PathInterpolator(0f, 0f, 0f, 1f)](https://developer.android.com/reference/android/view/animation/PathInterpolator) | [PathInterpolator(0.3f, 0f, 1f, 1f)](https://developer.android.com/reference/android/view/animation/PathInterpolator) |
| CSS | [cubic-bezier(0.2, 0.0, 0, 1.0);](https://www.w3schools.com/cssref/func_cubic-bezier.asp) | [cubic-bezier(0, 0, 0, 1);](https://www.w3schools.com/cssref/func_cubic-bezier.asp) | [cubic-bezier(0.3, 0, 1, 1);](https://www.w3schools.com/cssref/func_cubic-bezier.asp) |
| Flutter | [Cubic(0.2, 0.0, 0, 1.0);](https://api.flutter.dev/flutter/animation/Cubic-class.html) | [Cubic(0, 0, 0, 1);](https://api.flutter.dev/flutter/animation/Cubic-class.html) | [Cubic(0.3, 0, 1, 1);](https://api.flutter.dev/flutter/animation/Cubic-class.html) |
| iOS | [ControlPoints:0.2f:0.0f:0.0f:1.0f](https://developer.apple.com/documentation/quartzcore/camediatimingfunction) | [ControlPoints:0.0f:0.0f:0.0f:1.0f](https://developer.apple.com/documentation/quartzcore/camediatimingfunction) | [ControlPoints:0.3f:0.0f:1.0f:1.0f\];](https://developer.apple.com/documentation/quartzcore/camediatimingfunction) |
| After Effects | Use [After Effects Easing Panel](https://storage.googleapis.com/material-io-static/resources/material-easing-1.1.3.zxp) (download) |

## Duration

### Short durations

These are used for small utility-focused transitions.

<table style="width:100%"><tbody><tr><th style="text-align:center"><strong>Token</strong></th><td><strong>Value</strong></td></tr><tr><th>md.sys.motion.duration.short1</th><td>50ms</td></tr><tr><th>md.sys.motion.duration.short2</th><td>100ms</td></tr><tr><th>md.sys.motion.duration.short3</th><td>150ms</td></tr><tr><th>md.sys.motion.duration.short4</th><td>200ms</td></tr></tbody></table>

Selection controls have a short duration of 200ms with Standard easing

### Medium durations

These are used for transitions that traverse a medium area of the screen.

<table style="width:100%"><tbody><tr><th style="width:74.5655%;text-align:center"><strong>Token</strong></th><td><strong>Value</strong></td></tr><tr><th style="width:74.5655%">md.sys.motion.duration.medium1</th><td>250ms</td></tr><tr><th style="width:74.5655%">md.sys.motion.duration.medium2</th><td>300ms</td></tr><tr><th style="width:74.5655%">md.sys.motion.duration.medium3</th><td>350ms</td></tr><tr><th style="width:74.5655%">md.sys.motion.duration.medium4</th><td>400ms</td></tr></tbody></table>

A FAB expanding into a Sheet uses a 400ms duration with Emphasized easing

### Long durations

These durations are often paired with Emphasized easing. They're used for large expressive transitions.

<table style="width:100%"><tbody><tr><th style="text-align:center"><strong>Token</strong></th><td><strong>Value</strong></td></tr><tr><th>md.sys.motion.duration.long1</th><td>450ms</td></tr><tr><th>md.sys.motion.duration.long2</th><td>500ms</td></tr><tr><th>md.sys.motion.duration.long3</th><td>550ms</td></tr><tr><th>md.sys.motion.duration.long4</th><td>600ms</td></tr></tbody></table>

A Card expanding to full screen uses a long 500ms duration with Emphasized easing

### Extra long durations

Though rare, some transitions use durations above 600ms. These are usually used for ambient transitions that don't involve user input.

<table style="width:100%"><tbody><tr><th style="text-align:center"><strong>Token</strong></th><td><strong>Value</strong></td></tr><tr><th>md.sys.motion.duration.extra-long1</th><td>700ms</td></tr><tr><th>md.sys.motion.duration.extra-long2</th><td>800ms</td></tr><tr><th>md.sys.motion.duration.extra-long3</th><td>900ms</td></tr><tr><th>md.sys.motion.duration.extra-long4</th><td>1000ms</td></tr></tbody></table>

An ambient carousel auto-advance transition uses an extra long 1000ms duration with emphasized easing
