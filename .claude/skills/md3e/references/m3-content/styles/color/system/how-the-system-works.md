---
source: https://m3.material.io/styles/color/system/how-the-system-works
title: "Color system"
captured: 2026-09-14
---

# Color system

> Create accessible, personal color schemes communicating your product's hierarchy, state, and brand

## It's like paint-by-number

Imagine your product screen as a paint-by-number canvas:

-   Each element on the screen has a number
-   Each number is assigned a color

![UI in "x-ray" view where each element has a number instead of a color](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4mxjs2l-1.png?alt=media&token=a123a83d-6785-40ed-9dae-13d566e3399d)

Each part of a UI is assigned a "number," and each "number" is assigned a color

You can hand-pick a color for every "number" to create a static color scheme.

![Green icon button in the UI, assigned a hand-picked color using a color picker](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4mxjwiz-2.png?alt=media&token=b53af031-c021-4fb8-ba5e-1c6c2b4c9c10)

Static colors are hand-picked, like this green icon button

But now, you can also use Material's dynamic color system to automatically generate an entire palette of accessible colors for each "number" from a single source.

This source can be a user's wallpaper, or in-app content like imagery. If the source changes, the product colors update to match.

![Image showcasing how a source color is automatically applied to each "number"](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4mxk5mu-3.png?alt=media&token=b2543282-21d2-472f-87ed-ef63ec926c4f)

Colors are generated dynamically from a user's wallpaper or in-app content

You can customize how dynamic color appears in your product by:

-   Setting the color source
-   Adding static or harmonized colors
-   Changing which "numbers" are assigned to which elements

[Learn about advanced customizations](/m3/pages/advanced/define-new-colors)

![Image showing a color wheel where a light red color is picked, which then populates the UI. In this example, some UI elements have been mapped to different "numbers"](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm4mxkasm-4.png?alt=media&token=b0cb1a67-16ef-44dd-b951-d63f75ce011b)

The color source can be changed, automatically changing the color scheme. The UI elements can have other "numbers" assigned to them.

## Essential terms

### Color role 

Like the "numbers" on a paint-by-number canvas, color roles are assigned to specific UI elements. They have semantic names like **primary**, **on primary**, and **primary container,** and matching color tokens. [See all color roles](/m3/pages/color-roles)

### Dynamic color

Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. If the user's wallpaper or the in-app content changes, the colors in the UI will change to match.

### Static color

