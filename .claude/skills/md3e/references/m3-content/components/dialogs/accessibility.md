---
source: https://m3.material.io/components/dialogs/accessibility
title: "Dialogs"
captured: 2026-09-14
---

# Dialogs

> Dialogs provide important prompts in a user flow

## Use cases

People should be able to use assistive technology to:

-   Open and close a dialog
-   Provide and submit other inputs if the dialog is interactive, such as a text field Text fields let users enter text into a UI. [More on text fields](/m3/pages/text-fields/overview) or selectable list Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview)
-   Scroll the dialog to access all of its contents if that content extends beyond the container of the dialog

## Interaction & style

### Use sparingly

Dialogs are purposefully interruptive. This means they appear in front of app content and disrupt the flow of content for people who may, for example, be using a screen reader to navigate the page.

As such, dialogs should be used sparingly and only to provide critical information. Less critical information should be presented in a non-blocking way within the flow of app content.

![An inline tooltip doesn’t block a photo app’s content on a mobile screen.
A modal dialog blocks the content of a photo app on a mobile screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sgve0z-01_do.png?alt=media&token=15a731c6-5d4e-4b65-afb3-23b6275d0935)

check Do Present non-critical information using other UI within the flow of app content

![A modal dialog blocks the content of a photo app on a mobile screen.
A modal dialog blocks the content of a photo app on a mobile screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sgvt7t-02_don't.png?alt=media&token=f88b6702-ef51-4b3b-97fc-c338539dc884)

close Don’t Avoid putting non-critical information in a dialog

### 200% text size

Avoid excessive text wrapping or truncation by choosing concise strings. 

On Android, headlines should be kept concise enough to fit within **four** lines after the text size is increased to 200%. If a headline exceeds this limit and gets truncated, provide an alternative way to access the full content in a single tap.

![A dialog with 200% text wraps multiple times in the header and description. It covers most of the mobile screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sh8mb2-03_caution.png?alt=media&token=f2a9bb8e-dfb7-46a9-a33f-20f895f8a834)

exclamation Caution

Avoid excessive text wrapping or truncation by choosing concise strings

### Elements within dialogs

Because dialogs can contain various elements within them, refer to the relevant accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview/principles) guidelines for each element. 

Some common examples include:

1.  Text fields Text fields let users enter text into a UI. [More on text fields](/m3/pages/text-fields/overview)
2.  Typography Material's typography follows a type scale with accessibility considerations baked in. [More on typography](/m3/pages/text-fields/accessibility)
3.  Buttons Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview)

![3 elements of a full-screen dialog.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8x3m4cu-04.png?alt=media&token=4e645417-fc9a-48de-a66f-a3b5c5d16723)

Full-screen dialogs can contain various elements such as (1) text fields, (2) typography, and (3) buttons, which each may have their own accessibility guidelines

## Initial focus

When a dialog appears, focus should automatically land on the first interactive element within the dialog.

![A modal dialog titled “Permanently delete?” whose second interactive element is focused by selecting the Tab key.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8wqpp2r-05.png?alt=media&token=d5214cf8-9fa2-458f-9e17-5db4e07235ba)

Initial focus lands on the first interactive element within a dialog. The tab key moves focus through the next interactive elements in a cycle.

![A modal dialog titled “Permanently delete?” whose previous interactive element is focused on by selecting both the Shift and Tab keys.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8wqq56l-06.png?alt=media&token=2eae0221-4a71-4ca5-b873-6d3bf94cbd23)

The shift and tab keys together move focus in the opposite direction. The space or enter key triggers or commits the action of the focused element.

## Keyboard navigation

| Keys | Actions |
| --- | --- |
| Tab | Focus lands on the next interactive element contained in the dialog, or the first element if focus is currently on the last element |
| Shift + Tab | Focus lands on the previous interactive element contained in the dialog, or the last element if focus is currently on the first element |
| Space or Enter | Triggers or commits the action of the focused A focused state communicates when a user has highlighted an element, using an input method such as a keyboard or voice. [More on focused state](/m3/pages/interaction-states/applying-states#bfc1624f-6bcc-4306-b0c1-425e2d8a1bf9) element |
| Escape | Closes the dialog |

## Labeling elements

The accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview/principles) label for a dialog is typically the same as the dialog’s title or headline.

On web, basic dialogs should have the **alert dialog** role.

![An alert dialog with a title “Set up traffic updates?”  Its label is “Set up traffic updates?” and its role as “Alert Dialog.”](https://lh3.googleusercontent.com/lBX7M9XMiL98P1lM9cobZ7GLCzqaLJANo3iKDKkfG_RQRKbKZepzwsjLHXEDveGR3zjduX9QaCz-UIsW7qyHc2TqlHp_B-4RSR1BrYnZAPh-iw=w40)

Basic dialogs are known as alert dialogs on web

Components contained within the dialog, such as buttons, should be labeled according to the guidelines specific to those components.

For common examples, see:

-   Buttons Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/specs)
-   Text fields Text fields let users enter text into a UI. [More on text fields](/m3/pages/text-fields/overview)

![A full-screen dialog titled “New event” containing a “Save” button and a text field, both with their own accessibility labels.](https://lh3.googleusercontent.com/XhxNfz1cPdhx_FBTjgzNKRYc047mN_rLn5N3jQsdL7OCeMe61us_nf42-JVISOD0ZDkjPuXfKLMkPbfxfxPVEBmDdG_L2P1TvSx72RXXkGUV=w40)

Elements within a dialog should be labeled according to their guidelines
