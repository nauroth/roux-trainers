---
source: https://m3.material.io/components/text-fields/guidelines
title: "Text fields"
captured: 2026-09-14
---

# Text fields

> Text fields let users enter text into a UI

![A side by side view of a filled and a outlined text field.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flyqb5o7k-1%20\(1\).png?alt=media&token=3e8505af-c89e-46f1-a165-4150245058a6)

Filled and outlined text fields

## Usage

Use a text field when someone needs to enter text into a UI, such as filling in contact or payment information.

![Mobile UI of contact form with several text fields. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31ssyn-1.png?alt=media&token=17fe50a8-ccc7-491b-b8b2-a8c3bd1487f3)

Contact form using outlined text fields

There are two variants of text fields:

1.  Filled text fields

2.  Outlined text fields

Both variants of text fields use a container to provide a visual cue for interaction and provide the same functionality.

![Side by side view of a populated and unpopulated filled text field. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31t4yp-2.png?alt=media&token=4a6e26a3-72f3-46d2-8372-47fc1cf66d7e)

Filled text field

![Side by side view of a populated and unpopulated outlined text field. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31tc9a-3.png?alt=media&token=db27205f-c078-450b-b330-00c1afd09444)

Outlined text field

### Outlined text fields

Outlined text fields have less visual emphasis than filled text fields Filled text fields have more visual emphasis than outlined text fields. They're often used in dialogs and short forms where their style draws more attention. . When they appear in places like forms (where many text fields are placed together), their reduced emphasis helps simplify the  layout Layout is the visual arrangement of elements on the screen. [More on layout](/m3/pages/understanding-layout/overview) .

![App screen with 1 focused and 1 unfocused outlined text field.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31u7r0-4.png?alt=media&token=bb9357e8-b1d0-4ff8-890f-b21939e78de0)

Login screen with outlined text fields

## Choosing text fields

### Choosing text fields

Both variants of text field provide the same functionality. The variant of text field used can depend on style alone.

Choose the variant that:

-   Works best with an app’s visual style

-   Best accommodates the UI's goals

-   Is most distinct from other components (like buttons Buttons let people take action and make choices with one tap. [More on buttons](/m3/pages/common-buttons/overview) ) and surrounding content

![Mobile UI of a contact form with several filled text fields. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31v0nn-5.png?alt=media&token=205be2fa-2142-46e3-81fd-c69273b0601d)

Mobile form using filled text fields

![Mobile UI of a contact form with several outlined text fields. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31vds5-6.png?alt=media&token=cfac905f-bbb9-4917-86cb-75d405a82628)

The same mobile form using outlined text fields

### Using both text field variants on the same screen

If both variants of text field are used in a UI, they should be used consistently within different sections, and not intermixed within the same region. 

For example, use outlined text fields Outlined text fields have less visual emphasis than filled text fields. They're often used in long forms where their reduced emphasis helps simplify the layout. in one section and filled text fields Filled text fields have more visual emphasis than outlined text fields. They're often used in dialogs and short forms where their style draws more attention. in another.

![Mobile UI of a contact form with several filled text fields, and an open dialog on top using an outlined text field. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31vnye-7_do.png?alt=media&token=776ccb86-55c6-4c1c-abd2-fe2e99551f3e)

check Do

When using both variants of text fields in a UI, separate them by region

![Mobile UI of a contact form with a mix of outlined and filled text fields.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31vw2z-8_dont.png?alt=media&token=af4205b9-661c-4cb3-957c-a1fbda8d56ce)

close Don’t

When using both variants of text fields, don't use both next to each other or within the same form

## Anatomy

### Filled text field

![Diagram of filled text field indicating the 10 parts of its anatomy.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2j3kn4a-9.png?alt=media&token=182bc4ba-6100-4b86-9c88-ab946296064e)

1.  Container

2.  Leading icon (optional)

3.  Label text in empty field

4.  Label text in populated field

5.  Trailing icon (optional)

6.  Focused active Indicator

7.  Caret

8.  Input text

9.  Supporting text (optional)

10.  Enabled active Indicator

### Outlined text field

![Diagram of an outlined text field indicating the 9 parts of its anatomy.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2j3kqed-10.png?alt=media&token=9dd5de19-42ba-4468-a2bc-843792fd7fc6)

1.  Enabled container outline

2.  Label text in empty field

3.  Leading icon (optional)

4.  Label text in populated field

5.  Trailing icon (optional)

6.  Focused container outline

7.  Caret

8.  Input text

9.  Supporting text (optional)

### Containers

Containers improve the discoverability of text fields by creating contrast between the text field and surrounding content.

**Fill and stroke**
A text field container has a fill and a stroke either around the entire container, or just the bottom edge. The color and thickness of a stroke can change to indicate when the text field is active. 

