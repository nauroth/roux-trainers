---
source: https://m3.material.io/foundations/layout/bidirectionality-rtl
title: "Bidirectionality & RTL"
captured: 2026-09-14
---

# Bidirectionality & RTL

> Design products that adapt to languages that read right-to-left (RTL)

[Over 2 billion people](https://www.w3.org/International/questions/qa-scripts.en.html) read and write in right-to-left (RTL) languages like Arabic, Hebrew, Farsi, and Urdu. Layouts should support both left-to-right (LTR) and RTL languages through mirroring and other best practices to ensure content is easy for global audiences to understand and navigate. Consider the holistic experience including [global writing](/m3/pages/global-writing/overview), localizing voice and [design principles for culturally appropriate icons](/m3/pages/icons/designing-icons#5f0e344b-17f8-4b91-b0e4-45671b9900f4).

Material's components are built to support RTL, such as naming elements and tokens as "leading" and "trailing." However, extra configuration may be needed to achieve specific RTL situations.

## Mirroring

When a layout is changed from LTR to RTL (or vice-versa), or flipped horizontally, it’s often called mirroring. UI elements and text that typically appear on the left in LTR aligns to the right. Reading flow starts from the top right corner, instead of the top left.

Not all elements mirror with RTL languages. For example, graphs and charts maintain a LTR directionality for Persian and Urdu.

![Layout in LTR and mirrored for RTL language.](https://lh3.googleusercontent.com/7bXPlBNYMf6eu5JeDb4znscEjXxoaiFtisaLzKCORSaxEZXYMj2NCoh96x0V6Wk-gFKp6SIYCEwmRBuWgKQldV24NNlKgP7d7gzBXJjiulk=w40)![Layout in LTR and mirrored for RTL language.](https://lh3.googleusercontent.com/7bXPlBNYMf6eu5JeDb4znscEjXxoaiFtisaLzKCORSaxEZXYMj2NCoh96x0V6Wk-gFKp6SIYCEwmRBuWgKQldV24NNlKgP7d7gzBXJjiulk=s0)

A mirrored layout in an RTL language reverses the alignment and ordering of elements

## Text rendering

Correct text rendering is foundational for a great user experience, and it’s critical for readability and usability. Text rendering has two parts:

1.  Alignment: How the edges of the text box are placed alongside other elements

2.  Directionality: How text and other elements flow within a text box, like left-to-right or right-to-left

In RTL languages, text is usually right-aligned, and elements flow from right-to-left.

Common issues with RTL language rendering are text entry, cursor position, punctuation, phone numbers, and URLs.

Improperly rendering text in RTL languages can create cognitive overload and negatively impact user sentiment and trust.

![Text field incorrectly displaying the word order of an email address and cursor placement.](https://lh3.googleusercontent.com/JVlDFjXgPxdC_zdlgXhCZp49ZeyjAiDRVsACglR2IUEhVHPkJA_PlIndveJatddV_T_zwlTWN_IN5nKkI1Hs3pz6VqtL-_9Ir2tid-1vOzc=s0)

close Don’t

Don't reverse the order of the email username and domain (@google.com). The domain should always be to the right of the username. Usernames can still be written RTL, with the cursor moving to the left.

Note: This example isn’t translated to illustrate a common issue with text rendering.

![Dialog window incorrectly displaying word order decreasing readability.](https://lh3.googleusercontent.com/3-tex9271iuyBH7y1kYRePlY5qW2WEXDag00pyBIZR1qPfwVL_sOjVMK1XbF-5cuFVZxw8_Ubf7_1jF3gtB6HZKZH7Mjgj-XEU32nVYJfj9v=s0)

close Don’t

Don’t apply LTR directionality to RTL content, because it may scramble word order. To ensure readability across all languages, the content should have both RTL alignment and directionality.

Note: This example isn’t translated to illustrate a common issue with text rendering.

## Icons & symbols

In RTL languages, directional UI icons, like back and forward, should be mirrored. However, in Hebrew, timelines and media controls on a page should retain left-to-right directionality.

The meaning of icons and symbols can vary significantly across cultures. For additional guidance, refer to [design principles for icons](/m3/pages/icons/designing-icons#5f0e344b-17f8-4b91-b0e4-45671b9900f4).

![Back and forward icons in LTR and RTL.](https://lh3.googleusercontent.com/GvIIi9efFFifgSytQkM_LydZ9nagyoByO85kHfVyJHacgAAmCSEJfCUkJq69A4m4emhH0Icajp8dCaO61qfMg21QJC-VVjI8hdr1hD5OWpPu2Q=w40)![Back and forward icons in LTR and RTL.](https://lh3.googleusercontent.com/GvIIi9efFFifgSytQkM_LydZ9nagyoByO85kHfVyJHacgAAmCSEJfCUkJq69A4m4emhH0Icajp8dCaO61qfMg21QJC-VVjI8hdr1hD5OWpPu2Q=s0)

Back and foward icons are mirrored in RTL

![Send and question mark icons in LTR and RTL.](https://lh3.googleusercontent.com/lV7W9uPzT_HnFVhfZXBOhEO-XmWh6ZyboXsV3lO2ieRQJOGrdI7rhGG_ukjK0iqnZ10P5DBGLwMniRh3faP4fiUj524hRHVdFRLurxr5oC8g=w40)![Send and question mark icons in LTR and RTL.](https://lh3.googleusercontent.com/lV7W9uPzT_HnFVhfZXBOhEO-XmWh6ZyboXsV3lO2ieRQJOGrdI7rhGG_ukjK0iqnZ10P5DBGLwMniRh3faP4fiUj524hRHVdFRLurxr5oC8g=s0)

Send buttons are mirrored in RTL. Help icons are mirrored in some RTL languages, like Urdu and Persian.

## Time

Linear representations of time are often mirrored in RTL language experiences.

Linear progress indicators should move from right to left for most RTL languages, except Hebrew where it should remain LTR.

Circular representations of time remain the same.

![RTL linear progress indicator filling from right to left and circular progress indicator filling clockwise.](https://lh3.googleusercontent.com/g91ADNfx-kybwW9djnX_Bg0UgVl-GDlqK0oTZLyZx2K_TriXig4XZlZZMbo8eCE2gFNudXJg4N-WzHr--RBJoM-sBWZ-qbB9-nQuNX7X7T4=w40)

1.  RTL linear progress indicator starts to fill progress from the right 

2.  Circular progress indicators move clockwise

### Media players

Media controls for video or audio players are always LTR.

![Media player with control and progress in LTR and all other content is RTL.](https://lh3.googleusercontent.com/s6HIEi9IqqJ1FCd5-qqE4UXx8fyPymG4ac6GBJP--4aCUkk-1USxO5X5nojks0V99BBMsENc11m0-N6CzFWppLEeLF-Jk7I1QFNTN1n2QoU=w40)

In Urdu, controls and progress for media and a podcast title are shown in LTR, while all other content is RTL

### Clocks

For RTL languages, the directionality of time remains LTR, and clocks still turn clockwise. However, the AM/PM symbols for 12h clocks should be placed to the left. The 24-hour clock is often used in countries where the primary language isn’t English.

Clock icons, circular refresh icons, and progress indicators with arrows pointing clockwise shouldn’t be mirrored.

![24-hour clock in RTL.](https://lh3.googleusercontent.com/Wq16Adx940iD1dbLpZPHmNzXEXT4qYJALgLTyECNIPsEjGJvmakDWq3d2TKe4ui1OGnX41Dx7wX-w2O1uWrn_6Tw5M-Gl_KZA5WRn9cCNJcsBw=w40)

24-hour clocks in RTL move clockwise, but mirror elements such as buttons

![12-hour clock in RTL.](https://lh3.googleusercontent.com/4UhQyg-neULcpAl8ueDg_qS_DmeIbWoMGfFrQFz-z6ePNZWCpGmLlfc0yFm_zJ2EXv84t2sMOBTWmc0oGl7wnjVVV6j6f_yRrktLGC8_TOXx=w40)

12-hour clocks in RTL move clockwise, but mirror UI elements such as AM/PM and buttons

## Canonical layout examples

### List-detail

The [list-detail layout](/m3/pages/canonical-examples/list-detail):

-   Is a single-pane at compact breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) , switching between list and detail views

-   Divides the window into two side-by-side panes on large screens

-   Is mirrored in RTL

![RTL list layout on mobile.](https://lh3.googleusercontent.com/HKDWDsXNp_CJb84ZQEHNwuu-0oxpPLppPnaJ3o--ObAB4yVeU2kgQWlDryzjDuSgN9aOEaJD_NHPbwA_8bOpkC5oaK_stNeM3ZVLowOFeqGt=w40)

List-detail mirrored for RTL, where text and other elements are aligned to the right and flow from right to left

### Feed

Use a [feed layout](/m3/pages/canonical-examples/feed) to arrange content elements like cards in a configurable grid for quick, convenient viewing of a large amount of content. The feed layout is mirrored in RTL.

![RTL feed layout.](https://lh3.googleusercontent.com/JhU530pRqL1O4OoAUKD8KzfKbTWTZ0ppUOZj3oKpLcg2kuBaZUjR9mu465H24RkNMdV11EITG38Q_OJc7vS9HkYGlgh20wMmZLzRjV8imQCp=w40)

Feed layout mirrored for RTL, where the order of text, grid, and other elements align to the right and flow from right to left

### Supporting pane

Use the [supporting pane layout](/m3/pages/canonical-examples/supporting-pane) to organize content into primary and secondary display areas. The supporting pane layout is mirrored in RTL.

![RTL supporting pane in an RTL language.](https://lh3.googleusercontent.com/NhwHSdtr5w_V2xLINEl8iHRTubLt8Y07M7LPH-I6FMVLPYpJAhWHJcUqv6svxL1sxdFjcj4Uu7q5l-qFBg9bafWTETDibDawcayYJnhRkZI=w40)

Supporting pane to the left of the primary content. Text and other elements within the pane are aligned to the right and flow from right to left.

## Component examples

### Badges

Change the position and alignment of [badges](/m3/pages/badges/overview) for RTL languages.

![Small badge on the top left of a folder icon.](https://lh3.googleusercontent.com/tLzukatL9UErk2NIb17_gZki0BAQ-Zuopc4FaP9-rWXW2EMerWK-zxDClC9eQzQEq5BGsFjRkUU1aqQwb7tkHlTL3YUjEHcYpRdrWC1XBuo=w40)

Small badge appears on the top left of the icon

![Large badge on the top left of an image icon.](https://lh3.googleusercontent.com/N8FZIDMnkJ3weBDFn0JAV59SMdEjVb2CarDw0rvc-1HcelsLX67gFgp84kK3CfoVJuVrofnOUAPTcOHjh6sdO9KYSRaS-hod0IbgDwF49WZ2=w40)

Large badge appears on the top left of the icon

### Toolbars

[Toolbars](/m3/pages/toolbars/overview) provide actions related to the current page. For RTL languages, mirror the order of the tools.

![RTL floating toolbar. ](https://lh3.googleusercontent.com/uUGwZbEfNTrxp-8LV3l6MoSn0mUU_zOoFFHZQTIMgOlcTJiaW4Kh9MVk_0dgRy1CQWJDVHncwlYRPfVHUlKccJmsf_GIS1Hj2baYBV9iwX41=w40)

Mirrored floating toolbar, where the FAB appears on the left

### App bars

[App bars](/m3/pages/app-bars/overview) are placed at the top of the screen to help people navigate through a product:

-   Mirror an app bar’s layout in RTL

-   Flip appropriate icons, such as arrows

![4 app bars in RTL.](https://lh3.googleusercontent.com/mpn0hTVDPqfH-Bp9h3FZB4UuqaSuWelq_XMeIUfdhVztf7JYwTektgf-TAlKdl7LZlRm_lP7ZmbFf_4iE1MaXFqguYKi-bNXrbXtVMl_TwgZsA=w40)

1.  RTL center-aligned, small app bars 

2.  RTL medium, flexible app bar 

3.  RTL large, flexible app bar

### Navigation rail

The [navigation rail](/m3/pages/navigation-rail/overview) is placed on the leading edge of the screen, on the left side for LTR, and on the right for RTL.

![Nav rail on the right side for an RTL language, and left side for LTR.](https://lh3.googleusercontent.com/1U-nHFdJxzu17VrF15b_140InoPHof7BeklNesALpU-DvyXkM8f7bP-t0gNVhC_NykZAGJhX315jpc8sS3dhiaFlnPegKYa2OKgOQCgqlMQ=w40)

Based on the language, a navigation rail is set on a screen’s leading edge:

-   Right side for RTL languages

-   Left side for LTR languages

### Expanded navigation rail

Expanded navigation rails that open from the side are always placed on the leading edge of the screen, on the left for LTR languages, and on the right for RTL.

![RTL expanded navigation rail, including mirrored icons.](https://lh3.googleusercontent.com/OcbxhQe0dc56YbktUpDHooMEAagt7sqqVp4e58ShtGfStoesFg0yUvuOJzMLoNAXe0Pt51oapqytgAqZzere5V559HKL02hyotzh7qN2BDg=w40)

RTL expanded navigation rails open from the leading edge and should include mirrored icons

### Text fields

Icons in [text fields](/m3/pages/text-fields/guidelines#5c8a5f07-b1a5-455f-bf76-7ff0d724f6b0) are optional. Leading and trailing icons change their position based on LTR or RTL contexts.

![Text fields in RTL with leading and trailing icons.](https://lh3.googleusercontent.com/ZpQXQ588tQws77tpIHt4DazARMZVa-25ZbMGhT39qqfrD_LSARVYeC5QNZPWbE2M9K2O7OX2eDigXF-x1VtIDTs4a0fGtEZShUa6Cz3ROMwH=w40)

Icons, symbols, and label text for RTL: 

1.  Icon signifier 

2.  Valid or error icon 

3.  Clear icon 

4.  Voice input icon 

5.  Dropdown icon 

6.  Image

### Chips

The leading icon of input chips can be an icon, logo, or circular image.

The trailing icon is always aligned to the end side of the container. It’s placed on the right for LTR and on the left for RTL.

![Filter chips with checkmark icons in RTL layout.](https://lh3.googleusercontent.com/Mu7Bv9--8PIV0Ipxqn8cVeyO1Jb0SjSGgRw96abLHus4DhJ1bY56xeaT_P32YRxa12piY8d7EaAtKSvw4HjHlkwoWd2a-bXF_p5ZkBiTGWjt=w40)

Filter chips shown in an RTL layout. Note: This example is not translated to help illustrate mirroring.

## Swipe gestures

Gestures are the ways people interact with UI elements using touch or body motion.

People can navigate horizontally between peer views like tabs and to complete actions.

RTL swiping and gestures should mirror their counterparts in LTR. If a product includes a delete icon revealed when swiped from the right for LTR languages, the same should be possible on the left for RTL languages. 

![RTL list layout with swipe gesture revealing additional actions.](https://lh3.googleusercontent.com/Cj3dR33eshqEQLZi7uUpXo6GIWl5Gqyjy1jXiuN4gba27J7z7Y9BF99mwyqnDjzmYsk2vuDrF1gunUgtN4VW8kYL7bB5466Itb2kbgVNINk=w40)

Swiping reveals additional action in RTL list layout

On Android, [predictive back](https://github.com/material-components/material-components-android/blob/master/docs/foundations/PredictiveBack.md) allows people to swipe left or right on the screen to go back or dismiss modal components.

RTL predictive back features should mirror those found in a LTR context.

The predictive back gesture should adjust for RTL languages
