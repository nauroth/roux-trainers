---
source: https://m3.material.io/components/lists/guidelines
title: "Lists"
captured: 2026-09-14
---

# Lists

![3 list items show different layout options, with varying sizes of elements in the leading slot.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiewlynz-01.png?alt=media&token=a7cf803c-b9cd-4c57-a8ea-c8c359aeb52c)

Lists can include a range of layout combinations:

1.  Leading images, videos, icons, or avatars

2.  Trailing text, icons, or icon buttons

## Usage

Lists are vertical groups of text, icons, images, and other elements, optimized for reading comprehension.

List items can contain multiple actions at once, like selection, icon buttons, overflow menus, and more.

![3 list items with avatars using different expressive shapes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiewcuoc-02.png?alt=media&token=d865febf-86d5-462f-8c66-4e6ebc4e5e5d)

A clear visual hierarchy makes lists easy to scan and read

Use lists for communicating or selecting discrete items, such as choosing from a set of colors.

![A list of colors with Periwinkle selected.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiewi9tz-03.png?alt=media&token=7bc2a849-966d-418b-ac1b-ffaf6113e05e)

Lists are an organized way to add imagery and supporting elements to selection. In this color selection example, the list contains color swatches, color names, and a checkbox action.

A list should be easy to scan. Any element can be used to anchor and align list item content.

Place supporting visuals and primary text in the same position in each list item.

Don’t vary the position of elements within a list.

![4 versions of the same list highlighting avatar and text alignment.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiewmxat-04.png?alt=media&token=0bc12f22-822f-4dca-a55e-cf803c736160)

1.  Sample list
2.  Content placement in a row
3.  Supporting visuals are aligned for easy scanning
4.  Primary text is aligned for easy scanning

List items can adapt to different lengths of text:

**Label text only
**A list item can contain a single line of label text. If the text doesn’t fit on one line, it can wrap or be truncated.

**Label text with supporting text
**A list item can include supporting text below the label text. Both the label and supporting text can wrap or be truncated.

![3 lists show items with label text only, label text with 1-line of supporting text, and label text with 2-lines of supporting text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiewpdzm-05.png?alt=media&token=83cc77fe-12ec-4e3f-a81a-3ca656b25f1a)

Three examples of list item sizes:

1.  Label text only

2.  Label text with supporting text on one line

3.  Label text with supporting text that wraps to two lines

## Anatomy

![List diagram with 10 elements.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiewsyte-06.png?alt=media&token=cf5f9795-d6a3-4dbd-a44b-b2496d59a9ef)

Container and label text are required. All other elements are optional:

1.  Container

2.  Label text

3.  Supporting text

4.  Trailing text

5.  Trailing icon

6.  Trailing selection control - checkbox, radio button, switch

7.  Leading avatar container

8.  Leading avatar text

9.  Leading icon

10.  Leading media - image or video

### Container

