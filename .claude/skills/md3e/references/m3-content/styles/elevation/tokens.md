---
source: https://m3.material.io/styles/elevation/tokens
title: "Elevation"
captured: 2026-09-14
---

# Elevation

> Elevation is the distance between two surfaces on the z-axis

## Tokens

Elevation levels can be implemented with tokens. Surface tint color is deprecated. Use elevation level tokens (0–5) instead. [Learn more about design tokens](/m3/pages/design-tokens/overview)

Close

## Component elevation

Most components have a default elevation. Component elevation is only used to determine where the component sits in relation to other components, including when hovered or focused (which usually raises elevation by one level). Elevation has no shadow or value of its own by default.

| Resting level | Component | DP Height |
| --- | --- | --- |
| 5 | (not assigned as resting level)  | 12dp |
| 4 | (not assigned as resting level) | 8dp |
| 3 | Date pickersDialogs (modal)Extended FABFABFAB menu (close button)SearchTime pickers | 6dp |
| 2 | App bar (scrolled)MenuNavigation barRich tooltipToolbar | 3dp |
| 1 | BannerBottom sheet (modal)Button (elevated)Card (elevated)Chips (elevated)Navigation drawer (modal)Side sheet (modal) | 1dp |
| 0 | App bar (not scrolled)Buttons (filled, tonal, outlined)Button groupsCards (filled, outlined)CarouselChipsDialog (full-screen)Extended FAB (in navigation rail)FAB (in navigation rail)FAB menu (list items)Icon buttonsListNavigation railSegmented buttonSide sheet (docked)SliderSplit buttonTabs | 0dp |