**Rounded corners**
The container of an outlined text field has rounded corners, while the container of a filled text field has rounded top corners and square bottom corners.

![Side by side view of the containers of a filled and outlined text field.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31y44j-11.png?alt=media&token=7d4b4480-90b1-4bd6-b9db-a25f193c515a)

Text field containers

### Label text

Label text tells people what information is requested. Every text field should have a label.

Label text should be aligned with the input text, and always visible. It can be placed in the middle of a text field, or rest near the top of the container.

Label text shouldn't be truncated or take up multiple lines. Keep it short, clear, and fully visible.

Label text should always be visible. When the field is selected, the label text moves from the middle of the text field to the top.

![Text field with very long label text, too long to display fully display inside the text field container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx31ykco-13_dont.png?alt=media&token=dc2a9d73-7d0f-42f0-aafa-072fcca98564)

close Don’t Don’t truncate label text. Keep it short, clear, and fully visible.

![Text field with very long label text split into 2 lines. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx320mke-14_dont.png?alt=media&token=13140173-2eba-4d08-bb46-a9fa6cba1a59)

close Don’t

Label text shouldn’t take up multiple lines

### Adjacent label

A text field doesn't require a label if the field's purpose is indicated by a separate, adjacent label. 

Adjacent labels should be aligned to the leading edge of the text field container.

![Mobile UI of a contact form with label texts placed outside and on top of the text fields. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32132w-15.png?alt=media&token=7ec20bd3-7097-4d2e-85f5-eba578d7ce0f)

Text fields with adjacent labels

### Required text indicator

To show a field is required, display an asterisk (\*) next to the label text, and explain that asterisks indicate required fields in one of two ways:

-   Supporting text

-   A single note at the beginning of the form

Additional best practices include:

-   Indicate all required fields

-   If required text has a particular color, use the same color for the asterisk

![Mobile UI of a contact form showing supporting text below the text field, indicating an input is required. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx322ilp-16.png?alt=media&token=43feb129-a6b6-4277-b1a8-044d68325b3d)

Asterisk with required supporting text

### Input text

Input text is text a person has entered into a text field.

Text fields can display input text in the following ways:

-   **Single line** text fields display only one line of text
-   **Multi-line** text fields grow to accommodate multiple lines of text
-   **Text areas** are fixed-height fields

![Text field with populated input text. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx322ww5-17.png?alt=media&token=fa62d7da-ffa4-49f8-bb0f-fa7273b6c4d2)

Input text in a filled text field

In **single-line** fields, as the cursor reaches the right field edge, text longer than the input line automatically scrolls left. Single-line fields are not suitable for collecting long responses; use a multi-line text field or text area instead.

In **multi-line** fields, overflow text causes the text field to expand, shifting screen elements downward and text wraps onto a new line. These fields initially appear as single-line fields, which is useful for compact layouts that need to accommodate large amounts of text.

**Text areas** are taller than text fields and wrap overflow text onto a new line. They are a fixed height and scroll vertically when the cursor reaches the bottom of the field. The large initial size indicates that longer responses are possible and encouraged. These should be used instead of multi-line fields on the web. Ensure the height of a text area fits within mobile screen sizes.

### Prefix text

Text fields can contain prefix text such as currency symbol.

![Text field with a currency prefix before the input text. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx323bkz-21.png?alt=media&token=105d405f-12d6-4edd-831c-aeb168ae8d20)

A text field with a currency symbol text prefix

### Suffix text

Text fields can contain suffix text such as unit of measurement or email domain.

![Text field with a suffix after the input text indicating a maximum input of 100. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx323jpq-22.png?alt=media&token=0b58c2b9-439d-42b1-9ca3-f61852239672)

A text field with a grading scale as suffix

![Text field with a suffix after the input text indicating an email address. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx3246iw-23.png?alt=media&token=1848c8cc-bb19-465d-bf22-2caea1371a3f)

A text field with an email domain suffix

### Supporting text & character counter

Supporting text conveys additional information about the input field, such as how it will be used. It should ideally be one line, though may wrap to multiple lines if required. It can be either persistently visible or visible only on focus.

If there is a character or word limit, include a character or word counter. They display the ratio of characters used and the total character limit.

![A side by side view of a text field with supporting text aligned with the trailing side, and a character counter aligned with the trailing side. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx324ofo-24.png?alt=media&token=309a0667-ded2-42a9-bd93-3b83d086f88f)

1.  Supporting text
2.  Character counter

### Error text

For text fields that validate their content such as passwords, replace supporting text with error text. Swapping supporting text with error text prevents new lines of text from bumping content and changing the layout.

-   If only one error is possible, error text should describe how to avoid the error
-   If multiple errors are possible, error text should describe how to avoid the most likely error

check Do

Swap supporting text with error text

close Don’t

Don't add error text in addition to supporting text, as their appearance will shift content

