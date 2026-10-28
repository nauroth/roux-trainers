---
source: https://m3.material.io/components/dialogs/guidelines
title: "Dialogs"
captured: 2026-09-14
---

# Dialogs

> Dialogs provide important prompts in a user flow

![Basic dialog in isolation](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sf9qay-01.png?alt=media&token=5e8c7d9f-1451-4104-b5a4-c64b2e98296f)

A basic dialog

## Usage

A dialog is a modal window that appears in front of app content to provide critical information or ask for a decision. Dialogs disable all app functionality when they appear, and remain on screen until confirmed, dismissed, or a required action has been taken.

Dialogs are purposefully interruptive, so they should be used sparingly. A less disruptive alternative is to use a dropdown menu Menus display a list of choices on a temporary surface. [More on menus](/m3/pages/menus/overview) , which provides options without interrupting a user’s experience.

![Diagram of basic and full-screen dialogs.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfc7pz-02.png?alt=media&token=48e473e3-7381-4089-8e91-11de31b32586)

There are two variants of dialogs:

1.  Basic dialog

2.  Full-screen dialog

![Dialog in front of app content.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfcqhr-03_do.png?alt=media&token=3655fc78-54b9-44f6-a239-d93670bb087e)

check Do

Use dialogs for prompts that block an app’s normal operation, and for critical information that requires a specific user task, decision, or acknowledgement

![Low-priority dialog in front of app content.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfdc9w-03_dont.png?alt=media&token=6a548db0-3131-46af-9f44-d30b74de4904)

close Don’t

Don’t use dialogs for low- or medium-priority information. Instead use a snackbar, which can be dismissed or disappear automatically.

### Similar components

Snackbars Snackbars show short updates about app processes at the bottom of the screen. [More on snackbars](/m3/pages/snackbar/overview) are also designed to show important messages.

Choose the right component based on the importance of the message. This component messaging strategy helps avoid overusing dialogs.

![Snackbar on a phone saying that new photos were synced to the device. No buttons exist.](https://lh3.googleusercontent.com/XLiUu7mOltTNoUojZheRl95_BXn_O9vc9-PwyzL2W_vZPBccPC1bntpTZ6KwgzKDMDt8UGih90E9GPDGd-uyGWZz0eqLMZOItywMT-yiDxS7=w40)![Snackbar on a phone saying that new photos were synced to the device. No buttons exist.](https://lh3.googleusercontent.com/XLiUu7mOltTNoUojZheRl95_BXn_O9vc9-PwyzL2W_vZPBccPC1bntpTZ6KwgzKDMDt8UGih90E9GPDGd-uyGWZz0eqLMZOItywMT-yiDxS7=s0)

Snackbars can disappear automatically

| **Component** | **Importance** | **Action needed** |
| --- | --- | --- |
| Snackbar | Low importance | Optional: Snackbars may not have a button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) , and can disappear automatically |
| Dialog | High importance | Required: Dialogs block the main content until an action is confirmed |

## Anatomy

### Basic dialog

![Diagram of 7 elements of basic dialog.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfhos4-07.png?alt=media&token=c26b3dc0-c5bd-4fe6-8081-13019a21814c)

1.  Container
2.  Icon (optional)
3.  Headline (optional)
4.  Supporting text
5.  Divider (optional)
6.  Buttons label text
7.  Scrim

### Full-screen dialog

![6 elements of full-screen dialog.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfick9-08.png?alt=media&token=7287dba3-0638-4a9f-afde-dcc94ce608e2)

1.  Container
2.  Header region
3.  Icon (close affordance)
4.  Headline (optional)
5.  Button label text
6.  Divider (optional)

### Container and scrim

Dialog containers appear above other screen elements and hold the dialog’s headline, text, buttons Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) , and list Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview) items.

To focus attention on the dialog, surfaces behind the container are scrimmed with a temporary overlay to make them less prominent.

![Basic dialog shown above a scrim overlay that reduces the prominence of the background elements.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfkf69-09.png?alt=media&token=76b7d3c2-c1db-4dc4-aabb-8df0851f4dd7)

Basic dialogs appear over a background scrim

### Headline (optional)

A dialog’s purpose should be communicated by its headline and buttons or actionable items.

Headlines should:

-   Contain a brief, clear statement or question
-   Avoid apologies (“Sorry for the interruption”), alarm (“Warning!”), or ambiguity (“Are you sure?”)

![Dialog title asking “Use location service?”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfl8j1-10_do.png?alt=media&token=6685809e-faa9-4002-a1ca-7b6355cc0c4a)