UI colors that don't change based on the user's wallpaper or in-app content. Static colors can be hand-picked or generated in design tools like the Material Theme Builder Material Theme Builder (MTB) is a Figma plugin that allows markers to emulate the color extraction process for dynamic color and create custom tonal schemes. [Material Theme Builder](https://www.figma.com/community/plugin/1034969338659738588/material-theme-builder) . Once assigned to their respective color roles and UX elements, the colors remain constant.

#### **Baseline static color**

The default static color scheme for Material products. [See the baseline color scheme](/m3/pages/static/)

![Diagram illustrating the steps from source color to key colors to tonal palettes to color roles to the UI](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9uzzb5-from-source-color-to-UI.png?alt=media&token=962f5bc2-868a-404e-a314-37b1467ecba8)

The dynamic color process is automatic. A single source color is used to generate five key colors, which are used to make tonal palettes. Tones from the palettes are then assigned to color roles, which are in turn assigned to elements of the UI.

The system generates dynamic color schemes using colors from images like wallpapers and in-app content

## How dynamic color generates color schemes

### 1\. It starts with a source color

There are three ways to get a source color.

#### **A. Generate it from a wallpaper**

User-generated color is sourced from a user's personal wallpaper. The wallpaper is digitally analyzed through a process called quantization, and a single color is selected as the source color.

![Red source color is extracted from a wallpaper](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9v1jfc-wallpaper-source-color.png?alt=media&token=6fe82ae6-f02c-488e-b0e1-e1b94ee1ca78)

Source color from a user's wallpaper

#### **B. Generate it from in-app content**

Content-based color is sources from in-app content, like an album thumbnail image, logo, or video preview. 

Like user-generated color, the image is digitally analyzed through quantization, and a single color selected as the source color.

![Blue source color is extracted from an podcast cover](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9v2356-in-app-content.png?alt=media&token=07c31cfd-52e9-493a-a4d6-b92fbeaf80ea)

Source color from in-app-content

#### **C. Pick it by hand**

A hand-picked source color is deliberately selected by a designer.

**Did you know?** The baseline static color scheme Baseline is the default static color scheme for Material products. It includes colors for both light and dark themes. [More on baseline color](/m3/pages/static/) uses a hand-picked source color.

![Green source color selected from a color picker](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9v32x5-hand-picked-color.png?alt=media&token=66bd9129-5bbd-447c-bb2d-98ce379b9bf1)

Source color hand-picked by a designer 

### 2\. Feed the source color into an algorithm

Dynamic color is powered by the [Material Color Utilities](https://github.com/material-foundation/material-color-utilities) (MCU), a set of color libraries containing algorithms and utilities that develop color themes and schemes in your app.

There are many color algorithms, but the most common ones are:

-   **User-generated color algorithm
    **Uses personal wallpaper to identify source color. Maps colors of specific tones (lighter or darker) into the scheme according to a combination of system design choices and user preferences.

-   **Content-based color algorithm**
    Uses image for source color. Tones are adjusted to match the appearance of the source image, while maintaining accessible contrast. 

-   **Custom colors** 
    Colors closely match the chosen input colors, such as those representing brand or semantic meaning.

![Color palette made by the user-generated algorithm](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9v56si-content-vs-user-left-user.png?alt=media&token=e6855edb-f3f7-4c8b-96c5-53a54ae48ca6)

1\. When run through the **user-generated color** algorithm, the source color is turned into a full color scheme

![Color palette made by the content-based algorithm](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9v5j63-content-vs-user-right-content.png?alt=media&token=7fd0ac00-3154-4d51-a4cf-75758d48022b)

2\. When run through **content-based color** algorithm, the same source color creates a slightly different color scheme. Some tones are adjusted to better match the appearance of the source image.

![Color palette made by the custom color algorithm](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flnc8pq3o-content-vs-user-right-content.png?alt=media&token=c5300a4d-cbf4-4670-8e80-0dab375f0e6a)

3\. Custom colors, such as brand colors, can individually run through the algorithm to create a custom scheme that matches the brand

### 3\. The algorithm generates key colors

Material's color algorithms manipulate the source color's hue Hue is the perception of a color as red, orange, yellow, green, blue, violet, and so on. [More on hue, chrome, and tone](/m3/pages/color/how-the-system-works#395813c8-b314-48d1-bb55-266f421eb3a4) and chroma Chroma is how colorful or neutral (grey, black or white) a color appears. [More on hue, chrome, and tone](/m3/pages/color/how-the-system-works#395813c8-b314-48d1-bb55-266f421eb3a4) to generate **five complimentary key colors**.

1.  Primary
2.  Secondary
3.  Tertiary
4.  Neutral
5.  Neutral variant

![Diagram of a source color generating five key colors: primary, secondary, tertiary, neutral and neutral variant](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Fln9w1sps-from-source-color-to-key-colors.png?alt=media&token=44238439-ec0c-4d45-b7a2-6f2aea5f3dee)

A source color generates five key colors

### 4\. The algorithm creates tonal palettes

The system then manipulates tone Tone is how light or dark a color appears. Tone is sometimes also referred to as luminance. [More on hue, chroma, and tone](/m3/pages/color/how-the-system-works#dc7848f3-b094-4f9a-9e50-bfa5a5029617) and chroma Chroma is how colorful or neutral (grey, black or white) a color appears. [More on hue, chroma, and tone](/m3/pages/color/how-the-system-works#e4d1c787-e92f-4d6e-a757-cd6d5c3b298e) values to create a **tonal palette** for each key color. Colors in these palettes are given a number from 0 to 100 in increments of 10, as well as 95, 98, and 99. Some palettes include more values.

![Primary, secondary, tertiary, neutral and neutral variant tonal palettes, consisting of 13 tonal steps](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm612xcmj-13.png?alt=media&token=8cdf6484-55c8-45f7-b989-b2becd9ef8f8)

The smaller the tonal value, the darker the color

### 5\. The algorithm assigns tones to color roles

The algorithm uses accessible color relationships For example, a dark surface color is algorithmically paired with a light text label color so the UI automatically meets contrast requirements. [More on color relationships](/m3/pages/color/how-the-system-works#e1e92a3b-8702-46b6-8132-58321aa600bd) to **assign specific tones to the 26**  **color roles Color roles are assigned to UI elements based on emphasis, container type, and relationship with other elements. This ensures proper contrast and usage in any color scheme. [More on color roles](/m3/pages/color-roles)** in both light and dark theme.

For example, the algorithm assigns the color tone primary40 to the **p****rimary** role and the tone primary100 to the **o****n primary** role.

[See all color roles](/m3/pages/color-roles)

![Diagram mapping color tones to roles](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm612xkza-14.png?alt=media&token=65142248-ae42-4818-9ade-d30b5cf2c110)

Tones from the tonal palette are assigned to different roles

![Diagram of tonal palettes mapped to all color roles across light and dark themes](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm612xrj4-15.png?alt=media&token=141b2627-4abd-4db8-9342-37432e4b162b)

Colors from the five tonal palettes are assigned to color roles. For example, primary roles are picked from the primary tonal palette, while surface roles are picked from the neutral tonal palette.

Dark theme A dark theme is a low-light version of a UI that displays mostly dark surfaces. colors are also automatically assigned so that apps receive both light and dark themes through a single set of color roles.

![Diagram of dark theme colors](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flnem28e4-color-roles-dark-theme.png?alt=media&token=cfc39eb0-67a9-4414-9bb6-b0e43087babf)

The same color roles are used in light and dark themes

### 6\. The new colors are applied to the UI

The 26 standard color roles are already assigned to elements of the UI. When a new source color is picked, the UI dynamically changes color.

![Diagram of all the color roles with an example of how it would look applied to a UI](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Flna5nn2o-color-roles-UI-elements.png?alt=media&token=09e3359f-ca02-4ee0-b762-d2e14e1bfe33)

Color roles assigned to the UI

## Color roles support three levels of contrast

In addition to light and dark theme, color roles also support three levels of contrast. This helps people select the contrast setting that best suits their vision needs:

-   Standard (default)
-   Medium
-   High

The standard contrast emphasizes visual hierarchy using high and low contrast elements. People with vision disabilities may choose medium or high contrast options for better support.

![Email app in standard contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwa95yk-18.png?alt=media&token=076d2645-3429-4db7-9b7a-6c11217f9238)

**Standard contrast**

The baseline color scheme already uses mixed levels of contrast to reduce cognitive load

![Email app in medium contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwa99t2-19.png?alt=media&token=080c22f3-57b8-4e76-a5f5-1f93abd34689)

**Medium contrast**

Provides a minimum contrast ratio of 3:1 for those who need more contrast, but may experience visual discomfort with higher contrasts from effects like halation.

![Email app in high contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwa9f4u-20.png?alt=media&token=f202b60e-a2de-4d2e-956d-bff1f1da61d4)

**High contrast**

Further emphasizes essential elements with a 7:1 contrast ratio to reduce visual distractions and enable users to focus. For example, high contrast is applied to the content in a card but not the card container.

The contrast settings are automatically applied to both light and dark themes. 

![The same mail app at three contrast levels, all in light theme.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwa9ldv-21.png?alt=media&token=1842c116-7ee0-438b-8816-44c371130dfb)

Light theme

![The same mail app at three contrast levels, all in dark theme.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwa9q8s-22.png?alt=media&token=c39860c1-74fc-44e0-a5c0-73b744d85b05)

Dark theme

Custom components can support contrast levels by using Material's appropriate color roles Color roles are assigned to UI elements based on emphasis, container type, and relationship with other elements. This ensures proper contrast and usage in any color scheme. [More on color roles](/m3/pages/color-roles) . For example, use **primary container** and **on primary container**.

Use design tokens Design tokens are the building blocks of all UI elements. The same tokens are used in designs, tools, and code. [More on design tokens](/m3/pages/design-tokens/overview) to apply color roles to custom components.

![Custom volume slider component using Primary Container and On Primary Container roles, whose colors change automatically at standard contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Flna5s0mi-user-controlled-contrast_12.png?alt=media&token=7a4b2a09-68dc-44e6-bcc2-84ae230ac73f)

A custom volume slider can use **p****rimary container** and **on primary container** color roles to support contrast levels

![Custom volume slider component using Primary Container and On Primary Container roles, whose colors change automatically at standard contrast.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Flna5shuk-user-controlled-contrast_13.png?alt=media&token=98766331-252a-48d2-a820-53dc11630029)

At medium and other contrast levels, those color roles apply the necessary new color values

## Pairing accessible tones

The system manipulates hue, chroma, and tone ( HCT) values HCT is a color space which defines all colors by assigning number values for three dimensions: hue, chroma, and tone. [More on hue, chroma, and tone](/m3/pages/color/how-the-system-works#395813c8-b314-48d1-bb55-266f421eb3a4) to **create a tonal palette for each color** with tones ranging from 0 to 100.

Color has physical limitations—whether it's actual physics, our own biological visual limitations, or the limitations of on-screen color rendering. For example, some hues cannot exist with certain chroma or tones. Color limitations are the reason colors such as bright light blue or bright light red are not quite possible. This is why the chroma value may increase or decrease for some tones in a tonal palette.

![13 tones derived from a key color. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm612y8rt-25.png?alt=media&token=e4d5c0e1-185c-44fa-908b-9c3002839c62)

Tonal values range from 0 (black) to 100 (white). The smaller the tonal value, the darker the color.

Material's color algorithms use these palettes to find and **pair contrasting tones,** creating accessible color combinations.

Because tone can describe the lightness or darkness of a color, it's used to define accessible color relationships. Those relationships are built into Material's color algorithms.

For example, the algorithms assign a dark tone to a button's container color and a light tone to its label color, ensuring that the colors have a 3:1 contrast.

![Colors of tones 50 and 98 used for button fill color and background fill color, which create a contrast greater than 3:1 between a button and its background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm612yd3c-26.png?alt=media&token=1ebd4f8b-1e78-4589-bc02-f411dbf29283)

Using tones 50 and 98 for a button and its label creates an accessible 3:1 contrast

For even more contrast, the algorithms assign tones even farther apart, achieving a 7:1 contrast.

This is the concept powering **user-controlled contrast** features.

![Colors of tones 30 and 98 used for button fill color and background fill color, which create a contrast greater than 7:1 between a button and its background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm6134eza-27.png?alt=media&token=17bc3773-7657-4067-9821-a118a42a0909)

Using colors of tones 30 and 98 for a button and its label create a 7:1 contrast

## Defining colors with hue, chroma, and tone (HCT)

**The system uses a color space called HCT**, which defines all colors using three dimensions: hue, chroma, and tone.

Changing HCT values lets you manipulate colors in flexible but predictable ways. Unlike other color spaces (like HSL or RGB), HCT allows the manipulation of a color's hue and chroma without affecting its tone. Watch to learn more:

Hue, chroma, and tone are the three color dimensions used to create accessible color schemes

### Hue

Hue is the perception of a color as red, orange, yellow, green, blue, violet, and so on. Hue is quantified by a number ranging from 0-360 and is a circular spectrum (values 0 and 360 are the same hue).

![The hue spectrum looks like a rainbow circle.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Flna5w3u0-hue.png?alt=media&token=61b24e9f-2268-4135-b3e3-df102b6ee769)

360 degree **hue** spectrum

### Chroma

Chroma is how colorful or neutral (grey, black or white) a color appears. Chroma is quantified by a number ranging from 0 (completely grey, black or white) to infinity (most vibrant), though Chroma values in HCT top out at roughly 120.

Because of biological and screen rendering limitations, different hues and different tones will have different maximal chroma values.

![Diagram showing chroma range from 120 (maximum intensity) to 0 (pure grey). A second diagram shows how pure black and pure white also correspond to 0 chroma](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Flna5x1is-chroma.png?alt=media&token=f7e93869-ad3a-4938-95c3-66f5d344339f)

1.  The higher the color purity, the higher the **chroma**
2.  Note how lightening and darkening a hue also affects its **chroma** value

### Tone

Tone is how light or dark a color appears. Tone is sometimes also referred to as luminance. Tone is quantified by a number ranging from 0 (pure black, no luminance) to 100 (pure white, complete luminance).

Tone is crucial for visual accessibility because it determines contrast. Colors with a greater difference in tone create higher contrast, while those with a smaller difference create lower contrast.

![Gradient showing the range of tones from 1 (black) to 100 (white)](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgm3sandbox%2Fimages%2Flna5xncz-tone.png?alt=media&token=665bed68-9373-41e6-b15d-d5d7d1e1a05f)

The 100 **tone** is always 100% white, the lightest **tone** in the range; the 0 **tone** is 100% black, the darkest **tone** in the range

### HCT isn't interchangeable with other color spaces

Values from models like hue, saturation, and lightness (HSL) won't perfectly map to Material's hue, chroma, and tone (HCT). Don’t conflate color spaces when inspecting or adjusting colors.

For example, colors with the same perceived brightness share the same tone value in HCT, but can have different HSL lightness values.

![3 color dots with the same HCT tone of 78, and varying HSL lightness values of 83, 65, and 77.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmrwafnpo-31.png?alt=media&token=6ffd59be-4877-4311-8a49-4bd11342d36d)

HCT tone values remain constant when they have the same perceived brightness, while HSL lightness values can vary
