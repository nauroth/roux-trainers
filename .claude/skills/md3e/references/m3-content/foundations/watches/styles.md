---
source: https://m3.material.io/foundations/watches/styles
title: "Design for watches"
captured: 2026-09-14
---

# Design for watches

> Watches have special design considerations and interaction patterns

## Resources

| Type | Resource |
| --- | --- |
| Design | [M3 Expressive on Wear OS](https://developer.android.com/design/ui/wear/guides/get-started) |
| [Typography for Wear OS](https://developer.android.com/design/ui/wear/guides/styles/typography) |
| [Color for Wear OS](https://developer.android.com/design/ui/wear/guides/styles/color) |
| [Motion for Wear OS](https://developer.android.com/design/ui/wear/guides/get-started/apply#shape-motion) |
| Implementation | [Android Developers: Wear OS](https://developer.android.com/training/wearables) |
| [Jetpack Compose for Wear OS](https://developer.android.com/training/wearables/compose?version=3) |

## Typography

GM3 Expressive adds two type styles specially designed for watches. [More on the type scale for Wear OS](https://developer.android.com/design/ui/wear/guides/styles/typography/type-scale-tokens)

### Numerals

Numeral text styles display numbers, usually only a few digits at a time. This text can take on more expressive properties at larger display sizes without the accommodations usually required by text that must be localized.

![A watch face with an indication for the numeral text style used to show the time.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bxhlf-22.png?alt=media&token=2ff2bd35-9cd1-4f00-bacf-a5f7398c7f13)

1.  Numeral Large

### Arc text

Arc text is specially designed for text following a curved path on a round screen, such as page titles, confirmation overlays, or a call to action. It optimizes character spacing for text displayed along a curve at the top or bottom of a round screen.

![A close-up of a watch face with arc text showing “check your phone” hugging the bottom bevel of a round screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4byceo-23.png?alt=media&token=a50fa393-d91d-41d6-832c-7a2f0c8b89ce)

1.  Arc Large

## Color

Material for Wear OS provides a custom [color system](https://developer.android.com/design/ui/wear/guides/styles/color/system) to create vibrant experiences and clear visual hierarchy.

### Build from black

Watches are designed with a black background, instead of the tinted background that phones use.

![2 watch screens showing sleeping app and a number picker.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bz1nw-1.png?alt=media&token=d1c14f18-c914-47fd-8d9d-32154507faef)

Watches use a black background to conserve battery

### Color roles

Since watches are used throughout the day, color tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on tokens](/m3/pages/design-tokens/overview) for Wear OS are specifically tailored for dark themes in low-light environments and light themes for daylight environments.

[More on color roles for Wear OS](https://developer.android.com/design/ui/wear/guides/styles/color/roles-tokens)

![3 examples of “Accept” and “Decline” buttons that are legible.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bzy9c-21.png?alt=media&token=aca53443-d026-4313-8e71-465fe89b3b1d)

check Do

Buttons with (2) **on primary** on (1) **primary** and (4) **on** **primary container** on (3) **primary container** stay legible as the contrast level changes

![Buttons with (2) primary dim on (1) primary or (4) primary dim on (3) primary container become illegible as contrast levels shift](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4c1f7y-22.png?alt=media&token=62f3d1b4-8389-4d0b-b6b2-7534316edd3b)

close Don’t

Buttons with (2) **primary dim** on (1) **primary** or (4) **primary dim** on (3) **primary container** become illegible as contrast levels shift

### Recommended color combinations for Wear OS

Below are some common color pairings that can help establish priority, function, and elevation.

-   Use **primary dim** to highlight important elements and **tertiary** to provide standout feedback, such as tap responses

-   When the main action isn't clear, use **tertiary** and **primary** for main actions and **secondary container** for complementary actions

-   Use **secondary** and **primary container** to show two equally important options or containers, while maintaining contrast

![Three buttons, with the center one in Primary and side ones in Primary Dim. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4c3ekq-23.png?alt=media&token=a831349d-6b4f-4625-8714-ea0a653dcf47)

1.  Primary

2.  Primary dim

![ A number pad with most keys in Primary Dim and the pressed key in Tertiary. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4c4fsb-24.png?alt=media&token=b86e622b-f8de-4115-979c-3bd3c2b9e187)

1.  Primary dim

2.  Tertiary

![Call button in tertiary color, open button in primary color and open on phone button in secondary-container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4c72hg-28.png?alt=media&token=21b40ca1-7517-4ed9-840f-d4e442b69f8a)

1.  Tertiary

2.  Primary

3.  Secondary container

![accept button in primary and delete button in primary container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4c6oau-30.png?alt=media&token=0b3a838a-4390-4f00-97f3-c8db07afd08d)

1.  Primary

2.  Tertiary

3.  Primary container

![Plus button in primary color, date button is in tertiary color and appointment summary is in primary container color.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4cam7e-27.png?alt=media&token=3ed8ef43-e3b5-479d-a71d-fde18a157042)

1.  Primary dim

2.  Tertiary dim

![Bicycle button in primary, weight button in tertiary dim.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4c7zvn-31.png?alt=media&token=705e310c-fa24-4148-9c48-984c58b82536)

1.  Primary

2.  Tertiary dim

## Motion and transitions

Expressive motion makes interactions feel more alive, fluid, and natural. Use transitions give intuitive feedback to show how an app works, such as standard patterns for changes in state or hierarchy.

[More on shape and motion for Wear OS](https://developer.android.com/design/ui/wear/guides/get-started/apply#shape-motion)

Use expressive motion to show items selected

## Haptics

Haptics are tactile effects used to grab a person’s attention for something important, or add emphasis to an interaction on the screen. You can use haptics to provide responsive feedback to scrolling and selecting items from a list, or controlling volume.

Use system-defined patterns and tokens (when available) to reinforce interaction expectations. Synchronize haptics with UI motion and sound to provide richer feedback.

-   Use stronger haptics for key interactions, such as a payment confirmation

-   Use subtler haptics for precision interactions, such as scrolling through a list

[More on haptics for Wear OS](https://developer.android.com/develop/ui/views/haptics/haptics-principles)

![2 watch faces with lines indicating haptics for a payment being accepted and scrolling through notifications.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4c8vp7-x.png?alt=media&token=be98fca9-818a-438f-a010-844b5648e1a9)

Use stronger haptics for key interactions and subtler feedback for precision interactions
