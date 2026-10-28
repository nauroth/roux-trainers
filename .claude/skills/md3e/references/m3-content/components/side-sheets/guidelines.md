---
source: https://m3.material.io/components/side-sheets/guidelines
title: "Side sheets"
captured: 2026-09-14
---

# Side sheets

> Side sheets show secondary content anchored to the side of the screen

![Side by side comparison of a standard and a modal side sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqqqohk-01.png?alt=media&token=51d3df6c-574b-4aaf-bd7a-b70c47c82c6a)

1.  Standard side sheet
2.  Modal side sheet

## Usage

Standard side sheets Standard side sheets display content without blocking access to the screen’s primary content, such as an audio player at the side of a music app. They're often used in medium and expanded breakpoints like tablet or desktop. are supplementary surfaces used mostly in medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) to  expanded breakpoints, Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded)  like tablet and desktop. They provide a consistent and predictable surface for contextual actions and information.

Standard side sheets display content that complements the screen’s primary content. They remain visible while people interact with primary content.

Common uses include:

-   Displaying a list of actions that affect the screen’s primary content, such as filters

-   Displaying supplemental content and features 

![Standard side sheet showing supplementary information about a photo.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqr6mnd-02.png?alt=media&token=8c90dc20-b3b0-4725-9130-ba118c870255)

Information about a photo in a standard side sheet

Modal side sheets Modal side sheets appear in front of app content, disabling all other app functionality when they appear, and remaining on screen until confirmed, dismissed, or a required action has been taken. They're often used in compact breakpoints, like mobile, due to limited screen size. are preferred in compact breakpoints Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) , like mobile, due to limited screen size. 

They can display the same kinds of content as standard side sheets, but must be dismissed in order to interact with the underlying content.

![Modal side sheet showing filter controls.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqrab5f-03.png?alt=media&token=0729930f-cd91-430a-ad7a-3c74997f4771)

Modal side sheet with filter controls

Side sheets have a fixed width and typically span the height of the screen. 

Their dimensions depend on how the app’s layout Layout is the visual arrangement of elements on the screen. [More on layout](/m3/pages/understanding-layout/overview) is subdivided into UI regions.

![A modal sheet at the right of a screen, with the correct inset.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqrlvws-04-do.png?alt=media&token=1a29c903-cb7f-4b43-917f-8a584edc828b)

check Do

Place side sheets along the edge of the screen, usually on the right side to avoid interference with any navigational components on the left edge. They can be slightly inset by 16dp.

![A modal side sheet at the right of the screen with the wrong inset.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqrngv8-05-don't.png?alt=media&token=6167c058-b004-42fb-a408-c1f3f8bdea12)

close Don’t

Don’t inset a side sheet from the screen edges far beyond the recommended margin. This makes the sheet’s position and scroll behavior unclear, while obscuring primary content.

## Anatomy

![4 elements of a standard side sheet.  ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqrqfpt-06.png?alt=media&token=b39ae6aa-ee8b-45cb-9d9b-c3aab1f16a67)

1.  Divider (optional)
2.  Headline
3.  Container
4.  Close icon button

![7 elements of a modal side sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqrrjh7-07.png?alt=media&token=989dc9f2-073d-4b86-8889-02ea9651aaf1)

1.  Back icon button (optional)
2.  Headline
3.  Container 
4.  Close icon button
5.  Divider (optional) 
6.  Action buttons (optional) 
7.  Scrim

### Container

Side sheet containers hold all side sheet elements. Their size is determined by the space those elements occupy.
 
The container is the only required element of a side sheet.

![A modal side sheet’s container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqsampe-08.png?alt=media&token=6de272f2-1434-4002-8037-f40e904d54b8)

1.  Container

### Back icon button (optional)

Icon buttons Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview) can provide ways to exit a side sheet or move to a different experience.

Because the primary content behind or beside a side sheet is always visible, it’s important to provide affordances for leaving a side sheet and returning to the primary content.

![Back icon button on the upper left of a modal side sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqsgqgs-09.png?alt=media&token=77f536ad-a501-4715-9655-d5b7fdcab733)

1.  Back icon button

### Close icon button (optional)

A close affordance provides a consistent method for dismissing a side sheet. 