List containers hold all list items and their elements. List item size is determined by the tallest element within the list item. [See layout measurements](/m3/pages/lists/specs#1824b94d-7d17-4a29-889f-d277037a1313)  

When a list item features an image, consider customizing the container color to use a content-based color scheme. This should be applied to either the enabled state or for an interaction.

A list item can include a leading image and a vibrant color

### Label & supporting text

Keep label text brief.   

To ensure list items are scannable:

-   Limit supporting text to one to three lines

-   Truncate supporting text, depending on screen size

[See adaptive guidance](/m3/pages/lists/guidelines#561cc637-aa43-4055-be1e-0716faeef7af)

![A list item with a leading image, concise label text “Art events”, and 2 lines of truncated supporting text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiex0v5m-08.png?alt=media&token=1cb8a712-4266-4e50-a3df-fe0b9d04e5e8)

Limit supporting text to one to three lines

### Icons

**Leading icon**
A leading icon should provide a quick visual cue that relates to the item's label text, helping people scan the list.

**Trailing icon**
A trailing icon is often used to communicate status or indicate an action, like **Show more**.

![Leading icons should relate to the label text
A list of items with leading and trailing icons on a mobile device.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiexc5t2-9.png?alt=media&token=a485fa4a-9174-4c45-812c-23f19092eff9)

1.  Leading icons should relate to the label text

2.  Trailing icons can communicate an action

### Leading media

List items can contain a leading avatar, image, or video. Anchor visuals to the leading edge of the list to improve scannability.

Leading video thumbnails can open a video player or even play within the list.

![A list of plants with images at leading edge.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiexhs7r-10.png?alt=media&token=bf90846b-653f-4e89-9cbe-5b429e162c37)

check Do

Place supporting visuals, like thumbnails, at the leading edge of a row to improve scannability

![A list of plants with an image in the middle of the row makes it difficult to align the name and price.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiexip9k-11.png?alt=media&token=c678f226-2089-493f-855d-5fc175e900bb)

exclamation Caution

Avoid placing visuals in the center of a row because it makes the list difficult to scan

#### Avatars

List items can include images in circular or expressive shapes to represent a person or entity.

Use square or rectangular images for other content, such as products or videos.

![List of contacts with avatars with a circular, expressive crop to indicate a person.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiexkoay-12.png?alt=media&token=5e57234e-4437-4411-857f-dc0694d0f757)

Use an expressive, circular avatar to represent a person or entity

#### Primary & secondary actions

Use spacing to draw attention to the most important aspect of the list item, usually the primary action area or key content.

![A folder icon in the primary action area takes up the full height of the list item.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiexnuvs-13.png?alt=media&token=a295b2a5-4ec4-435e-b6ef-8507e4c2a387)

The primary action takes up more space:

1\. Primary action area

2\. Secondary action area

![A list item has an avatar in the more distinguishing content position on the left, and “15 min” trailing text on the right.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiexoaw7-14.png?alt=media&token=a19485e2-bb2e-4664-ba06-e59a0e1e969e)

Align content by importance:

1\. More distinguishing content

2\. Less distinguishing content

### Trailing text

Trailing text can provide additional meta-information about a list item, such as a price, count, or other details.

![The date “Nov 17” as trailing text in a concert ticket list item.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiextt91-15.png?alt=media&token=31a353c9-dda5-4e57-9840-f0ad4606b291)

Use trailing text for supplemental details, like a price, count, or date

### Selection controls

Selection Selection lets users choose specific items to act on. [More on selection](/m3/pages/selection) controls display list item actions. Position controls at the leading or trailing end of a list item:

-   Use  checkboxes Checkboxes let users select one or more items from a list, or turn an item on or off. [More on checkboxes](/m3/pages/checkbox/overview) to select multiple items

-   Use  switches Switches toggle the state of an item on or off. [More on switches](/m3/pages/switch/overview) to toggle settings on or off

-   Use radio buttons Radio buttons let people select one option from a set of options. [More on radio buttons](/m3/pages/radio-button/overview) to select a single item

![3 lists with different selection controls.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiexzfsy-16.png?alt=media&token=18466d3e-1b66-4ddf-b1d6-ff1a9fe21e12)

List items with: 

1.  Checkboxes

2.  Switches 

3.  Radio buttons

### Gaps & dividers

Gaps or dividers can separate lists into items and groups:

-   Use **gaps** for contained lists. Gaps leverage expressive shape and containment tactics.

-   Limit **dividers** to uncontained or complex lists, only when a stronger visual separation is necessary.

![Filled list items in an inbox separated by gaps.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiezuscb-17_do.png?alt=media&token=84c1ee7c-a7e6-441c-ba3c-19442e4011f8)

check Do

Use **segmented gaps** and filled list items to define a list group

![An uncontained list with city names separated by dividers.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiezvi6d-18caution.png?alt=media&token=0398b3a8-3d8b-4e62-999b-0859fffaadcc)

exclamation Caution

Limit the use of **dividers** to uncontained lists

## Adaptive design

### Line length

In fluid layouts Layout is the visual arrangement of elements on the screen. [More on layout](/m3/pages/layout-overview/overview) , avoid excessively long lines of text when expanding containers and text-heavy components. This often means changing margins Margins are the spaces between the edge of a nested element and its parent element, such as the space between a button's label text and the edge of its container. [More on margins](/m3/pages/spacing/overview#753cb18a-b6ba-4727-87b3-cb1b7b497a9a) and typography properties as the container scales.

![4 list items with 2-line supporting text have adjusted margins to preserve readability.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiezxs4c-19_do.png?alt=media&token=2e5e3f61-38e3-4ca9-8506-7a04a16c1d4d)

check Do

Adjust margins to create a more comfortable line length for reading

Adapt the width of the list container based on a line’s length, or by switching to a multi-column layout.

![List items in a 2-column layout, with each item showing text preview.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiezzrzc-20_do.png?alt=media&token=6c164d25-b039-4125-98bc-961691f9c1e7)

check Do

A multi-column layout can help break up content when needed

The ideal line length for text is typically between 40 to 60 characters, but large-screen devices can accommodate up to 120 characters per line. If a line of text is close to 120 characters in length, consider increasing the line height to improve readability .

![List items with elongated line length.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmif01yxf-21_dont.png?alt=media&token=59608a8d-5309-4a91-9aca-ce653489c67f)

close Don’t

Don’t scale components without adjusting other affected areas of the screen, such as text length. This can result in line lengths that make reading difficult.

A list with a compact breakpoint Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact)  can become part of a two-column layout at an expanded breakpoint Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , adjusting the amount of information shown in each list item.

Reduce the amount of information shown at compact breakpoints

### Adapt list elements & layout

Lists can change their layout to adapt to different breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) . This affects the size and placement of content.

