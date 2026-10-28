---
source: https://m3.material.io/components/floating-action-button/guidelines
title: "Floating action buttons (FABs)"
captured: 2026-09-14
---

# Floating action buttons (FABs)

> Floating action buttons (FABs) help people take primary actions

![3 screens with various FAB sizes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkapod2e-01.png?alt=media&token=2371fb7d-a6b0-4648-9023-ad1a1b7f96f1)

FABs have multiple sizes that scale with the breakpoint

## Usage

Use a FAB for the most important action on a screen; it appears in front of all other content.

The FAB can be aligned left, center, or right. It can be positioned above the navigation bar, or nested within it.

![A Compose FAB is positioned above a nav bar on a mobile email inbox.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkapp0w4-02.png?alt=media&token=241a9e04-8ed7-4df1-8eb7-c389ab51362c)

FABs can use dynamic color

There are three FAB sizes:

1.  FAB

2.  Medium FAB (most recommended)

3.  Large FAB

Choose the FAB size based on the visual hierarchy of your layout. 

Note: The small FAB is no longer recommended.

![3 FAB sizes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkappjdx-03.png?alt=media&token=a21e240b-8ff5-4959-a8e3-8d002d19ab0b)

1.  FAB 
2.  Medium FAB
3.  Large FAB

The FAB is the smallest size, and is best used in compact windows Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) where other actions may be present on screen.

The medium FAB is recommended for most situations, and works best in compact and medium windows Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) . Use it for important actions without taking up too much space. 

A large FAB is useful in any window size when the layout calls for a clear and prominent primary action, but is best suited for expanded Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) and larger breakpoints, where its size helps draw attention.

![A medium FAB over an email app UI.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkapq84r-04.png?alt=media&token=3ac65358-559c-4725-b887-7c7de2881712)

Use a medium FAB in most breakpoints

![A large FAB over an email app UI.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkapqn1b-05.png?alt=media&token=5e6372d1-3c98-40d6-b521-d103604d221f)

Use a large FAB when the primary action needs to be prominent

![A photo feed with no FAB.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkapr8x3-06-do.png?alt=media&token=362c34fb-d2cf-4c87-b970-68d508cd0628)

check Do

FABs are not needed on every screen, such as when images represent primary actions

