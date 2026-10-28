---
source: https://m3.material.io/components/navigation-bar/guidelines
title: "Navigation bar"
captured: 2026-09-14
---

# Navigation bar

> Navigation bars let people switch between UI views on smaller devices

![A nav bar with vertical items in a compact window, and horizontal items in a medium window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqgvk7-01.png?alt=media&token=48551963-9645-437c-acea-853e04e8cdaf)

Navigation bars adapt to different breakpoints

## Usage

Navigation bars provide access to three to five destinations. The nav bar is positioned at the bottom of windows for convenient access.

Each destination is represented by an icon and label text. One navigation destination is always active.

When a navigation bar icon is tapped or focused, people are taken to the navigation destination associated with that icon.

![A nav bar for a music app with 4 destinations: Home, Browse, Radio, Library, It’s in a compact window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalnqdza-02.png?alt=media&token=a7e4f1a8-0547-42b2-81d1-c4346b1915db)

Navigation bars can have three to five destinations

Navigation bars should be used for:

-   Three to five main pages in the product
-   Mobile or tablet only

Navigation bars shouldn’t be used for accessing single tasks, such as viewing one email.

![A nav bar for a music app with 4 destinations: Home, Browse, Radio, Library. It’s in a medium window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqhln7-03.png?alt=media&token=ec2bca60-87ec-4f27-a235-d872f5e6792d)

On mobile or tablet, navigation bars should be used for top-level destinations

The navigation items can be **vertical** or **horizontal**.

-   Use vertical items in compact windows Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) , like mobile

-   Use horizontal items in medium windows Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) , like tablets

![A nav bar with vertical items in a compact window, and horizontal items in a medium window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqhs7x-04.png?alt=media&token=d17a01b3-1f02-4654-99d8-9a0de7507ff9)

Vertical navigation items work best in compact windows. Horizontal items work best in medium windows.

For products with more than five navigation items, don’t use a navigation bar; the elements may collide and there likely won’t be enough space for translated text.

Instead, consider using tabs Tabs organize content across different screens and views. [More on tabs](/m3/pages/tabs/overview) to organize similar content within a page, or hide the navigation behind a menu icon using a modal expanded navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview) .

![A nav bar with 7 items in a compact window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqi614-05-don't.png?alt=media&token=ba0b0a11-eec7-41a4-a49f-7209526b9819)

close Don’t

Avoid putting more than five navigation items in a navigation bar

![A nav bar with no labels for each page item.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqimzs-06-dont.png?alt=media&token=cab6328f-c6d8-4de6-9261-050062dd3288)

close Don’t

Don’t remove the labels from navigation items

![A nav bar with 2 page items.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqir51-07-dont.png?alt=media&token=91efa23a-c76b-486b-a510-b1b862cda076)

close Don’t

Don’t use a navigation bar for fewer than three destinations. Instead, use tabs.

![A nav bar is on the Library page of a music app. Tabs at the top of the page have secondary navigation for playlists, artists, albums, and songs.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0fp4omq-08.png?alt=media&token=59669575-9a0c-4bf1-b073-d85c2f53f459)

Use navigation for distinct pages and tabs for related content within a page

![Nav bar using horizontal items in a compact window. The items are too wide and flow off screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0fp4ti0-09.png?alt=media&token=375b3742-081d-484b-8066-f07b4a9af991)

close Don’t

Navigation bar destinations have fixed positions. Don’t scroll them or modify their positions.

## Anatomy

![6 elements of the nav bar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm3t918of-10.png?alt=media&token=653b8745-255a-4063-969b-7b8915debdbd)

1.  Container

2.  Icon

3.  Label text

4.  Active indicator

5.  Large badge (optional)

6.  Small badge (optional)

### Container

The container should always be placed at the bottom of the product and span the full length of the window. Navigation items are centered within the container.

The container has a color fill to provide separation from other content.

![The nav bar at the bottom of a medium window has a color fill to differentiate from the background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm3t91cku-11.png?alt=media&token=8b8afb44-91c4-452a-8f17-d8a1186e125c)

The navigation bar container holds all elements

### Navigation items

Navigation items hold all elements for each destination: the icon, label text, and active indicator. They can be **vertical**, with the text below the icon and indicator, or **horizontal**, with the icon and text beside each other inside the indicator. 

Vertical items are best in compact windows Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) , and horizontal items are best in medium windows Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation [More on medium breakpoints](/m3/pages/breakpoints/medium) .

