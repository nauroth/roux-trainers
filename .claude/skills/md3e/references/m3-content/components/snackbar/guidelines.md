---
source: https://m3.material.io/components/snackbar/guidelines
title: "Snackbar"
captured: 2026-09-14
---

# Snackbar

> Snackbars show short updates about app processes at the bottom of the screen

![Snackbar at the bottom of a mobile device.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6a9x4e1-1.png?alt=media&token=a139356b-4222-4b76-9c80-cfefdb00ced0)

## Usage

Snackbars inform users of a process that an app has performed or will perform. They appear temporarily, towards the bottom of the screen.

They shouldn't interrupt the user experience. People can browse the page content without being required to interact with the snackbar.

**Frequency**
Only one snackbar may be displayed at a time.

**Actions**
A snackbar can contain a single action. "Dismiss" or "cancel" actions are optional.

![Snackbar showing 'Email archived' text with an 'Undo' text button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6a9y0k8-2.png?alt=media&token=e904bf19-99d6-4d22-9a44-1f986f1574c8)

### Similar components

Dialogs Dialogs provide important prompts in a user flow. [More on dialogs](/m3/pages/dialogs/overview) are also designed to show important messages.

Choose the right component based on the importance of the message. This component messaging strategy can help avoid overusing snackbars.

![Dialog on a phone requiring the user to sign in to continue. Dismissing prevents them from progressing.](https://lh3.googleusercontent.com/-tiKvQVJlOCfknFRqwRFth2PAQgditPIXPneNZWGR_W7XuQHEfYzHpyZR8lkb7gDWylZmqw6jVl9ExMk2sIrWV5SJEDrph3YWse2wdx1X5fc=s0)

Dialogs require immediate action

**When to use snackbars**
Snackbars communicate messages that are minimally interruptive and don’t require user action.

| Component | Priority | User action |
| --- | --- | --- |
| Snackbar | Low priority | Optional: Snackbars disappear automatically |
| Dialog | High priority | Required: Dialogs block app usage until the user takes a dialog action or exits the dialog (if available) |

### Accessibility requirements for web

On web, auto-dismissing snackbars are inaccessible for people with low vision or who require additional time to perceive information. This can be solved in 2 ways:

#### 1\. Add inline feedback

Information in auto-dismissing snackbars must also be communicated using another accessible method inline or near the action that triggered the snackbar. 

For example, update the label on a "Save" button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) to “Saved”, and trigger an auto-dismissing snackbar that communicates the same message. 

#### 2\. Make the snackbar actionable

Alternatively, add actions to the snackbar so it doesn't dismiss until acted on.

![A button labelled "Save" changes to "Saved" after a moment. A snackbar confirms all changes are saved.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoxyec0-5.png?alt=media&token=ba932f45-20b3-4494-b4e9-0bd9ff22208e)

Also communicate snackbar information near the action that triggered the snackbar

## Anatomy

![4 elements of a snackbar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoy0ibw-6.png?alt=media&token=e4018d28-38b2-4af5-b7b0-d6f07688ee41)

1.  Container
2.  Supporting text
3.  Action (optional)
4.  Close button (optional)

### Text label

Snackbars contain a text label that directly relates to the process being performed. In compact breakpoints Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) , the text label can contain up to two lines of text.

![Snackbar on a mobile device reading: "Saved in Vacation album".](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoy1q93-7.png?alt=media&token=cc87fff5-d0bc-4790-a163-98557189a683)

Text labels are short, clear updates on processes that have been performed

![Snackbar on mobile with one line of content.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoy2p4f-8.png?alt=media&token=afb9be61-cec7-4121-a176-37c0909a64e8)

check Do

Keep the snackbar text label to one line long when possible

![Snackbar on mobile with two lines of content.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoy3zcx-9.png?alt=media&token=8e9c9a97-1872-447b-8a36-36afb1bcef62)

check Do

On mobile, the text label can be up to two lines long

![Snackbar on mobile with an icon and one line of content.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoy4zjx-10.png?alt=media&token=4b2e802b-b450-4558-9e80-15d0ea989e1a)

exclamation Caution

Avoid adding icons to snackbars. If your message needs an icon, consider using a different component such as a dialog.

![Snackbar on mobile with bolded and hyperlinked words.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoy6dj7-11.png?alt=media&token=5d757758-41ea-418e-854b-ce251f747327)

close Don’t

Avoid using stylized text or inline links in snackbars; they can add unwanted complexity. If your message needs a link, add a button instead, or use a different component.

### Container

Snackbars are displayed in rectangular containers with a grey background. Containers should be completely opaque, so that text labels remain legible.

![Snackbar showing a light text label on a black color container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoy7luk-12.png?alt=media&token=6127148e-439e-4246-80fa-0a72d1ab71f8)

