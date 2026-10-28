---
source: https://m3.material.io/components/buttons/guidelines
title: "Buttons"
captured: 2026-09-14
---

# Buttons

> Buttons prompt most actions in a UI.

![Buttons in various shapes and sizes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlqkp7g-01.png?alt=media&token=c1c12c3d-5ace-487d-b762-40d02f56a986)

Buttons and icon buttons come in many shapes, styles, and sizes

## Usage

Buttons communicate actions that people can take. They are typically placed throughout the UI, in places like:

-   Dialogs Dialogs provide important prompts in a user flow. [More on dialogs](/m3/pages/dialogs/overview)

-   Modal windows

-   Forms

-   Cards Cards display content and actions about a single subject. [More on cards](/m3/pages/cards/overview)

-   Toolbars Toolbars display frequently used actions relevant to the current page. [More on toolbars](/m3/pages/toolbars/overview)

They can also be placed within standard button groups Standard button groups add interactions between adjacent buttons when they're pressed. [More on button groups](/m3/pages/button-groups/overview) .

Use visually-prominent filled buttons for the most important actions

Buttons are just one option for representing actions in a product and shouldn’t be overused. Too many buttons on a screen can disrupt the visual hierarchy.

Consider placing additional actions in a navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rail](/m3/pages/navigation-rail/overview) , set of chips Chips help people enter information, make selections, filter content, or trigger actions. [More on chips](/m3/pages/chips/overview) , text links, or icon buttons Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview) .

![1 button placed on bottom right of screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlqpj6e-03-do.png?alt=media&token=44ffcad0-9941-40c9-b81c-ed3a24c3da63)

check Do

Use buttons for discrete actions