Horizontal items are centered in the nav bar with outer margins.

![The nav bar in a medium window with padding on each side.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm3t91mur-12.png?alt=media&token=c2b0adef-8f59-4130-9ec1-f9cf4eac9507)

The navigation bar is divided into equal-width segments with padding from the window edge

### Icons

Navigation rail items must use icons that symbolize the content of their page. Browse [popular icon](https://fonts.google.com/icons).

Use a filled icon for the active destination and outlined icons for inactive destinations. If an icon doesn’t have a filled version, apply **semibold** weight to the icon instead.

![An active nav item with a filled icon compared to inactive items with outlined icons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0fp9y48-13.png?alt=media&token=0fa12a4b-312c-4d17-b9e5-e0c2e9150e41)

check Do

Use filled icons when the navigation item is active

![An active nav item with a semibold icon compared to inactive items with outlined icons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0fpa2te-14.png?alt=media&token=39201138-a399-487f-a860-0b0e84c6c24f)

exclamation Caution

If a filled version of an icon is unavailable, the icon’s weight must increase

Active and inactive icons must have a minimum 3:1 contrast ratio with the container.

![4 nav items that are each different colors with low contrast with the background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqnpkt-15-dont.png?alt=media&token=6443ffb5-c5a9-4602-8782-ff4fc4da1b08)

close Don’t

Don’t use multiple or low-contrast colors in a navigation bar, as they make it harder for people to distinguish the active item and navigate to other destinations

### Active indicator

The active indicator shows which page from the nav bar is currently being displayed.

![The current page in a nav bar has an active indicator.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqo0n5-16-do.png?alt=media&token=7ffc8212-80fc-4cea-a90a-8ee8b92ece0f)

check Do

Use the active indicator only for the active destination

![All items in a nav bar have active indicators.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqo7ag-17-dont.png?alt=media&token=00c41373-8bd6-4183-9508-a1d68b837502)

close Don’t

Don’t use the active indicator for more than one destination at a time

### Label text

The label text should be a short, meaningful description of each navigation destination and another way for people to understand an icon’s meaning.

All navigation items require a label text. It should be 1-2 words.

![A nav bar on a music app with clearly labelled destinations: home, browse, radio, library.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0fpamvs-18.png?alt=media&token=667c0164-7b71-401d-ba92-953714bca290)

Label text must be brief and clear

![A nav bar with 1-word labels for each page.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqoweq-19-do.png?alt=media&token=8e54006a-8f5c-4eee-96a0-aa955c7fb01e)

check Do

Use brief text labels to identify the purpose of a destination

![A nav bar with “Music catalog” for a label. The label is truncated.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqp27c-20-dont.png?alt=media&token=f57db674-25f6-4a8d-b9e3-132ad85155fc)

close Don’t

Don’t wrap or truncate text as it can make the label hard to understand

![A nav bar with “Music catalog” for a label. The label is a smaller size to make the text fit.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqpu1t-21-dont.png?alt=media&token=4a585cd5-7a7f-4699-a7dd-54571b00f343)

close Don’t

Don’t shrink longer text to fit on a single line

### Badges (optional)

Navigation bars can display badges in the upper right corners of the destination icon.

Badges can contain dynamic information, such as the number of new messages.

![A nav bar with a destination called “Go” with a small badge and one called “Saved” with a large badge saying “3.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqqg5m-22.png?alt=media&token=728c13e1-b6bc-4a67-9ec3-e182a4c0d398)

Use a small badge to indicate an update, and a large badge to show the amount of updates

![Horizontal nav items with the badges in the same place of the icon as vertical nav items.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqqlk1-23.png?alt=media&token=97527e9f-b215-4af6-b927-729382d3227d)

Badges overlap the icon in both vertical and horizontal navigation items

## Placement

The floating action button (FAB) is placed above the navigation bar. Nav bars are always placed at the bottom of the window.

![The FAB should be right-aligned above the navigation bar](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqqsyh-24-do.png?alt=media&token=154bc6fc-44ad-46fc-b059-f6be359445e4)

check Do

The FAB should be right-aligned above the navigation bar

![A mobile page with a FAB overlapping a nav bar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqqy0m-25-dont.png?alt=media&token=5c713542-e6bb-4362-abbb-ca8561433eff)

close Don’t

Don’t cover the navigation bar with a FAB

Navigation bars can be temporarily covered by dialogs, bottom sheets, navigation drawers, the on-screen keyboard, or other elements needed to complete a flow. They should not be permanently obstructed on any screen.

The search feature of the screen triggers the on-screen keyboard, temporarily covering the bottom navigation bar until the search flow is completed

## Adaptive design

Adaptive design allows an interface to respond or change based on context, such as the user, device, and usage. More on [adaptive design](/m3/pages/layout-overview/adaptive-design)

### Resizing

Only use navigation bars for compact Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) and medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium)  breakpoints. 