Snackbar containers use a solid background color with a shadow to stand out against content

![A snackbar with button text the same color as supporting text.](https://lh3.googleusercontent.com/4ZjkkltqgNzA13m457i7C95ZkoGaUoXwgffmVQBnSzhDn_qqntogMKz1zoZ3atzRsf9Iu83GJ9KxWN36I8FPXrBHeStry3i6Y-QPP1AAcSL5RQ=w40)

close Don’t

The text label shouldn’t share the same color as the text button

![A snackbar with the action in elevated style.](https://lh3.googleusercontent.com/b3InMdZt65Rjhh2v0XIVdSSStbaGd_Hzb2lnxzGsqpOgwaGnTk-i5f4uZrNBwjViXGXis6FZhuu7ZbP73NMc0fLH6jPdDIgemxqSwr4ImN-P=w40)

close Don’t

Don’t use a filled or elevated button in a snackbar, as it draws too much attention

![An extended snackbar on tablet with a long text label. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoyabsh-13.png?alt=media&token=1ecad806-a4f9-4fcc-bcec-f3909c59e4d6)

check Do

In wide layouts, extend the container width to accommodate longer text labels

![Snackbar with a slightly transparent container and a clearly visible text label.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoyc9yp-14.png?alt=media&token=30ca81d2-71b7-4ac3-9adb-3be7c41313d4)

exclamation Caution

An app can apply slight transparency to the container background, as long as text remains clearly legible

![](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoydoed-15.png?alt=media&token=5695ca2c-49c2-4a86-b11e-b415266f6ad5)

close Don’t

Avoid significantly altering the shape of a snackbar container

### Action

Snackbars can display a single text button that lets users take action on a process performed by the app. Snackbars shouldn’t be the only way to access a core use case, to make an app usable.

![A snackbar container with rounded corners.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoyf085-16.png?alt=media&token=dc457470-6654-493b-b1fa-633c991d9a61)

To distinguish the action from the text label, text buttons should display colored text

![Snackbar with a long text button displayed on a third line.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flxktjsxn-19.png?alt=media&token=89f6106f-fd53-4132-815f-8b6ed99b52be)

check Do

If an action is long, it can be displayed on a third line

![Snackbar with a single text button labeled undo.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoz8scg-20.png?alt=media&token=6539a4cf-fb1c-47d4-9e71-59a2b10dca6b)

check Do

To allow users to amend choices, display an "Undo" action

![Snackbar with a single text button labeled dismiss.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoza8yz-21.png?alt=media&token=131c7a24-1324-4fef-880e-3d62d1156345)

exclamation Caution

A dismiss action is unnecessary, as snackbar disappears on their own by default

## Placement

### At the bottom of a UI

Snackbars should be placed at the bottom of a UI, in front of the main content. In some cases, snackbars can be nudged upwards to avoid overlapping with other UI elements near the bottom, such as FABs Floating action buttons (FABs) help people take primary actions. [More on FABs](/m3/pages/fab/overview) or docked toolbars Docked toolbars (formerly bottom app bars) are placed at the bottom of the page. .

Avoid placing a snackbar in front of frequently used touch targets or navigation.

![Snackbar appearing in front of photo content. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6aa5hcy-22.png?alt=media&token=28ca12e4-37a3-42ef-910a-77f7e93539d8)

check Do

Place a snackbar in front of the main content

![Snackbar placed in front of the navigation components.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6aa6688-23.png?alt=media&token=f80dfa9d-e09c-4d14-a503-34133ee3754b)

close Don’t

Avoid placing snackbars in front of navigation components

To ensure accessibility for keyboard users on the web, avoid positioning the snackbar in a way that completely obscures actionable elements. Blocking elements makes it difficult to know what is being focused and selected.

![Thin snackbar in front of a focused element that is still visible.](https://lh3.googleusercontent.com/vg5GlpuWuNMO4YWdc0KGUyWNHahzYhB8tTa-uXWzkLg62Et6WGYvmeoY4A8iT5fW17tRL3aeUfWxEpl6Wyaz6hqqqfFp3ZuYeuhjmDhRvgSx=w40)

check Do

Adjust the size of the snackbar to avoid blocking elements in focus

![Larger snackbar that is obscuring a focused element.](https://lh3.googleusercontent.com/kpbBuDWBK_Ys0lIMzxCNuXCENtyVH4hR1fZew7Plf3CLFO6w5xF-w_3BdgmDkR2FUBahDMfcS1Hj9KqjAmhyog4PmEHnUy9tF9BBS92Y13Q=w40)

close Don’t

Don’t let the snackbar fully cover elements in focus

Snackbars can span the entire width of the screen only when a UI does not use persistent navigation components like app bars or navigation bars Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview) .

Snackbars that span the entire width of a UI can push up FABs Floating action buttons (FABs) help people take primary actions. [More on FABs](/m3/pages/fab/overview) when they appear.

![Snackbar spanning the width of a mobile device is placed in front of the navigation components and FAB.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6aa171j-26.png?alt=media&token=0ca0a009-f201-4574-9c7f-1b37050bc6b5)

exclamation Caution Snackbars can span the entire width of a UI. However, they should not appear in front of navigation or other important UI elements like floating action buttons.

**Snackbars and floating action buttons (FABs)**

Snackbars should appear above FABs Floating action buttons (FABs) help people take primary actions. [More on FABs](/m3/pages/fab/overview) .

![Snackbar placed above a FAB on a mobile device.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6aa25mm-27.png?alt=media&token=b110ee1b-9457-4f9a-a789-13eee60b7ef5)

Snackbar above a FAB

![Snackbar placed in front of a FAB on a mobile device.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6aa35y8-28.png?alt=media&token=7bbf8d02-d6da-4fff-b9c1-9407d260d303)

close Don’t

Don’t place a snackbar in front of a FAB

![Snackbar placed behind a FAB on a mobile device.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6aa41vd-29.png?alt=media&token=196c1cfa-db40-4a5c-88fe-3c1e175670af)

close Don’t

Don’t place a snackbar behind a FAB

## Responsive layout

### Compact breakpoint

In compact breakpoints Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact) , snackbars should expand vertically from 48dp to 64dp to accommodate one or two lines of text, while maintaining a  fixed distance from the leading, trailing, and bottom edges of the screen.

![Snackbar with its label text extending to the second line and maintaining fixed distance from the edges of a mobile device.  ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flxktk5oy-28.png?alt=media&token=62ea237a-9fb2-4b02-af6a-6a1d860be406)

### Medium & expanded breakpoints

On medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) and expanded breakpoints Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) , like tablet and desktop, snackbars should scale horizontally to accommodate longer text strings, keeping in mind that the ideal line length for text is typically between 40-60 characters.

