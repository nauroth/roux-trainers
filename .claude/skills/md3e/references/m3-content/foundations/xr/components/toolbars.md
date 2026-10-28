---
source: https://m3.material.io/foundations/xr/components/toolbars
title: "XR components"
captured: 2026-09-14
---

# XR components

> Learn how Material 3 Expressive components adapt to extended reality devices

star

Note:

XR guidelines are primarily intended for designers. Find what’s implemented in code in the [design kit](https://www.figma.com/community/file/1035203688168086460).

Extended reality (XR) interfaces have special design requirements, like showing apps in 3D space. Material has an XR toolbar with custom specs and guidance. Read [XR developer documentation](https://developer.android.com/design/ui/xr/guides/foundations) for more details.

## Variants

There is one toolbar orbiter Orbiters are floating elements that control the content within spatial panels. [More on orbiters](https://developer.android.com/design/ui/xr/guides/spatial-ui#orbiters) . It closely aligns with the floating toolbar Floating toolbars float on top of page content and can provide contextual, dynamic actions. [More on toolbars](/m3/pages/toolbars/overview) . It can be configured to be horizontal or vertical. [Go to XR toolbar API reference](https://developer.android.com/reference/kotlin/androidx/xr/compose/material3/package-summary#HorizontalFloatingToolbar\(kotlin.Boolean,androidx.compose.ui.Modifier,androidx.compose.material3.FloatingToolbarColors,androidx.compose.foundation.layout.PaddingValues,androidx.compose.material3.FloatingToolbarScrollBehavior,kotlin.Function1,kotlin.Function1,kotlin.Function1\))

![Horizontal and vertical toolbar orbiters.](https://lh3.googleusercontent.com/ds2nZJkQR-ChJVdNLWz0le3T0Qrn7_7xC3m88jQKzP0vtewiS711HSyShuX5Z7CS9izVcwCl3jqtb723qZpmFp8ufYsaP3jSAPnFkdcoT7o7=s0)

1.  Horizontal floating toolbar
2.  Vertical floating toolbar

## Anatomy

![2 elements of a toolbar orbiter: container and placed components. ](https://lh3.googleusercontent.com/wPnd0meDx_6WgA0RcmAh3jBLHG0iuYG-GonjBTpRZXx8jbGK2mhttARyxdipcS3kS2iSHJFhSFb3eXw_k8DPr__ywvHli4PENaLIVfmYLaYjrA=s0)

1.  Container
2.  Placed components

## Color & elevation

XR uses color to communicate the elevation of UI elements and orbiters. With [spatial elevation](https://developer.android.com/design/ui/xr/guides/spatial-ui#spatial-elevation), the toolbar displays above the spatial panel In Android XR, a spatial panel is a container for UI elements, interactive components, and immersive content. [More on spatial panels](https://developer.android.com/design/ui/xr/guides/spatial-ui#spatial-panels) on the Z-axis. Elevated toolbars can use any of these color options:

![4 versions of toolbar elevation color strategy.](https://lh3.googleusercontent.com/w6VacobEqegZ2sNrmTh9bvGoH7GlIqFV0rkepmfEObuvNceGyegLbNeOQKw6DnY0PBwm-knNvVozQEhanqE7R96pjD97g5OM6PKUq5sK8w0=w40)![4 versions of toolbar elevation color strategy.](https://lh3.googleusercontent.com/w6VacobEqegZ2sNrmTh9bvGoH7GlIqFV0rkepmfEObuvNceGyegLbNeOQKw6DnY0PBwm-knNvVozQEhanqE7R96pjD97g5OM6PKUq5sK8w0=s0)

1.  Surface container
2.  Surface container high
3.  Surface container highest
4.  Tertiary container

## Measurements

![Diagram with measurements for toolbar orbiters.](https://lh3.googleusercontent.com/QKzN5tAxYlmJ3FQZI3BGI6GDG249mlMDhzYL0PQBj2ABlwwZ25a465b1e7KuZujPAXcSFIpWEZA0_wvh45s7ZHRq-uBsZiyEC74zuaStolX8=w40)

Measurements for toolbar orbiters

![Diagram with 12dp padding for toolbar orbiters.](https://lh3.googleusercontent.com/mrquic0M5r5AkyYCEdVNfNfr6sTJwfTLOOO6y0-G4bIIMOKCoqXOt15g5aJHGa8OCeh6ubTElhCaN1nnKsy_ldeb3L13b6YTK7QHQIKSLXMh=w40)

Padding for toolbar orbiters

## Usage

A toolbar can appear in an orbiter Orbiters are floating elements that control the content within spatial panels. [More on orbiters](https://developer.android.com/design/ui/xr/guides/spatial-ui#orbiters) for a more immersive experience. Currently, this spatial capability is only available in full space Full space is Android XR’s immersive mode and supports spatial components. [More on full space](https://developer.android.com/design/ui/xr/guides/foundations#modes) . In home space Home space is compatible with mobile and large screen apps, but doesn’t support spatial components. [More on home space](https://developer.android.com/design/ui/xr/guides/foundations#modes) , use a regular toolbar on the same plane as the body content to mimic a 2D experience.

A toolbar’s behavior and placement changes from a 2D to a 3D experience

## Behavior

### Local context (recommended)

When placed in local context, the toolbar orbiter is centered at the bottom of the spatial panel it controls. 

It repositions in response to layout or content changes.

In most cases, toolbars should be placed in local context. The orbiter is centered and anchored to the bottom of the panel it controls.

### Global context

When placed in global context, the toolbar orbiter is centered at the bottom of the app. 

It stays anchored to the app during layout or content changes. 

exclamation Caution

In global context, toolbar orbiters are centered and anchored to the bottom of the app. This use case is less common, as toolbars usually contain actions that control a specific panel.

### Expand & collapse

Toolbar orbiters with more than five items can expand and collapse to reveal or hide additional content.

When a toolbar orbiter expands, it stays within the bounds of the adjacent spatial panel.

Alternatively, more complex toolbars can be split into multiple toolbars.

Toolbar orbiters can expand to reveal additional content, but should stay within the bounds of the adjacent spatial panel

### Additional toolbars

In some cases, full space apps can have more than one toolbar orbiter, placed in either global or local context. 

exclamation Caution

Limit the use of multiple toolbars to rare cases when additional spatialization improves usability

## Placement

### Offset & inset positioning

In full space, a toolbar orbiter can be positioned adjacent to or overlap a spatial panel. 

![Toolbar orbiter with offset positioning.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmoxer5rt-11-do.png?alt=media&token=e4b3858b-33c8-4780-a480-bb736654fe44)

check Do

The recommended toolbar orbiter position from the spatial panel is: 

-   Offset by 20dp or 
-   Inset by 12dp

![Toolbar orbiter with inset positioning above 12dp that obstructs content on the spatial panel. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmoxetpx5-12-don't.png?alt=media&token=9785f369-7394-4db6-9b9f-d5cc51db2087)

close Don’t

To prevent content obstruction, don’t overlap the toolbar orbiter and spatial panel above 12dp

### Horizontal alignment

![A horizontal toolbar orbiter placed within the bounds of its spatial panel.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmoxewjln-13-do.png?alt=media&token=532608ce-b877-416f-b725-f6e3637560d5)

check Do

Always align the toolbar orbiter within the horizontal bounds of nearby spatial panels

![A horizontal toolbar orbiter that extends beyond the width of its spatial panel.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmoxeyben-14-don't.png?alt=media&token=51df328d-28b3-4aa4-9025-47ea3f674d36)

close Don’t

The toolbar orbiter shouldn’t exceed the width of adjacent spatial panels

### Vertical alignment

![A vertical toolbar orbiter placed within the bounds of its spatial panel.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmoxf0mbw-15-do.png?alt=media&token=29cbe69d-bd06-4ace-ba38-0e7e991cf121)

check Do

Always align the toolbar orbiter within the vertical bounds of nearby spatial panels

![A vertical toolbar orbiter that extends beyond the height of its spatial panel.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmemfyo8f-16-don't.png?alt=media&token=d9e5cd69-d3b6-4238-94fa-5d7dbd359c2c)

close Don’t

The toolbar orbiter shouldn’t exceed the height of adjacent spatial panels

### Spatial panel alignment

By default, toolbar orbiters are center-aligned to the spatial panel. Their placement can be adjusted to accommodate specific user needs, such as improved ergonomics or [right-to-left (RTL) languages](/m3/pages/bidirectionality-rtl).

![Toolbar orbiter alignment options in relation to spatial panels.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmemfvpq3-17.png?alt=media&token=06472c3c-8a05-4dab-9e63-b4dac374c622)

Depending on the configuration (horizontal or vertical) of the toolbar orbiter, it can align to the center, left, right, top, or bottom of a spatial panel

Avoid placing a vertical toolbar orbiter between spatial panels. 

This negatively affects the interface structure and can make it difficult to find.

![A vertical toolbar orbiter is placed between 2 spatial panels.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmemfx943-18-don't.png?alt=media&token=ce865771-93db-4ded-ac2c-f0ca46254201)

close Don’t

Don't place a vertical toolbar orbiter between spatial panels

## Accessibility considerations

[XR accessibility](/m3/pages/xr-design/accessibility) guidelines are still evolving. XR toolbars should follow applicable Material [toolbar accessibility standards](/m3/pages/toolbars/accessibility).
