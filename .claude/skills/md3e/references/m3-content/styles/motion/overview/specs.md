---
source: https://m3.material.io/styles/motion/overview/specs
title: "Motion physics system"
captured: 2026-09-14
---

# Motion physics system

> The motion physics system makes a UI expressive and easy to use

## Cross-platform experiences

The motion physics system is available on Jetpack Compose and Android Views (MDC-Android), and can be easily adapted to other platforms.

| Platform | Status | How to apply |
| --- | --- | --- |
| Jetpack Compose | Available | Use built-in components and spring tokens. |
| Android Views (MDC-Android) | Available. Not added to components. | Use built-in spring tokens. |
| Web | Compatible | Use springs when possible, otherwise use curves that mimic the springs for animations without interruptions or gestures. [View web conversion table](/m3/pages/motion-overview/specs#e3e4f10b-6314-47b7-9051-988066081fa0) |

## Tokens and specs

The **spring composite** tokens are used in the motion physics system. These composites combine two **spring** tokens (damping and stiffness) into a single token for ease of use. The **easing**, **duration**, and **path** tokens are used by the legacy system, so can be ignored.

Close

## Web: Convert springs to curves

| Spring | Curve |
| --- | --- |
| Expressive fast spatial | 0.42, 1.67, 0.21, 0.90. Duration =  350ms |
| Expressive default spatial | 0.38, 1.21, 0.22, 1.00. Duration =  500ms |
| Expressive slow spatial | 0.39, 1.29, 0.35, 0.98. Duration =  650ms |
| Expressive fast effects | 0.31, 0.94, 0.34, 1.00. Duration =  150ms |
| Expressive default effects | 0.34, 0.80, 0.34, 1.00. Duration =  200ms |
| Expressive slow effects | 0.34, 0.88, 0.34, 1.00. Duration =  300ms |
| Standard fast spatial | 0.27, 1.06, 0.18, 1.00. Duration =  350ms |
| Standard default spatial | 0.27, 1.06, 0.18, 1.00. Duration =  500ms |
| Standard slow spatial | 0.27, 1.06, 0.18, 1.00. Duration =  750ms |
| Standard fast effects | 0.31, 0.94, 0.34, 1.00. Duration =  150ms |
| Standard default effects | 0.34, 0.80, 0.34, 1.00. Duration =  200ms |
| Standard slow effects | 0.34, 0.88, 0.34, 1.00. Duration =  300ms |

## Easing and duration

The original easing and duration tokens are still available to use as a fallback, and are currently used for animating transitions. [View easing and duration system](/m3/pages/motion-easing-and-duration/applying-easing-and-duration)