![3 buttons side by side on bottom of screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlqpykn-04-don't.png?alt=media&token=b9cd6a77-a1a5-41ce-8a05-fdbe66bb0c4b)

close Don’t

Don’t clutter your UI with too many buttons. Consider presenting low-priority actions in overflow menus or as icon buttons.

![Filled button on menu screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlqs2ix-05-do.png?alt=media&token=fc0a63d6-3e53-4391-8565-a1203f8b80e4)

check Do

A button container’s width is dynamically set to fit its label text

![Filled button as wide as layout grid.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlqslcx-06-do.png?alt=media&token=b8da8214-88dd-4716-aa64-0a81913707a9)

check Do

Button container width can be responsive, which allows it to stretch horizontally

![Filled button with label text overflowing the container. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlqt8jf-07-don't.png?alt=media&token=bb358432-4153-45ea-a6cf-8f1842a59bfd)

close Don’t

A button container’s width shouldn’t be narrower than its label text

![Diagram of button styles and toggle behaviors.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlquaj1-08.png?alt=media&token=abfb2cc4-cd8a-470e-b5c1-8ab8aeaf151c)

A: Default button; B: Toggle (unselected); C: Toggle (selected) for five button styles, in order of emphasis:

1.  Elevated button

2.  Filled button

3.  Filled tonal button

4.  Outlined button
5.  Text button

A button group Button groups organize buttons and add interactions between them [More on button groups](/m3/pages/button-groups/overview) is a collection of buttons that relate to each other and can respond to one another. Both buttons and icon buttons can be used inside a button group.

In some cases, there are primary and secondary actions within a button group. Buttons with primary actions should have a higher visual emphasis through size, color, or shape.

[More on button groups](/m3/pages/button-groups/overview)

![Audio app with play, next, and back buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm3t81e1q-9.png?alt=media&token=e2b715eb-67a4-43b8-91c6-9636566aa8e5)

Different sized buttons in a button group help emphasize the main action from secondary actions

## Toggle buttons

Toggle buttons should be used for binary selections, such as **Save** or **Favorite**. When toggle buttons are pressed, they can change color, shape, and labels.

Toggle buttons should use an outlined icon when unselected, and a filled version of the icon when selected. If a filled version doesn’t exist, increase the weight instead.

By default, toggle buttons change from round to square when selected.

Use toggle buttons for binary actions

If the label changes on selected or unselected states, be mindful of the character count. Changing the label significantly is disruptive to the user and the page layout.

![Toggleable “start” and “reset” buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlt4ivd-11-do.png?alt=media&token=c9fb6a62-d890-4a3d-bf5b-7422a2f61559)

check Do

When using toggleable buttons, keep the label character count a similar length for both states

![Toggleable “start” and “reset back to beginning” buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlt52gk-12-dont.png?alt=media&token=610e1d0c-2aae-457f-a35b-3c5f35ff529d)

close Don’t

The label length shouldn’t change dramatically to be longer or shorter

## Anatomy

![3 parts of a button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlt6b63-13.png?alt=media&token=3e1cc932-b5a8-4073-895c-c9a82e440389)

1.  Label text
2.  Container
3.  Icon (optional)

### Label text

Label text is the most important element of a button. It describes the action that will occur if someone taps a button. It should be very brief, ideally 1–3 words.

Use sentence case, which only capitalizes the first word and proper nouns. This allows the text to distinguish proper nouns, for example: **Book with Flights**, not **BOOK WITH FLIGHTS**.

Don’t truncate or wrap label text. It should always be fully visible on a single line.

![Button with label text “See all recipes.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlt7k3u-14-do.png?alt=media&token=a0f24e42-b668-44a2-86ab-54f23b4d02fe)

check Do

Use sentence case for button label text, capitalizing the first word and proper nouns

![Button with wrapped label.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlt7yj0-15-dont.png?alt=media&token=2a87a5e3-0fd2-428f-ab40-30a582e7ebf2)

close Don’t

Don’t wrap text. For maximum legibility, label text should remain on a single line.

Buttons with the **outlined** and **text** color style depend on the colors to be recognizable from other text and elements. Use caution when putting these buttons next to visually similar elements, such as chips or large text.

![Chips next to an outlined button, highlighting their similarities.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlt97u1-16-%20caution.png?alt=media&token=34a62dc9-f6cb-4587-ae11-3e94ea292368)

exclamation Caution

The outlined button style is very similar to chips. Consider using a filled or tonal button instead.

### Container

Button containers hold the label text and optional icon. Buttons with the **text** color style have a visible container only when hovered, focused, or pressed.

Buttons with a round shape have containers with fully rounded corners.

![Round button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltabq2-17.png?alt=media&token=3243bd37-e440-4c5b-80bf-a0b52a8add85)

Round buttons have containers with fully rounded corners

Buttons with a square shape have containers with more subtle rounding that changes based on button size.

![Square buttons with different radii.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltba1r-18.png?alt=media&token=e95cfb22-2c73-4e46-9487-6b8631825ea1)

Square buttons have square containers and change radius as the button size changes

![Button with the label text “Edit playlist” within the container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltc6hg-19-do.png?alt=media&token=e0d8dcf9-04fc-43a3-82b4-3fede8465b92)

check Do

A button’s width dynamically adjusts to the label text

![Button with text larger than its container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltdu8d-20-dont.png?alt=media&token=ded7ea31-582e-4d48-b65e-e6bc59d4f05d)

close Don’t

Avoid setting a fixed width smaller than the label text

### Icon (optional)

Icons visually communicate the button’s action and help draw attention. They should be placed on the leading side of the button, before the label text.

![Filled button with the icon to the left of the label in a left-to-right language.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltfge9-21-do.png?alt=media&token=f4135876-e1ff-40d8-9a91-cfef0b8f259d)

check Do

Place the icon to the left of the label in buttons with text in left-to-right languages

![Filled button with the icon to the right of the label in a right-to-left language.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltfyz4-22-do.png?alt=media&token=3f665701-89ef-4521-84f0-966e7110def9)

check Do

Place the icon to the right of the label in buttons with text in right-to-left languages

![Button with shopping cart icon and text label “Add to cart”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlthjj7-23-do.png?alt=media&token=e21c8cc7-91da-4601-8492-d37969d1e9dc)

check Do

Use icons that clearly communicate their meaning

![Button with Plus icon vertically above the text label “Add to watch list”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltnhb2-24-dont.png?alt=media&token=e4b099f1-c4aa-4a8f-b756-433ecbb9f56c)

close Don’t

Don’t vertically align an icon and text in the center of a button

![Button with two icons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltof7i-25-dont.png?alt=media&token=f77a7931-b8cf-4c2e-a3ac-a4900fb98687)

close Don’t

Don’t use two icons in the same button

## Color styles

### Elevated style

The **elevated** button style is the same as the tonal button, but with a shadow. 

To avoid overusing shadows, use the elevated style only when absolutely necessary, such as when the button requires visual separation from a visually prominent background.

![Elevated button on a scrim background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltpyn5-26.png?alt=media&token=6c2d5489-702e-4bab-98cf-97d25125097f)

Elevated buttons provide separation from a visually prominent background

Buttons at higher elevations typically have more emphasis in a design, and should be used sparingly. For high emphasis, consider the filled style instead.

![Elevated button in a shopping experience.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmltrnw9-27-caution.png?alt=media&token=d0366943-f432-47ed-874d-3c83d7e123dd)

exclamation Caution

Higher elevation increases the emphasis of a button

### Filled style

The **filled** button style has the most visual impact after the FAB Floating action buttons (FABs) help people take primary actions. [More on FABs](/m3/pages/fab/overview) , and should be used for important, final actions that complete a flow, like **Save**, **Join now**, or **Confirm**.

![Filled button reading “Make payment.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlz52ml-28.png?alt=media&token=fef70047-9440-457d-ae89-c447238d1115)

Filled buttons have high visual impact when used for important actions

Since they have such strong emphasis, the filled style should be used sparingly, ideally for only one action on a page.

In some cases, filled buttons can use tertiary colors.

![Filled “pause” button in a music app.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmlz6rew-29.png?alt=media&token=faaff6d9-2924-4206-9247-d6ab7d4a3688)

Filled buttons can be responsive to the layout grid and help emphasize main actions

### Tonal style

The **tonal** button style is useful in contexts where a lower-priority button requires slightly more emphasis than an outline would give, such as **Next** in an onboarding flow. Tonal buttons use the secondary color mapping.

![Shopping app with 2 tonal-style filled buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0gmxc-30.png?alt=media&token=c5d6ee0a-a428-4078-b549-67fc7b9dc9fe)

The tonal style has less emphasis than filled or emphasis

### Outlined style

The **outlined** style is ideal for medium-emphasis buttons which contain actions that are important, but aren’t the primary action in a product.

Outlined buttons pair well with filled buttons to indicate alternative, secondary actions.

![Outlined buttons for less important actions, including a back button and a button that reads “Next movie.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0loal-31.png?alt=media&token=56c7832d-e72a-48c8-a9fa-249143bdf7c8)

Outlined buttons contain less important supporting actions

Outlined buttons display a stroke around the button container, and have no fill by default. 

They should be placed on simple backgrounds, not visually prominent backgrounds such as images or videos. 

![Outlined button for “add to cart” in shopping app.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0mtua-32.png?alt=media&token=d970ea42-6342-4a5d-a870-c2d815a4bd99)

Outlined buttons display a stroke around the button container

![Outlined button labeled Add to calendar on a pink/purple background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0nymp-33-do.png?alt=media&token=273452ac-d5a6-4e34-8985-feb9bd959734)

check Do

Outlined buttons can be used on backgrounds with a color gradient

![2 photos, each with an outlined button with a custom fill.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0oqjx-34-caution.png?alt=media&token=4fd49a85-1e2b-48e9-8362-2ae1c54f6069)

exclamation Caution Use caution when placing outlined buttons on top of images. Customizing the button to have a contrasting container fill can help ensure legibility of label text. Or, use a filled button instead.

### Text style

The text button style should be used for the lowest priority actions, especially when presenting multiple options.

They should be placed on simple backgrounds, not visually prominent backgrounds such as images or videos. The container isn’t visible until someone interacts with the button.

Don’t underline the text button. Use hyperlinked body text instead to emphasize links. [More on hyperlinks](/m3/pages/typography/applying-type#24856f70-f759-45df-a06c-92018f286083)

![Example calendar screen with 2 text buttons and 1 split button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0q822-35.png?alt=media&token=5003669f-ec2e-46dc-980b-729d0e7b997d)

Use text buttons for the lowest priority actions

Text buttons are often placed within components such as cards Cards display content and actions about a single subject. [More on cards](/m3/pages/cards/overview) , dialogs Dialogs provide important prompts in a user flow. [More on dialogs](/m3/pages/dialogs/overview) , and snackbars Snackbars show short updates about app processes at the bottom of the screen. [More on snackbars](/m3/pages/snackbar/overview) . Since text buttons don’t have a visible container in their default state States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) , they don’t distract from nearby content.

However, since there’s no container, the label text color must always be recognizable from non-button text and elements.

![Text button labeled “Retry” in a snackbar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0rpw4-36.png?alt=media&token=f1a2fb6d-e0e3-4027-a3a6-502a53062cef)

Text button in a snackbar

![Text button labeled “View album” on an album cover background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0s6c1-37.png?alt=media&token=b9f5d341-907c-4a1b-bf78-8d096b88b14e)

Text button against an image background

In cards, text buttons help maintain an emphasis on card content.

![Text button labeled “Learn more” in an information card about sourdough bread.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0tlmd-38.png?alt=media&token=02609475-05bc-4471-8440-9693bc1376d4)

Text button in a card

Dialogs use text buttons because the absence of a container helps unify the action with the dialog text.

Align text buttons to the trailing edge of dialogs, on the right for left-to-right languages and on the left for right-to-left languages.

![Modal dialog with the title “Subscribe to our newsletter?” and trailing buttons “Cancel” and “Subscribe”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0v0go-39.png?alt=media&token=de02d8e1-5945-4cb1-b49c-7657c6f0f62e)

Text buttons in a dialog

## Adaptive design

### Resizing

When scaling layouts for large screen devices, buttons can adapt their visual presentation, size, alignment, and arrangement to fit different contexts and user needs.

Choose the best button position based on screen size.

![Flights app in compact screen with buttons below flight information.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0vwgx-41.png?alt=media&token=637aef82-3430-42ff-97ea-88893d58bddc)

Filled buttons are end-aligned below flight information in a compact window

![Flights app in large screen with buttons to the left of flight information.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0wuqe-40.png?alt=media&token=17208180-460d-4c83-bc37-f329ccfbf635)

Filled buttons are start-aligned beside flight information in a large window

The icon and label text in a button stay centered and grouped as the button's width changes.

![2 buttons with horizontally centered text labels.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0y1g6-42-do.png?alt=media&token=9a22488d-9452-4b1b-9ac8-a4339586395f)

check Do

Keep the icon and label text grouped and centered

![1 button with centered text label, 1 button with icon and label aligned to opposite edges.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0yith-43-dont.png?alt=media&token=fb0cac8b-107b-468d-b78a-6e45e9cbc210)

close Don’t

Don't ungroup the icon and label text or let them anchor to opposite sides of the button

Buttons can be customized to change size and scaling behavior across different breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) . 

To avoid creating very long buttons in large windows, constrain button width or place buttons beside other elements.

![Button width is over-stretched with screen width.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm0zsof-44-dont.png?alt=media&token=ec507156-01a8-4748-ac54-faaa752d80c8)

close Don’t

Don’t allow the button to stretch in a way that creates long, flat buttons with very little content inside

### Presentation

The size and placement of buttons can change as parent containers, such as cards, adapt for larger screens. 

Keep items, including buttons, in the same order between large and small screens to provide a consistent experience for screen readers and keyboard navigation.

![2 buttons scaling to accommodate different device sizes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmmm11hfb-45.png?alt=media&token=579a6e7a-1f3d-4601-8ee9-643aa062203c)

Buttons can move in the layout, but elements should remain in the same order