check Do

This dialog title poses a specific question, concisely explains what’s involved in the request, and provides clear actions

![Dialog title asking “Are you sure?”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sflmm0-11_don't.png?alt=media&token=2b32fc1c-10ea-4041-8719-5a0bbd515d5e)

close Don’t

Don’t use dialog titles that pose an ambiguous question

Headlines should always be succinct. They can wrap to a second line if necessary, and be truncated.

In full-screen dialogs, long headlines or headlines of variable lengths (such as translations), can be placed in the content area instead of the app bar.

![Example full-screen dialog with truncated long headline.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfm2yt-12_Caution.png?alt=media&token=bb20aab8-9a35-4eaf-9f8c-f2fc29f20a6c)

exclamation Caution

Avoid placing long headlines in a full-screen dialog’s app bar (1), as the truncated text may lead to misunderstanding

![Example full-screen dialog with short headline, and longer text in content area.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfmezr-13_do.png?alt=media&token=5244a6e2-9faa-44ec-998d-12d486666021)

check Do

Find ways to shorten app bar text, and place longer headlines into the content area (1) of a full-screen dialog

### Buttons 

Dialog actions are most often represented as buttons Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) and allow users to confirm, dismiss, or acknowledge something.

Buttons are aligned to the trailing edge of the dialog for easier interaction. The confirmation button is always closest to the edge. 

Button alignment responds automatically for right-to-left languages, where the confirmation button is aligned to the left edge.

![Dialog with the confirmation button disabled because a required radio selection is missing.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfmqqd-14_do.png?alt=media&token=12972233-4c46-4c82-9b80-86136ae125ca)

check Do

Disable confirming actions (1) until a choice is made. Dismissive actions are never disabled.

