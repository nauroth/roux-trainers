---
source: https://m3.material.io/components/text-fields/accessibility
title: "Text fields"
captured: 2026-09-14
---

# Text fields

> Text fields let users enter text into a UI

## Use cases

User should be able to:

-   Navigate to and activate a text field with assistive technology
-   Input information into the text field
-   Receive and understand supporting text and error messages
-   Navigate to and select interactive icons

## Interaction & style

The containers for both filled Filled text fields have more visual emphasis than outlined text fields. They're often used in dialogs and short forms where their style draws more attention. and outlined text fields Outlined text fields have less visual emphasis than filled text fields. They're often used in long forms where their reduced emphasis helps simplify the layout. provide the same functionality. Changes to color and thickness of stroke help provide clear visual cues for interaction.

![2 filled text fields in enabled empty state and in focused populated state have visual cues to identify their state.](https://lh3.googleusercontent.com/ueFOTTaBZqSJw0sLrnS0-JLzMtDWg-4J7Ot0sn6SkEiXvbCZ7l3OFYNhv1NlzBfKYVD7RzDXuo_ySEsBH7IEiBF_TnqAr16URqNt5-uWfmU=s0)

Filled text fields

![2 outlined text fields in enabled empty state and in focused populated state have visual cues to identify their state.](https://lh3.googleusercontent.com/0s1xBLUmS9DAStbieTHQwGKQq42pyoUiZdSTjlczK97CYRbrKPV58n7m02pcCtSY4XlgiRyv3WRHfZuF7_cSq9SF8pX2uoUNW3zTzU-nQkFp=s0)

Outlined text fields

Containers improve the discoverability of text fields by creating contrast between the text field and surrounding content. 

In some contexts, outlined text fields can improve the perception of the fields with a 3:1 or greater contrast ratio between the container outline and the background.

![An outlined text field with label text that passes the minimum contrast of 3:1.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32k7wf-3.png?alt=media&token=679bc72b-1edd-4a37-9f0c-462d91c195a6)

check Do

Make sure the container outline has a minimum contrast of 3:1 to the background

![An outlined text field with label text fails the minimum 3:1 contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32kef6-4.png?alt=media&token=9677297e-c97b-4210-9a25-2c9268b02806)

close Don’t

Don't choose colors that won't pass Material's minimum contrast of 3:1

## Keyboard navigation

| Keys | Actions |
| --- | --- |
| Tab | Focus lands on (non-disabled) text field |

## Labeling elements

If the UI text is correctly linked, assistive tech (such as a screenreader) will read the UI text followed by the component’s role.

The accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview) label for a text field is the same as the text field label.

![The text field  and accessibility label both read “Email.” The role is “textbox.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32ks8b-5.png?alt=media&token=12c43d38-d18f-417c-b8fc-13110c145ffa)

A text field’s label should include its UI text

For text fields with interactive trailing icons, the accessibility label clarifies its function.

For example, when a password is hidden, the label for the view icon is "Show password," and when the password is visible, the label is "Hide password."

When an icon has no actionable role, like an error icon, the label is "Error."

![The trailing icon’s accessibility label “Show Password.” The role is “Button.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32l5y8-6.png?alt=media&token=b4271bd0-47bf-4af4-b9f7-fb693bf843be)

When a trailing icon in the field acts as a button, the label should clarify function, while the role explains the component type

The prefix and suffix of a text field provides symbols and abbreviations to help users enter the correct values. 
 
The accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview) label for prefix and suffix needs to have a unique id attribute, for example, the currency name for a currency symbol prefix.

![Text field accessibility labels “UI text” are “Euro” for a currency prefix and “At gmail dot com” for the email address suffix.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32leg0-7.png?alt=media&token=9d09f464-5f11-40c9-8310-af201dd18e29)

A form containing fields with both a prefix for currency, and a suffix for email address

When there is an error, "alert" is applied to the role and the error message to the text label.

If a text field displays both supporting text and error text, the label should include the supporting text first, followed by the error text.

![The text field accessibility labels is: UI text “Not a valid ZIP code.” The role is “Alert.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32lojq-8.png?alt=media&token=a55926cc-d2d2-4451-8fe2-74a515db3a16)

Text field error messages should be given an “alert” role in accessibility labels

The accessibility label for the character counter clarifies the number of characters that can be entered into the text field. 

![A character counter's accessibility label  reads: UI text (“Character count, 5/20”)](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32m4pa-9.png?alt=media&token=aac93da1-54a2-4b87-a1bc-68807f59bbd4)

The remaining character counter should be called “character count” within the label

The text displayed in the supporting text is also used for its accessibility label.

![The accessibility label uses the supporting text. It reads: UI text (“Please use the company email address”). Role \[No role\].](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32meu7-10.png?alt=media&token=4caf165e-0a75-4e05-8be8-410f681c8874)

Text field supporting text should have its own accessibility label

If a text field requires input, indicate so with an asterisk at the end of the text field label. The accessibility label must include the asterisk.

![Accessibility label reads: UI text (“Username\*”).  The role is “Textbox.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx32mlzg-11.png?alt=media&token=72a43825-5286-49d6-9f49-7bb37a11e0f4)

A required text field’s accessibility label should include any supporting text
