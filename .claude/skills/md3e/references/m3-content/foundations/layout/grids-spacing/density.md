---
source: https://m3.material.io/foundations/layout/grids-spacing/density
title: "Grids & spacing"
captured: 2026-09-14
---

# Grids & spacing

> Grids and spacing organize content and actions for any layout

-   Information density is the consideration of the amount of information visible on the screen

-   The default target size should be at least 48x48 CSS pixels

-   People can change density as long as the density controls are accessible

-   Apply density thoughtfully; not every layout needs it

-   Layout and component scaling (component adaptation or component density) can allow people to scan, view, or compare more information at once

Information density can change based on context and preference

Consider whether components should scale

**Information density**

-   Information density can be achieved through layout and design decisions without using component scaling

-   Some people may not benefit from increased density

**Component scaling**

-   Components can adapt and change dimensions to help people scan, view, or compare different amounts of information

-   Don't apply component scaling by default if it would result in a target below 48x48 CSS pixels

Information density and component scaling can be used together to provide more information and additional user control

## Information density

Information density refers to the amount of content (such as text, images, or videos) in a given space.

A layout’s spacing dimensions, including margins, spacers, and padding, can change to increase or decrease its information density. High density layouts are useful when people need to scan, view, or compare a lot of information, such as in a data table. Increasing the layout density of lists, tables, and long forms makes more content available on-screen.

Consider density settings in the context of a device. Although a person may prefer a denser layout for desktop, they may not for mobile. Density shouldn’t automatically change across breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) or orientation unless a person changes it.

![2 layouts: 1 with low density and 1 with high density.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5bjd4j-03.png?alt=media&token=f2d98641-43b3-4be6-813e-b788a638eadf)

check Do

Consider using higher density information design when people need to scan lots of information

![News website on desktop displaying a high information density. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5bh69d-04.png?alt=media&token=83e62cde-d2ca-451d-8b01-339cab7fa6af)

Consider the amount and priority of information on-screen. Higher density can be useful for data-rich products where people expect to scan lots of information quickly. Examples: News, financial portals, dashboards

![News website on desktop displaying a low information density.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5bi6cs-05.png?alt=media&token=8dc0f800-b3aa-4927-bfc5-585d0f7a8513)

Lower density can be better for sites prioritizing aesthetics, a focused message, less information, or easier navigation

## Component scaling

The component density scale controls the internal spacing of individual components.

The density scale is numbered, starting at 0 for a component’s default density. The scale moves to negative numbers (-1, -2, -3) as space decreases, creating higher density.

Higher density is typically applied by decreasing the top and bottom padding or overall height by 4dp.

![3 buttons with densities  of 0, -1, -2.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5b9chq-07.png?alt=media&token=38a1cee0-2071-46f7-9bf5-acf853ad4775)

Apply component density based on the needs and layout of a design

Center the grouped element within the component container.

Text size shouldn’t change as the container size scales.

![Text field showing 20dp between label and input](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5b68d4-08.png?alt=media&token=8c5cc11c-001b-42bc-b0f5-dbf7714e503a)

The measurement between the label and input is 20dp

![Parent container showing label above input.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5b7f5f-09.png?alt=media&token=f56f5d6f-18cd-4244-8ad2-219b353925a1)

The label and input are centered within their parent container

![Dropdown menu with high density items and selectable space height of 38dp.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5b2pqp-10-dont.png?alt=media&token=bc17826a-5b44-4cc5-84e1-70357fe2e69a)

close Don’t

Don’t increase density in UIs that involve focused tasks, such as selecting from a menu. It reduces usability by limiting selectable space.

![Single-line snackbar with high density.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp5b47ji-11-dont.png?alt=media&token=e5339b42-6c49-4881-9d69-9b2886f21bf3)

close Don’t

Don't increase the density in components that alert a person of changes, such as snackbars or dialogs

### Avoid applying component scaling by default

People should be able to **opt in** to dense layouts and components.

To ensure density settings can be easily reverted, settings interactions must use default target sizes (48x48 CSS pixels).  

Don't scale layouts below 48x48dp by default.

People can opt in to dense layouts in settings

## Targets

Dense components can be less accessible because interactive elements are smaller, so use caution when increasing information density.

![Selectable target of only 40dp.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp58kiob-13-caution.png?alt=media&token=f0e95ca4-7692-4b33-9fa8-79198007756b)

exclamation Caution

Use caution when applying component scaling where selectable targets will be reduced to less than 48x48dp. Only apply density where it provides a better experience.

Use caution when applying density to interaction targets. Accessible targets should retain a minimum of 48x48dp, even if the visual element, such as an icon, is smaller.

![Settings button icon is 24x24dp, but has interaction target of 48x48dp.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp58gdij-14.png?alt=media&token=9eb2d101-aabf-47e8-9e84-254391cfffce)

The target should remain 48x48dp, even if the icon is smaller

![Button with height of 36dp and interaction target of 48dp.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp58i79t-15.png?alt=media&token=29992fdf-bc4e-46c2-afde-7d477b3bd803)

The interaction target of a common button can be larger, as long as it meets the 48x48dp minimum size

## Pixel density

Pixel density is the number of pixels per inch. High-density screens have more pixels per inch than low-density ones. Elements with the same pixel dimensions appear larger on low-density screens and smaller on high-density screens.

To calculate pixel density:

Pixel density = Screen width (or height) in pixels / Screen width (or height) in inches

![Magnified UI element  showing a high number of pixels in the focus area.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp586kzq-16.png?alt=media&token=635b6806-b358-48bf-927b-670a1c848fde)

High-density elements have more pixels per inch

![Magnified UI element  showing a low number of pixels in the focus area.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp587qzn-17.png?alt=media&token=e2b7ead4-9211-4000-9a76-9596875282b4)

Low-density elements have fewer pixels per inch

### Density-independent pixels

Density-independent pixels, written as dp, are flexible units that scale to have uniform dimensions on any screen. They provide a flexible way to accommodate a design across devices. The Material design system uses density-independent pixels to display elements consistently on screens with different densities.

A dp is equal to one physical pixel on a screen with a density of 160.

To calculate dp:
dp = (width in pixels \* 160) / screen density

![Screen with grid representing a low number of pixels.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp57upl7-18.png?alt=media&token=d73cdac2-1ff8-4a67-8808-f40ba6ffc395)

Low-density screen displayed with density independence

![Screen with grid representing a high number of pixels.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp57w9fy-19.png?alt=media&token=8a92b118-e18b-40fb-a4a5-4a740ce3ac69)

High-density screen displayed with density independence

| Screen physical width | Screen density | Screen width in pixels | Screen width in dps |
| --- | --- | --- | --- |
| 1.5 in | 120 | 180 px | 240dp |
| 1.5 in | 160 | 240 px |
| 1.5 in | 240 | 360 px |