![Dialog with the dismissing action "Cancel" on the right of the 2 buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfn276-15_don't.png?alt=media&token=51d3809f-8761-4ad0-91d1-d3b4b9bc21dc)

close Don’t

Don’t place dismissive actions (1) to the right of confirming actions. Instead, place them to the left of confirming actions.

![Dialog with a single-action button: “OK”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfq9tm-16_do.png?alt=media&token=1ac568e8-5f77-443d-9a0f-ee24e2d5ae71)

check Do

A single action may be provided only if it’s an acknowledgement

![Dialog with 2 button choices: “Cancel”, “Got it”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfqm2i-17_don't.png?alt=media&token=834d6d37-9c33-4d38-a72a-ba3fc1c84783)

close Don’t

Avoid presenting people with unclear choices. **Cancel** doesn't make sense here because no clear action is proposed.

Dialogs should contain a maximum of two actions.

-   If a single action is provided, it must be an acknowledgement action
-   If two actions are provided, one must be a confirming action, and the other a dismissing action

![Dialog with 2 buttons side-by-side: “Disagree”, “Agree”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfqzp1-18_do.png?alt=media&token=0c0f6350-ea79-41f6-a82b-8adcb6ef4f5d)

check Do

Display two text buttons next to one another

![Dialog with 2 stacked buttons: “Turn on speed boost”, “No thanks”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfre4i-19_caution.png?alt=media&token=e19e944e-1e50-437b-81e7-643e4dd9dd6b)

exclamation Caution

Stacked buttons accommodate longer button text, but take up more room. Confirming actions appear above dismissive actions.

Providing a third action, such as **Learn more**, is not recommended as it navigates the user away from the dialog, leaving the dialog task unfinished.

Rather than adding a third action, an inline expansion can display more information. If more extensive information is needed, provide it prior to entering the dialog.

![Dialog with 3 text buttons: Learn more, Disagree, Agree.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfrskh-20.png?alt=media&token=ce701d0c-c122-4fda-9244-be331795f9a5)

exclamation Caution

The **Learn more** action (1) navigates away from this dialog, potentially leaving it in an indeterminate state

## Basic dialog

Basic dialogs interrupt users with urgent information, details, or actions. Common use cases for basic dialogs include alerts, quick selection Selection lets users choose specific items to act on. [More on selection](/m3/pages/selection) , and confirmation.

![Example of basic dialog action request.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfumns-21.png?alt=media&token=f60188e3-24f3-4ede-a5c2-ae41ebbda58f)

Basic dialogs require a person to take action before it will close

![Example of basic dialog confirmation.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfuxlx-22.png?alt=media&token=356b591f-4aa3-4889-95f5-2c579e0c699f)

Basic dialogs can give people the ability to provide confirmation of a choice before committing to it

Basic dialogs most often appear as alerts or lists Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview) , but can have a variety of layouts Layout is the visual arrangement of elements on the screen. [More on layout](/m3/pages/understanding-layout/overview) and component combinations, including lists, date pickers Date pickers let people select a date, or a range of dates. [More on date pickers](/m3/pages/date-pickers/overview) , and time pickers Time pickers help users select and set a specific time. [More on time pickers](/m3/pages/time-pickers/overview) .

![Date picker dialog.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfzk1g-23.png?alt=media&token=5d0f7fb7-2646-4c2d-9450-71e463c72f7f)

Date picker dialogs allow people to tap a date, then confirm it by tapping **OK**

![Time picker dialog.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sfxxnd-24.png?alt=media&token=3b205d81-1479-4bf5-aa8c-c803aa41e7de)

Time picker dialogs allow people to move the clock hand and then confirm by tapping **OK**

## Full-screen dialog

Full-screen dialogs fill the entire screen, containing actions that require a series of tasks to complete. One example is creating a calendar entry with the event title, date, location, and time.

Because they take up the entire screen, full-screen dialogs are the only dialogs over which other dialogs can appear.

Use a [container transform](/m3/pages/motion-transitions/transition-patterns#b67cba74-6240-4663-a423-d537b6d21187) pattern to transition a FAB Floating action buttons (FABs) help people take primary actions. [More on FABs](/m3/pages/fab/overview) into a full-screen dialog.

Full-screen dialogs contain actions that require a series of tasks to complete

When a full-screen dialog is closed without being saved, a basic dialog appears in front of it to confirm selections Selection lets users choose specific items to act on. [More on selection](/m3/pages/selection) should be discarded without saving changes.

A basic modal dialog appears when a full-screen dialog is closed without being saved

Full-screen dialogs may be used for content or tasks that meet any of these criteria:

-   Dialogs that include components which require keyboard input Inputs are devices that provide interactive control of an app. Common inputs are a mouse, keyboard, and touchpad. , such as form fields

-   When changes aren’t saved instantly

-   When components within the dialog open additional dialogs

Full-screen dialogs are for compact breakpoints Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) only, like mobile devices. For medium and expanded breakpoints Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , use a basic dialog.

### Saving selections

To save a selection in a full-screen dialog, use **Save**.  The close icon or dismissive action, such as **Cancel** or **Back**, should close the dialog.

### Confirmation

The confirmation action should be clear about what happens next, like **Send** or **Create**. Avoid using vague terms like **Done**, **OK**, or **Close**. Only trigger an additional basic dialog if the action fails. Don’t disable A disabled state communicates an inoperable component or element. [More on disabled state](/m3/pages/interaction-states/applying-states#4aff9c51-d20f-4580-a510-862d2e25e931) the confirmation button.

![Full-screen dialog with create button as confirmation action.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sg5wkr-27_do.png?alt=media&token=8aa1b2c7-d3e9-4c8d-a171-dd8f5920102a)

check Do

A **Create** button is clear that the event will be created

![Full-screen dialog with an additional basic dialog asking if you want to create this event.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sg67kv-28_don't.png?alt=media&token=a6a5c838-d758-4465-b05e-f29ac5eb0d3f)

close Don’t

Don’t trigger a basic dialog when the confirming action is selected

### Dismissing

When someone dismisses a full-screen dialog, a basic dialog should appear to confirm that they want to discard the unsaved changes.

![A basic dialog with options to either keep editing or discard unsaved changes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sg91cq-29_do.png?alt=media&token=1829089e-6440-4fcf-8d7b-5b4dd688ad92)

check Do

Use a basic dialog to confirm that the user wants to discard unsaved changes

![A full-screen dialog with a Close button as the confirming action.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sg9bz5-30_don't.png?alt=media&token=0d99e0df-e3f2-4c02-9a9c-598c311f8e7c)

close Don’t

Don’t use the confirming action to dismiss the full-screen dialog

### Error messages

Errors about the dialog fields should always appear inline where they occur. Some components like text fields Text fields let users enter text into a UI. [More on text fields](/m3/pages/text-fields/overview) have built-in error messaging, while others like checkboxes Checkboxes let users select one or more items from a list, or turn an item on or off. [More on checkboxes](/m3/pages/checkbox/overview) and radio buttons Radio buttons let people select one option from a set of options. [More on radio buttons](/m3/pages/radio-button/overview) need error messages to be added next to the fields.

General errors such as network issues preventing saving or submitting should appear in a basic dialog when the confirming action fails.

Error messages should clearly but briefly explain the source of the error and how to fix it. Show all errors on the page at once so people can fix everything before trying again.

![A full-screen dialog with inline error messages for text fields.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sg9nzm-31_do.png?alt=media&token=80b7cdd4-6892-4661-a674-6e85c62b9122)

check Do

Error messages related to the fields should be displayed inline

![A basic dialog mentioning that entries were not saved due to a connection issue.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sg9xoh-32_caution.png?alt=media&token=5d180627-2303-4b00-92e5-39d90741c8fd)

exclamation Caution

Errors unrelated to the fields can be displayed in a basic dialog

### Dialog windows

Launching a full-screen dialog temporarily resets the app’s perceived elevation, allowing simple menus Menus display a list of choices on a temporary surface. [More on menus](/m3/pages/menus/overview) or dialogs to appear above the full-screen dialog. They cover the screen and don’t appear as a floating modal window.

### Navigation

Because full-screen dialogs can only be completed, dismissed, or closed, the close “X” icon button should be the only navigation option in the app bar App bars display information and actions at the top of a screen. [More on app bars](/m3/pages/app-bars/overview) .

## Adaptive design

Dialogs can swap variants as the breakpoint Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) changes. For example, a full-screen dialog Full-screen dialogs fill the entire screen, displaying actions that require a series of tasks to complete. They're often used for creating a calendar entry. [More on full-screen dialogs](/m3/pages/dialogs/guidelines#007536b9-76b1-474a-a152-2f340caaff6f) can change into a basic dialog Basic dialogs interrupt users with urgent information, details, or actions. They're often used for alerts, quick selection, or confirmation. [More on basic dialogs](/m3/pages/dialogs/guidelines#97ac3858-3932-4084-ae8e-73e42b7cb752) at larger breakpoints.

![Example of full-screen dialog on left, simple dialog on right](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sgbmj3-33.png?alt=media&token=17fd8879-6435-409a-a3a9-8bd390799892)

1.  Full-screen dialog on mobile
2.  Dialog on a tablet

### Medium breakpoint

Basic dialogs appear in a center position by default.

Their position can be overridden to provide a more ergonomic experience.

![Basic dialog on tablet photos app.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sgc676-34.png?alt=media&token=9bc72c88-69cf-49e2-a631-070890d60754)

Dialog custom positioned on the right side of the screen

### Expanded breakpoint

Dialogs on expanded breakpoints Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , like desktop, are modal windows above a scrim. This puts the dialog at the forefront of a person's view, calling attention to the action prompted in the dialog.

![Example of desktop dialog.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sgj2r1-35.png?alt=media&token=a9f16af1-69fe-43cc-9806-883818a87845)

Desktop dialogs call attention to the required action

Basic dialogs can be custom-positioned anywhere on larger screens, respecting margins Margins are the spaces between the edge of a nested element and its parent element, such as the space between a button's label text and the edge of its container. [More on margins](/m3/pages/understanding-layout/spacing#38a538d7-991f-4c39-8449-195d32caf397) to prevent edge collision.

![Basic dialog position diagram.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sgjir4-36.png?alt=media&token=e2dd2b5a-1e2e-4051-a0da-4ec15079f2ce)

Custom placement area for basic dialogs that respects a 56dp margin from the edges of the screen

## Behavior

### Appearing

Dialogs appear without warning, requiring users to stop their current task. They should be used sparingly, as not every choice or setting warrants interruption.

Dialogs use an [enter and exit](/m3/pages/motion-transitions/transition-patterns#e1c2a650-d7a4-4a6d-9025-e6b7845291ed) transition pattern to appear on screen.

A dialog appears with an enter and exit transition

### Position

Dialogs retain focus until dismissed or an action has been taken, such as choosing a setting. They shouldn’t be obscured by other elements or appear partially on screen, with the exception of full-screen dialogs.

![A basic dialog covering a full-screen dialog.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8sgqe15-38.png?alt=media&token=9a9c7716-0f17-4ee5-a3c9-a6fb5114547a)

Dialogs shouldn’t be obscured by other elements except for full-screen dialogs

### Scrolling

Most dialog content should avoid scrolling. Even when scrolling is required, the dialog title is pinned at the top, with buttons Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) pinned at the bottom. This ensures selected content remains visible alongside the title and buttons, even upon scroll.

Dialogs don’t scroll with elements outside of the dialog, such as the background.

When viewing a scrollable list of options, the dialog title and buttons remain fixed