Snackbars use a flexible distance from the trailing edge of the screen. Whenever possible, snackbars on medium and large displays should aim for a single line of text with an  optional button Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) .

![A horizontally expanded snackbar placed at the bottom of screen on a medium-size device.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwoztb40-29.png?alt=media&token=6f2bb46d-080a-4fdf-b1ef-136b1a0e52d0)

In wider layouts Layout is the visual arrangement of elements on the screen. [More on layout](/m3/pages/understanding-layout/overview) , snackbars can be left-aligned or center-aligned if they are consistently placed on the same spot at the bottom of the screen.

![A left-aligned snackbar placed at the bottom of screen on a medium-size device.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwozw4lz-30.png?alt=media&token=1e5ae92c-43f8-4c9c-ab67-b51993825dd7)

Left-aligned snackbar

![A center-aligned snackbar placed at the bottom of screen on a medium-size device.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwozx768-31.png?alt=media&token=488159aa-db6a-467d-a7ee-01503dacf742)

Center-aligned snackbar

![Snackbar displayed at the left edge of the screen, near the bottom, on a medium-sized device.
](https://lh3.googleusercontent.com/31lW1WIYT75nNWrdmMIpaPc3F1li8pdovxS-wfb4EPMkAyZOwTPcOhw2EmNvQ7IsBKjkF-BnlA8ciLYiewbuRaf_A7fM3279CbPZEZkhgEw-=w40)

close Don’t

Don’t place snackbars flush to one edge of the layout

![2 snackbars placed side-by-side at the bottom of the screen on a medium-size device.](https://lh3.googleusercontent.com/OfYvxPiin9tChm76P70MCXk-eBs2mdE5Lg-EIsARo0YiUY5UDsthxozOFefNXX0RhhW-SJ7mKpeHpofakdr6uN5i2XBdNcNYjgv_MNXvlCT4=w40)

close Don’t

Don’t place consecutive snackbars side by side or next to one another

## Behavior

### Appearing and disappearing

Snackbars appear without warning, but they don’t block users from interacting with page content.

Snackbars without actions can auto-dismiss after 4–10 seconds, depending on platform. Avoid using auto-dismissing snackbars on web unless there's also inline feedback.

Snackbars with actions should remain on the screen until the user takes an action on the snackbar, or dismisses it.

### Consecutive snackbars

Consecutive snackbars must appear one at a time. 

Snackbars without actions appear and disappear automatically, while those with actions remain on screen until dismissed. However, a snackbar with updated information can immediately replace an outdated snackbar.

close Don’t

Don’t stack snackbars on top of one another

close Don’t

Don’t animate other components along with snackbar animations, such as the floating action button