![Mobile UI of a sign up form with an invalid text field entry. The error message wraps to 2 lines. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx325xha-27_caution.png?alt=media&token=56146424-2703-4db8-b848-8e986a620685)

exclamation Caution

Long errors can wrap to multiple lines if there isn't enough space to clearly describe the error. In this case, ensure padding between text fields is sufficient to prevent multi-lined errors from bumping layout content.

### Error icon

It’s strongly recommended to show an error icon when the text field is in the error state. 

This highlights the error for people with visual impairments, and provides an additional sensory indicator.

![2 text fields with error messages. The active text field has a thicker border. Both text fields have a trailing error icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm5vj8xje-28.png?alt=media&token=37a70518-0bc9-48c5-add8-ddef99bb85b8)

The error icon is an important second visual indicator that a text field has an error

### Icons & images

Icons in text fields are optional. Text field icons can: 

-   Describe valid input Inputs are devices that provide interactive control of an app. Common inputs are a mouse, keyboard, and touchpad. methods such as a microphone icon
-   Provide affordances to access additional functionality such as clearing the content of a field
-   Express an error

Leading and trailing icons change their position based on LTR or RTL contexts.

Images that are 24dp in height can be placed inside of text fields. This image height allows for optimal top and bottom padding within the field and is consistent with icon size recommendations.

1.  **Icon signifier** Icon signifiers can describe the type of input a text field requires, and be touch targets for nested components. For example, a calendar icon may be tapped to reveal a date picker Date pickers let people select a date, or a range of dates. [More on date pickers](/m3/pages/date-pickers/overview) .
2.  **Valid or error icon
    **Iconography can indicate both valid and invalid inputs, making error states clear for colorblind users. 
3.  **Clear icon
    **Clear icons let a person clear an entire input field. They appear only when input text is present.
4.  **Voice input icon
    **A microphone icon signifies that people can input characters using voice. 
5.  **Dropdown icon
    **A dropdown arrow indicates that a text field has a nested selection Selection lets users choose specific items to act on. [More on selection](/m3/pages/selection) component.
6.  **Image
    **An image can help contextualize the required input text such as a credit card number.

![Side by side view of text fields with different icons and images as trailing elements within the container. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx3270td-28.png?alt=media&token=10a8c64f-9569-41f4-b334-66537b8c7930)

1.  Icon signifier
2.  Valid or error icon 
3.  Clear icon 
4.  Voice input icon
5.  Dropdown icon
6.  Image

### Read-only fields

Read-only text fields display pre-filled text that people cannot edit. 

A read-only text field is styled the same as a regular text field and is clearly labeled as read-only.

![Read only filled text field. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32b33u-29.png?alt=media&token=6200faed-0aab-45bd-af45-5dd7dff5020b)

A filled read-only text field

![Read only outlined text field. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32b91b-30.png?alt=media&token=d37f640d-c179-4935-ae4d-9e09c84a01cf)

An outlined read-only text field

## Adaptive design

As layouts adapt to larger screens and different breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) , apply flexible container dimensions to text fields. Set minimum and maximum values for margins Margins are the spaces between the edge of a nested element and its parent element, such as the space between a button's label text and the edge of its container. [More on margins](/m3/pages/understanding-layout/spacing#38a538d7-991f-4c39-8449-195d32caf397) , padding, and container dimensions as layouts scale so that typography adjusts for better reading experiences.

![UI for creating a new album in a side by side view on mobile and tablet. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32c2h0-Full%20to%20max%20-%201P.png?alt=media&token=9b9c076b-53e3-4068-ae53-c050d0dbb37d)

For compact breakpoints, text fields can span the full width of the display. For medium and expanded breakpoints, text fields should be bound by flexible margins or other containers.

As text fields expand in fluid layouts, avoid maintaining fixed margins and typography properties. This can lead to extra long text fields. 

For example, text fields should not span the full width of a large screen.

![Tablet UI with text fields spanning the complete width of the screen. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32d5ny-responsive-layout-dont.png?alt=media&token=998e18d2-8016-4962-9652-e29fcfb4568b)

close Don’t

Don’t use fixed text field margins on large devices. Text fields shouldn’t span the full width of a large screen.

### Density

Dense text fields enable people to scan and take action on large amounts of information.

![Tablet UI with desne text field as part of event creation form. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32dfqc-31.png?alt=media&token=a5b0b69e-bddf-49e4-9cfb-c30aae5f640d)

A form with dense text fields

#### **Avoid applying density by default**

Don't apply density to text fields by default. This lowers their targets below the recommended 48x48 CSS pixels. Instead, give people a way to choose a higher density, like selecting a denser layout or changing the theme.

To ensure this density setting can be easily reverted when it's active, keep all the targets to change it at a minimum of 48x48 CSS pixels each.