A close icon button is highly recommended, increases accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview/principles) , and makes focused A focused state communicates when a user has highlighted an element, using an input method such as a keyboard or voice. [More on focused state](/m3/pages/interaction-states/applying-states#bc6d6853-48ef-490e-8076-448e89e69f0f) side sheets easier to close.

![Close icon button on the upper right of a modal side sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqsns8t-10.png?alt=media&token=94c3975a-172e-42aa-b2ab-a335f9c9e858)

1.  Close icon button

### Action buttons (optional)

Buttons Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) represent actions available from a side sheet. Examples: **Save**, **Edit**, **Download**

Use elevation Elevation is the distance between two surfaces on the z-axis [More on elevation](/m3/pages/elevation/overview) , fill, and tone Tone is how light or dark a color appears. Tone is sometimes also referred to as luminance. [More on hue, chroma, and tone](/m3/pages/color/how-the-system-works#dc7848f3-b094-4f9a-9e50-bfa5a5029617) to call attention to specific actions.

![Save and cancel buttons at the bottom of a modal side sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqsw3fe-11.png?alt=media&token=4452e717-8e08-4dc3-b1aa-a63252feeae1)

1.  Action buttons

### Divider (optional)

Dividers Dividers are thin lines that group content in lists or other containers. [More on dividers](/m3/pages/divider/overview) can separate different kinds of content and create distinct regions in a side sheet. 

Use a divider to separate:

-   Action buttons from content

-   User-generated content from system-generated content

![Horizontal divider on a modal side sheet.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqsz2ma-12.png?alt=media&token=7c14f328-775a-4c98-9513-1600f48affbe)

1.  Divider

### Content (optional)

Side sheets can display a wide variety of content and layouts Layout is the visual arrangement of elements on the screen. [More on layout](/m3/pages/understanding-layout/overview) , ranging from a list Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview) of actions to supplemental content in a tabular layout.

![2 side sheets with different content displayed side by side.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqt0pai-13.png?alt=media&token=9a10a8aa-ec40-4657-9bd9-b0447cbbb01e)

Form controls shown in a side sheet for app settings

Modal side sheets on smaller screens can transition to standard side sheets at larger screen sizes

## Adaptive design

Side sheets have a default width, but can be resized depending on the needs of the layout Layout is the visual arrangement of elements on the screen. [More on layout](/m3/pages/understanding-layout/overview) . 

When a standard side sheet Standard side sheets display content without blocking access to the screen’s primary content, such as an audio player at the side of a music app. They're often used in medium and expanded breakpoints like tablet or desktop. opens, the body area shrinks to accommodate the sheet’s width while maintaining a margin Margins are the spaces between the edge of a nested element and its parent element, such as the space between a button's label text and the edge of its container. [More on margins](/m3/pages/understanding-layout/spacing#38a538d7-991f-4c39-8449-195d32caf397) on the body’s trailing edge.

Entrance of standard side sheets will cause the body area to adjust and accommodate the new content

### RTL language support

In right-to-left (RTL) languages, side sheets should appear on the left edge of the window with all elements reversed.

![Side sheet along the left edge of a screen. All buttons and icons are reversed.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmeqwb27c-16.png?alt=media&token=5b9ae114-f5ae-4f03-ada2-88ffe3f7f5c1)

Side sheet elements are reversed in RTL languages

## Behavior

Side sheets can vertically scroll independent of the rest of the UI. 

This allows their scroll position and content to persist while the page is scrolled, and vice versa.

Side sheets cannot scroll horizontally.

check Do

Side sheets can vertically scroll internally when their content exceeds the screen height

![A side sheet appears to scroll horizontally.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flw8z3x56-19_don't.png?alt=media&token=b2f8c1b7-ea55-4f8a-b3de-6b9b51be72f9)

close Don’t

Don’t allow horizontal scrolling or lay out the side sheet in a way that suggests horizontal scrolling. A side sheet’s narrow width leaves limited space to fully view items.

### Predictive back

On Android, a gesture Gestures are all the ways people interact with UI elements using touch. [More on gestures](/m3/pages/gestures) called [predictive back](https://github.com/material-components/material-components-android/blob/master/docs/foundations/PredictiveBack.md) allows a person to swipe left or right on the side sheet. 

When predictive back is used:

-   The side sheet detaches from the top and bottom edges of the screen to signal it will close

-   The previous screen is revealed in a preview

-   The side sheet and its content always scales in the direction of the gesture

[Find a list of compatible components](/m3/pages/gestures#22462fb2-fbe8-4e0c-b3e7-9278bd18ea0d)

Preview of the result of the gestures: release to commit, fling to commit, and cancel