**Compact**: For narrow windows, use a navigation bar or modal navigation rail.

**Medium**: Use a navigation bar or navigation rail. Decide based on whether horizontal or vertical space is more important.

**Expanded and extra-large**: Use a navigation rail instead. Decide based on available window space and the number of navigation destinations.

Navigation bars are best suited for compact and medium breakpoints

The navigation bar container spans 100% of the window width.

![Navigation bar spanning the full width of a compact window.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalo8a44-28.png?alt=media&token=96f0c6e3-5ab8-49ef-aa2c-ef38b892c091)

Navigation bars use 100% of the screen width

The navigation bar is used on smaller devices. It’s not intended for desktop.

![Navigation bar spanning the full width of an expanded window size.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmalqsfoq-29.png?alt=media&token=ff8220a9-3d2a-4ce3-a888-5899124803ae)

close Don’t

Don’t use navigation bars for desktop layouts. Instead, use a navigation rail or tabs.

### Presentation

In medium breakpoints, use horizontal nav items to better use available space.

Horizontal nav items should remain centered with the same padding at each breakpoint.

![Horizontal nav items have the same width in medium and expanded windows. Only the padding changes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0fpt5k2-30.png?alt=media&token=e135a58a-8738-4d8d-bdad-fb1c25a7962f)

A navigation bar in horizontal orientation keeps the same spacing between destinations

## Behavior

### Navigation

When selecting a navigation bar item not currently selected, the product navigates to that destination’s screen using a [top level](/m3/pages/motion-transitions/transition-patterns#f852afd2-396f-49fd-a265-5f6d96680e16) transition pattern. It can either remember where you left off, or reset to the default view.

1.  **Preserve state**: If someone has interacted with this destination, it returns to their scroll position, current tab, and in-line search status.
2.  **Reset state**: Any prior user interactions are reset, including scroll position, tab selection, and in-line search.

Choose the behavior that best suits the product and user needs. For example, an app that requires frequent switching between sections should preserve each section’s state.

After selecting an item on the bottom navigation bar, the app navigates to that destination’s screen

Re-selecting the currently active destination should reset the scroll position to the top of the page.

**Don't swipe between destinations**
Swiping across the screen does not navigate between destinations, and is not supported by the navigation bar. Swipe behavior should be reserved for related items, such as cards in a carousel, or actions such as archiving a list item.

Selecting the already selected navigation item scrolls to the top of the screen

### Scrolling

Upon scroll, the navigation bar can appear or disappear. 

Don’t hide the navigation bar on scroll when a [screen reader](https://m3.material.io/foundations/overview/assistive-technology#ec6f3e84-a51c-4dc0-a353-6844f5bde698) is active.

Scrolling downward can hide the navigation bar; scrolling upward reveals it

### Selection

The icon becomes filled and the active indicator expands from the center of the icon when switching between destinations.

The active indicator animation should only apply on one axis to better represent a flat, shared plane.

An active indicator appears when the item is selected.

When a destination is tapped, the destination screens use a [top level](/m3/pages/motion-transitions/transition-patterns#f852afd2-396f-49fd-a265-5f6d96680e16) transition pattern. In addition, the icon becomes filled and the active indicator expands from the center of the icon.

Tapping a destination uses a top level transition pattern
