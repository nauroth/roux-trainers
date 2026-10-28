---
source: https://m3.material.io/components/split-button/guidelines
title: "Split buttons"
captured: 2026-09-14
---

# Split buttons

> Split buttons open a menu to give people more options related to an action

![Split buttons of many colors and sizes scattered. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm36akp9w-1.png?alt=media&token=954a37e5-dbe9-4715-8f37-fd34afd699e0)

Split buttons come in many sizes and colors

## Usage

Split buttons are used to add a menu Menus display a list of choices on a temporary surface. [More on menus](/m3/pages/menus/overview) of actions alongside a main action. This reduces visual complexity by hiding extra options. Split buttons work well alone or alongside common buttons Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) and icon buttons Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview) .

![A split button applied a filter of “Canada” to a list of activities. Three narrow buttons are next to it to share, favorite, and bookmark.](https://lh3.googleusercontent.com/9UfkZE4_cZigzNlvBgN4B7ahe-tzvOBPxn_pzLUChLFUIKQitLU2y7pNJTXoW-K4aM2tVthNrk3BNxSYV5fVllZJH7GucTZT7TYcqGAu7_VISw=s0)

Split buttons on their own can grab attention

Split buttons have five recommended sizes. These sizes match the sizes offered on buttons and icon buttons:

-   Extra small

-   Small (default)

-   Medium

-   Large

-   Extra large

Scale up the split button in large breakpoints, or to create more emphasis in smaller windows.

![A large split button in a compact window draws attention to buying an enamel mug in an online store.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dosrjf-3.png?alt=media&token=1b565df6-4454-4460-9e64-f0dd199fe87c)

Using large split buttons on small screens can add extra emphasis for hero moments

Split buttons can be used alongside other buttons and button groups.

![A vibrant split button for starting a car drive is next to 2 muted icon buttons for bookmarking and sharing the trip.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmaehs3k3-4_ALT.png?alt=media&token=be30a6a7-53a8-4e4d-a190-5293714dd79b)

Split buttons work harmoniously with regular buttons

Split buttons can be of different sizes from other buttons on the page, especially since they take up more space.

![A media player has a split button for changing the speed quickly, or opening a menu of options.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmaehumyk-5-alt.png?alt=media&token=51014525-7e5f-43cb-8e6a-04ecd54f2ae8)

The most prominent controls can be larger while secondary controls in a split button can be smaller

The split button typically opens a menu Menus display a list of choices on a temporary surface. [More on menus](/m3/pages/menus/overview) , but can be customized to open other components like cards Cards display content and actions about a single subject. [More on cards](/m3/pages/cards/overview) .

![A split button opens a menu with a vibrant color scheme.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4il1tni-6-alt.png?alt=media&token=bccedc39-a096-4dfa-b654-14d575be9f12)

check Do

Open a menu from a split button

![A split button opens a menu with an irregular shape highlighting the selected item.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4il1xwy-7-alt.png?alt=media&token=fb95faee-bb6d-447b-a38f-24f0ef87b0a4)

close Don’t

Avoid modifying the menu in unusual ways

## Anatomy

![4 elements of a split button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dp22eb-8.png?alt=media&token=7aadf139-d85b-4439-8514-204c2d6c571d)

1.  Leading button

2.  Icon

3.  Label text

4.  Trailing button

The leading button should be brief, just one or two words, with an icon that best matches the action.

The trailing button should always have the expand and collapse icon since it rotates when selected. Avoid modifying the icon.

![A split button for starting driving directions has a label “32 minutes away” and a refresh icon instead of a menu icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0dxuxjz-9.png?alt=media&token=6dbd3d91-8792-44cf-a5b2-f03e5621deb2)

close Don’t

Avoid using very long labels or changing the trailing icon

In right-to-left languages, the component layout is mirrored.

![The split button elements are reversed in a right-to-left language.](https://lh3.googleusercontent.com/43s7j0gcA5ez0PmFtHcj6TNeZLo7IqSGHqlOTKi2whopiRe66fXmJylV_V3M7SUNoFR4NtxZoeAqCATEMI3ACWzbwWg8dvl1R7ueH32Vt2U=w40)

Split buttons mirror the order of elements in right-to-left languages

## Behavior

The split button uses the standard motion scheme The motion physics system has two schemes: standard for utilitarian movement, and expressive for more bouncy movement. (not the expressive motion scheme) when rotating the menu button.

The menu button rotates inwards 180° when opened and closed.

Selecting the menu button rotates the icon inwards and applies shape morph

### Menu placement

When using the split button with a menu Menus display a list of choices on a temporary surface. [More on menus](/m3/pages/menus/overview) , align the menu with the trailing button when possible.

![A split button with an open menu. The leading edge of the menu is aligned to the leading edge of the menu button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4il8isz-12.png?alt=media&token=7dea4867-f593-4b35-a7dd-f8059c252ee5)

Align the menu with the trailing button

If there’s not enough room, align the menu to one of the sides of the button.

![A split button with an open menu. The trailing edge of the menu is aligned to the trailing edge of the menu button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4ilatqh-13.png?alt=media&token=c60db39f-3af3-4fe8-92c7-09c26c255a71)

If not possible, align the menu to the side of the leading or trailing button

Depending on breakpoint, scroll position, and other factors, the menu may need to appear elsewhere around the button. Always try to align it with one of the edges of the button.

The menu should be 4dp from the split button.

![6 other ways the menu can align to the split button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4iz4b9v-14.png?alt=media&token=7596fabd-1a2c-4d83-a0d6-03963942cbf5)

1.  Top aligned to trailing button

2.  Bottom aligned to trailing button

3.  Top right-aligned

4.  Top left-aligned

5.  Bottom right-aligned 
6.  Bottom left-aligned