For example, a list at a compact breakpoint can adjust margins, spacing, or density to better fit an expanded window.

On larger screens, lists can show more content, like supporting text and larger imagery

### Swap components

Lists are just a compact composition of images, text, and actions. Other components, like cards and carousels, use the same elements but take up more space.   

At larger breakpoints, consider swapping a list to a component with a similar purpose to take advantage of available space.

Information displayed in list items on mobile can change to cards on tablet and desktop

### Compact breakpoints

Lists should extend edge-to-edge in compact windows. Selecting a list item should open a page with the details.

On small screens, people can navigate between lists and full-screen detailed views

### Medium & expanded breakpoints

Medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) and expanded breakpoints Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , such as tablet and desktop screens, can display primary and secondary content in the same view.

For example, a list and the detailed information can appear side-by-side.

![A larger screen displays list items and a detailed expansion of one item on the same screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmif0jzwl-26.png?alt=media&token=9614eb09-3217-4c62-82a3-958065860772)

On larger screens, a list-detail view can be more appropriate

At a larger breakpoint, a list may transform into a carousel.

Lists can transform into carousels in expanded windows

Lists can also show more or less content as they scale up and down in size.

For example, a list item can reveal more content when the component expands.

List items reveal supporting text at expanded breakpoints

## Behavior

### List selection modes

The selected state applies to the entire list item. For example, when an item with a checkbox is selected, both the list item and the checkbox show a selected state.

#### Single-select

Lists can feature a single-selection component such as a radio button Radio buttons let people select one option from a set of options. [More on radio buttons](/m3/pages/radio-button/overview) .

Single-select list items:

-   Don’t support multi-actions

-   Can’t have secondary nested actions

-   Shouldn’t use checkboxes

![A 3-item list with radio buttons, with 1 item selected.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmielqxgm-29.png?alt=media&token=01482923-26aa-4237-9ed7-8bf0c4cb52ac)

Use radio buttons to allow a single selection in a list

#### Multi-select

Multi-select lists allow for multiple list items to be toggled on.

Multi-select list items:

-   Pair well with checkboxes and switches

-   Can’t have secondary nested actions

-   Shouldn’t use radio buttons

![A 3-item list with checkboxes and 2 items selected.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmielw5u4-30.png?alt=media&token=452063d1-7f87-49ce-9bed-07fb0459add1)

Use checkboxes or switches for multi-select lists

#### Single-action

In a single-action list, the entire list item performs one action, such as navigating to a new page.

Single-action list items:

-   Can’t have secondary nested actions

-   Can’t be toggled into a persistent selected state

![A 3-item list where each item is a single tappable area.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmielzpxu-31.png?alt=media&token=1b8831f3-1559-4969-ab1e-485277328d1c)

Use a single-action list for a primary action, like navigation

#### Multi-action

Multi-action lists can support multiple nested actions within a list item.

The primary action should take up the majority of the space in the leading and content positions.

Place supplementary actions, like a bookmark or menu, in the trailing position.  

[More on multi-action accessibility](/m3/pages/lists/accessibility#b69b89a9-7ca0-4249-b25b-2d0c85a41dc0)

![A 3-item song list where each item has 2 trailing icons: a bookmark and overflow menu.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiem2107-32.png?alt=media&token=0f04fe0b-b4d8-44cc-8907-2cbd0369be87)

Place supplementary actions in the trailing position of a list item

#### Non-interactive

Non-interactive lists can organize information in a scannable way. They don’t perform any actions and can’t be selected.

![A 3-item non-interactive list showing a historic timeline of space travel.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmiem457u-33.png?alt=media&token=66743795-977c-4cb7-b968-2a513a62d024)

Use non-interactive lists to make information easy to scan

### List interactions

#### Expand & collapse

List items containing other list items can expand and collapse in a folder-like manner, to reveal or hide content. 

Tapping a list item expands it vertically across the entire screen using a container transform transition pattern.

To expand a list item, display a parent-child transition

#### Swipe

On Android, list items can reveal buttons on swipe. Use a mix of button styles for visual interest and hierarchy.  

The primary action must be the final end-aligned option. A full swipe triggers this action, clearing the list item and all other actions off-screen. 

Swipeable list items should include alternative ways to access hidden actions, such as a more icon.

[More on swipe accessibility](/m3/pages/lists/accessibility#32f5115c-b15e-4af6-8c1a-4807bee2bf7a)

![List of recipes with “Fresh baked breads” swiped to reveal a archive icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmshq8qm6-35-key03.png?alt=media&token=1e4721af-a5b3-4288-805d-a8970578e128)

When a list item is swiped, it can be archived or reveal more actions
