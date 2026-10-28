---
source: https://m3.material.io/components/tabs/guidelines
title: "Tabs"
captured: 2026-09-14
---

# Tabs

> Tabs organize content across different screens and views

## Usage

Tabs organize groups of related content that are at the same level of hierarchy.

![Mobile screen with 3 tabs: video, photos and audio. Each tab has an an icon and text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k0hhto-1.png?alt=media&token=faff99ee-2899-443c-af57-12c65d59fbff)

Tab labels can include icons and text. Text labels should be short.

There are two variants of tabs:

1.  Primary tabs

2.  Secondary tabs

Primary tabs are placed at the top of the content pane Panes are layout containers that house other components and elements within a single app. A pane can be: fixed, flexible, floating, or semi permanent. [More on panes](/m3/pages/understanding-layout/parts-of-layout#667b32c0-56e2-4fc2-a618-4066c79a894e) under an app bar App bars display information and actions at the top of a screen. [More on app bars](/m3/pages/app-bars/overview) . They display the main content destinations.

Secondary tabs are used within a content area to further separate related content and establish hierarchy.

![3 primary tabs above 3 secondary tabs.](https://lh3.googleusercontent.com/idzlIeuy-TH2VM7D0-YvIt28GrEONuzYVwq1Ov4RBs_p3MNmu4Ji52Zx-_b5-AtLHAGyXOiXeTMrQtrkiTwGcyThOwwaKtQc8NbP-UNUpDG_=s0)

1.  Primary tabs
2.  Secondary tabs

### Related content

Use tabs to group related content, not *sequential* content.

![Scrolling up and down through content, then swiping left through tabs.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k0jkg6-3.png?alt=media&token=45142db9-88cd-4311-b2b7-fcd6f1bf4666)

check Do

Utilize tabs to categorize related groups of content into clearly defined sets

![Mobile screen with scrollable tabs of sequential content: Chapter 1, Chapter 2, Chapter 3 and Chapter 4.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k0jyu3-4.png?alt=media&token=47a63c09-2bf0-41e1-80fc-92f8783b19a8)

close Don’t Don’t use tabs to move through sequential content that needs to be read in a particular order. Instead, create hierarchy within the content using techniques like typography style and open space.

## Anatomy

![Six components of tabs.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k0lum1-5.png?alt=media&token=07a5972d-391d-41a3-9a79-eafe77cd8f25)

1.  Container
2.  Icon (optional)
3.  Badge (optional)
4.  Label
5.  Divider
6.  Active indicator

### Container

The container holds multiple tabs. Its contents can be fixed or scrollable.

The container should always extend the full width of the window and be divided into equal sections, one for each tab.

The container is defined by a divider Dividers are thin lines that group content in lists or other containers. [More on dividers](/m3/pages/divider/overview) on the bottom edge to separate it from the content below. Content may scroll under the container.

![Mobile screen with fixed tabs with a dotted border to illustrate the container area.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k0mdfv-6.png?alt=media&token=6eab5596-fd3e-4c96-b8dc-3bdd18a576ae)

The container is the area that contains the tabs directly under the title above

### Icon (optional)

Icons communicate the kind of content within a tab. Icons should be simple and recognizable.

![Mobile screen with tabs that use both icons and labels.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k0o3dw-7.png?alt=media&token=4453d8d6-48b9-4c46-bdef-c67469c6874e)

Tabs can use a combination of labels and icons

Icons alone aren’t as effective as text labels at communicating complex content.

Use caution when representing tab content with icons alone, as an icon’s meaning may not be clear.

![Mobile screen with tabs represented by icons  for “wishlist” and “location”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k0sbsy-8.png?alt=media&token=feb6c69b-48e7-47c7-a3ef-c8101a1d086a)

check Do

Use icons that are globally recognized when using icons alone

![Mobile screen where "purchases” tab has text only and “wishlist” tab has text and icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k0t3i6-9.png?alt=media&token=8943b2f8-f6e6-4806-8b42-19cbdd777e22)

close Don’t

Don’t use tabs with both icons and text labels on only some tabs, but not others

### Label

Text labels should clearly and succinctly describe the content within the tab.

Tab labels appear in a single row. Labels can use a second line if needed, with truncated text. Alternatively, scrollable tabs can allow room for longer titles.

![Mobile screen with scrollable tabs in a single row.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k1942z-10.png?alt=media&token=c814722a-2e66-42b2-a087-253f3dffcadc)

Tab labels should be short and succinct. There should be a clear relationship to the title above.

When using scrollable tabs, the first visible tab should be offset by 52dp from the left side of the device for both web and mobile. The width of each tab is defined by the length of its text label.

Avoid using inconsistent padding on each tab.

![Screen with scrollable tabs offset from the leading edge by 52dp.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k19jjz-11.png?alt=media&token=ba85424e-ac68-4880-8ce6-9772253d3871)

check Do

Offset the first scrollable tab 52dp from the leading edge so it's clear that more content is available

![Screen with scrollable tabs, 2 of which are truncated to “Australian” showing how truncation can confuse users.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k1a0sc-12.png?alt=media&token=d0344e50-67db-4791-99d8-05f7c782bf67)

close Don’t

Don’t truncate labels unless required, as truncated text can impede comprehension

### Badges (optional) 

Badges Badges show notifications, counts, or status information on navigation items and icons. [More on badges](/m3/pages/badges/overview) can be used on primary or secondary tabs to show notifications or updates related to a specific tab. Limit badge content to four characters, including a "+".

Once the user views the relevant content in the tab, the badge value should update or the badge should disappear entirely.

Small and large badges can both be used with tabs. Read the [badge guidance](/m3/pages/badges/overview) for more details. 

![Mobile screen with tabs that use both icons and labels.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k1yl6w-13.png?alt=media&token=b128a5c0-f67d-4194-bc94-d69b547ddc8c)

Badges are used to highlight notifications related to tab specific content

### Active indicator

To differentiate an active tab from an inactive tab, apply an underline and color change to the active tab’s text and icon.

An underline and color change differentiate an active tab from the inactive ones

## Choosing the tab variant

Primary tabs Primary tabs display an app's main content destinations. They're are placed at the top of the screen, often under a top app bar. should be used when just one set of tabs are needed.

Secondary tabs Secondary tabs display related content within a content area. They're always placed below primary tabs. are necessary when a screen requires more than one level of tabs. These tabs use a simpler style of indicator, but their function is identical to primary tabs.

![Mobile screen with primary tabs near the top of the screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k20o4c-15.png?alt=media&token=1c7dd05f-a6bd-4c00-a290-5ebdd692a1fb)

Tabs can be joined with components like app bars, embedded in a specific UI region, or nested within components like cards and sheets. Tabs control the UI region displayed below them.

## Placement

Tabs are displayed in a single row, with each tab connected to the content it represents. As a set, all tabs are unified by a shared topic.

Secondary tabs Secondary tabs display related content within a content area. They're always placed below primary tabs. should always be placed below primary tabs Primary tabs display an app's main content destinations. They're are placed at the top of the screen, often under a top app bar. .

![Mobile screen with secondary tabs below the primary tabs.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k217y6-16.png?alt=media&token=3a2e7337-2872-4ea8-a56e-9292b857d1cf)

Secondary tabs are found within other content to assist users with greater detail

## Responsive layout

For fixed tabs, the maximum width for each tab should be determined by the width of the widest tab. The group of tabs should use a fluid margin Margins are the spaces between the edge of a nested element and its parent element, such as the space between a button's label text and the edge of its container. [More on margins](/m3/pages/understanding-layout/spacing#38a538d7-991f-4c39-8449-195d32caf397) and align to the center or leading edge of the body region.

Avoid using more than four tabs at once. At five or more tabs, the container becomes cramped.

![Four fixed tabs spaced to match one another.](https://lh3.googleusercontent.com/FyF1DB36V4-1BUcdhWode9xWyMAv8dxbQI41nyqeelttSpQive9jjYbxjC6qmmZCq7-7OKSAtlkWeFG0ufcBT-KVUFHAniHePE3F4ZcTy382=w40)

Tabs can grow in width in relation to the number of items contained within

## Behavior

### States

By default, tabs inherit enabled An enabled state communicates an interactive component or element. [More on enabled state](/m3/pages/interaction-states/applying-states#39b2fc90-01db-41b5-b6f8-47be61ed1479) states States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) with one active state.The inactive and active states of a tab can inherit a hover A hover state communicates when a user has placed a cursor above an interactive element. [More on hover state](/m3/pages/interaction-states/applying-states#71c347c2-dd75-485b-892e-04d2900bd844) , focus A focused state communicates when a user has highlighted an element, using an input method such as a keyboard or voice. [More on focused state](/m3/pages/interaction-states/applying-states#bc6d6853-48ef-490e-8076-448e89e69f0f) , and pressed A pressed state communicates a user tap. [More on pressed state](/m3/pages/interaction-states/applying-states#c3690714-b741-492d-97b0-5fc1960e43e6) states.

![Four states of a tab.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2k2312r-18.png?alt=media&token=097ee5d4-3881-444a-8729-143cad991109)

Active, hover, focused, and pressed states

### Fixed tabs

Fixed tabs display all tabs in a set simultaneously. They are best for switching between related content quickly, such as between transportation methods in a map. To navigate between fixed tabs, tap an individual tab, or swipe left or right in the content area.

Fixed tabs allow users to see all possible kinds of content available

#### Tap a tab

Navigate to a tab by tapping on it.

Tapping on a tab directly

#### Swipe within the content area

To navigate between tabs, users can swipe left or right within the content area.

Users can swipe between fixed tabs to see related content quickly

Use caution when placing other swipeable content (such as interactive maps or list Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview) items) in the content area.

check Do

Use different gesture directions when using tabs

close Don’t

Avoid placing swipeable items in the content area of a UI that has tabs, as the user may mistakenly swipe the wrong component

### Scrollable tabs

When a set of tabs cannot fit on screen, use scrollable tabs. Scrollable tabs can use longer text labels and a larger number of tabs. They are best used for browsing on touch interfaces.

Padding should remain the same when using scrolllable tabs and long labels

### Scrolling content

When a screen scrolls up and down through content, tabs can either be fixed to the top of the screen, or scroll off the screen. If they scroll off the screen, they will return when the user scrolls upward.

Tabs can be use to create elevation

check Do

Tabs can scroll offscreen on scroll, and reappear when the page is scrolled up

close Don’t

Don’t scroll tabs behind an app bar. When tabs are attached to a component, they should appear and move as a single unit.