![A screen with 3 FABs makes it hard to tell what the primary action should be.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaps2z9-07-don't.png?alt=media&token=6a7e9640-e3f3-4bdd-a06f-fd85cd7d184b)

close Don’t

Don't display multiple FABs on a single screen

A FAB can transform into an extended FAB Extended floating action buttons (extended FABs) help people take primary actions. [More on extended FABs](/m3/pages/extended-fab/overview) on larger screens, or it can transition into a FAB menu when selected. Use a FAB menu when there are many kinds of actions relevant to the FAB. 

[More on FAB menus](/m3/pages/fab-menu)

![A extended FAB saying “Share” with a less popular share icon.](https://lh3.googleusercontent.com/6gVz4SSpnVYq28cYhUlwX36JiaNZLx-0A1NhL4z0IUA-RwlUz5tsApAkIXx0RAVE780uol-6VkeZZq7jiXRPiGOzEUo_SGVtL7NG3ogNFwg=w40)![A extended FAB saying “Share” with a less popular share icon.](https://lh3.googleusercontent.com/6gVz4SSpnVYq28cYhUlwX36JiaNZLx-0A1NhL4z0IUA-RwlUz5tsApAkIXx0RAVE780uol-6VkeZZq7jiXRPiGOzEUo_SGVtL7NG3ogNFwg=s0)

Use the extended FAB when label text is necessary

![A FAB menu showing 3 actions related to sharing.](https://lh3.googleusercontent.com/YtrgWibQJDIheCADkeWKz14g7auX0_zMKtGJ8o45F48iJl9BvPomdwRJGi8bjtOnAH7gtd-8V5ki1gS2Qo-f172n73boNv3__OGeekLj-xg=w40)![A FAB menu showing 3 actions related to sharing.](https://lh3.googleusercontent.com/YtrgWibQJDIheCADkeWKz14g7auX0_zMKtGJ8o45F48iJl9BvPomdwRJGi8bjtOnAH7gtd-8V5ki1gS2Qo-f172n73boNv3__OGeekLj-xg=s0)

Use the FAB menu when there are many kinds of actions relevant to the FAB

## Actions

A FAB can trigger an action on the current screen, or it can perform an action that creates a new screen.

A FAB promotes an important, constructive action such as:

-   Create
-   Favorite
-   Share
-   Start a process

![FABS for 12 common actions including, create, edit, and navigate.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaptzjv-10.png?alt=media&token=6feee690-87e8-42b2-b91e-6bc024c92add)

check Do

Use FABs for primary, positive actions

Avoid using a FAB for minor or destructive actions, such as:

-   Archive or trash

-   Alerts or errors

-   Limited tasks like cutting text

-   Controls better suited to a toolbar, like to adjust volume or font color

![FABs for 18 minor or destructive actions, such as cut, trash, and volume.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkapug9u-11.png?alt=media&token=1fa984f4-3e7a-4960-ae4c-2c44611a7ec5)

close Don’t

Don’t use FABs for minor, overflow, unclear, or destructive actions

## Anatomy

![2 elements of a FAB.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkapv2og-12.png?alt=media&token=3686bf12-1656-4350-ae10-e8f104d287bb)

1.  Container
2.  Icon

### Container

The FAB is typically displayed in a square container. The container shouldn’t be covered by other elements, such as badges.

The container must have sufficient color contrast with the surface it’s placed on.

![A bright colored FAB has high contrast with the background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaq0msf-13.png?alt=media&token=34c9472a-9ed8-4db3-990e-84433d0b6331)

A FAB container color needs to stand out from its background

### Icon

An icon in a FAB should be clear and understandable. When hovering over a FAB on web products, FABs should display a tooltip with an accompanying icon text label. Use a filled icon instead of an outlined icon.

A FAB shouldn't contain notifications or actions found elsewhere on a screen.

![4 FABs each with a simple icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaq1779-14.png?alt=media&token=d381cf06-0f9b-41bf-91bb-e199ebfc8769)

check Do

Use clear and simple icons such as add, message, or edit

![4 FABs each with an ambiguous icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaq1wxv-15.png?alt=media&token=6e1889bc-265d-4896-8a2d-63cca01c2252)

close Don’t

Don’t use confusing or open-ended icons to symbolize less common actions

## Adaptive design

In compact Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) and medium breakpoints Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) , the best place for the FAB is typically the lower right corner of a screen, since it’s easy to reach and is less likely to cover important content.

In expanded breakpoints Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , consider placing the FAB in the upper left corner, like in the navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview) . This positions it as one of the first interactive elements people see when they land on the page.

Adjust the size of the FAB based on the context. Use a medium FAB for mobile layouts, and large FAB for tablets and large screens. 

![Large screen layout showing FAB in upper left region of the screen, below navigation rail icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaq2b6m-16.png?alt=media&token=f8d3f99a-25ef-44c6-9dc8-78a71f64e587)

For large screens, place the FAB in the upper left corner

![A screen layout with several interactive elements. A single FAB is in the navigation rail.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaq2qmb-17.png?alt=media&token=4028106d-daa4-4cfb-b4a3-ef0e0c9fb96d)

check Do

A FAB can be used within a navigation component, such as a navigation rail

![A busy screen layout with 8 cards, each with their own FAB.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmkaq35yc-18.png?alt=media&token=5b375eb2-c9ea-4324-bdcb-09444f227ca8)

close Don’t

Individual components, such as cards, shouldn’t have their own FAB

## Behaviors

### Appearing

When a FAB animates on screen, it expands outward from a central point. The icon within it can be animated as well.

While FABs should be relevant to screen content, they aren't attached to the surface on which content appears. FABs move separately from other UI elements because of their relative importance.

**Screen transitions
**FABs can morph to launch related actions. When a screen changes its layout, the FAB should disappear and reappear during the transition.

**Reappearance
**The FAB should only reappear if it's relevant to the new screen. It should reappear in the same position, if possible.

FAB animating on screen

### Expanding

The FAB can expand and adapt to any shape using a container transform transition pattern. This includes a surface that's part of the app structure, or a surface that spans the entire screen.

The FAB can also transition into a FAB menu. 

[More on FAB menus](/m3/pages/fab-menu)

FABs can expand and adapt to any shape

### Scrolling

FABs remain in place on scroll.

Extended FABs can collapse into a FAB on scroll and expand on reaching the bottom of the view.

FABs stay in place above a scrolling background

### Moving across tabs

When tabs are present, the FAB should briefly disappear, then reappear when the new content moves into place. This shows that the FAB is not connected to any particular tab.

check Do

The FAB should disappear and reappear when switching pages

Don't animate the FAB with body content.

close Don’t

Don’t keep the FAB on screen when switching pages
