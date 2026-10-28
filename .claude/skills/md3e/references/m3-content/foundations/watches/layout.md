---
source: https://m3.material.io/foundations/watches/layout
title: "Design for watches"
captured: 2026-09-14
---

# Design for watches

> Watches have special design considerations and interaction patterns

## Resources

| Type | Resource |
| --- | --- |
| Design | [Wear OS common design layouts](https://developer.android.com/design/ui/wear/guides/foundations/common-layouts) |
| [Adaptive layout for Wear OS](https://developer.android.com/design/ui/wear/guides/foundations/adaptive-design) |
| [Figma Design Kit for Wear OS Apps](https://www.figma.com/community/file/1506418396052412186) |
| [Figma Design Kit for Wear OS Tiles](https://www.figma.com/community/file/1507852095734722321/m3-wear-os-tiles-design-kit?fuid=1348995927136540612) |
| Implementation | [Android Developers: Wear OS](https://developer.android.com/training/wearables) |

## Layout principles

![A social networking scrolling screen showing Followers, sorting and search.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4d4yba-01.png?alt=media&token=68b193f1-116c-41ad-86df-c5ee74302b63)

**Prioritize content**

Place the most important information at the top of the screen.

![An audio interface showing headphones are connected with volume indicator and controls.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4d5pli-02.png?alt=media&token=cae886e8-17c7-4bbd-95a0-8924bedd566e)

**Limit choices**

Reduce the number of actions to prevent decision fatigue. Focus on critical tasks to help people get things done within seconds.

![A dialog confirming device access to call log and contacts.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4d6ew9-03.png?alt=media&token=3c3d4626-2b9a-4324-9556-5a102e7d6c94)

**Simplify navigation**

Use a clear, shallow hierarchy so people don't get lost in complex menus. Aim to display content and navigation inline.

## Standard layouts

For scrolling and non-scrolling apps:

-   The time is shown on most app screens

-   Edge-hugging buttons are used for round screens

-   Show an indicator if more content is available on a scrolling apps

Wear OS offers [Figma Design Kits](https://developer.android.com/design/ui/wear/guides/get-started/design-kits) for standard layouts, with components, styles, and variables.

![A watch screen showing a social media app and a watch screen showing a timer with element indicators.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4d7u52-04.png?alt=media&token=bae8674d-794c-43de-b2b7-19dd7e1dfda2)

1.  Time text

2.  Page title

3.  Scroll indicator

4.  Action button

### Non-scrolling layouts

Non-scrolling layouts are for focused tasks or single-screen interactions where all content fits within the display, such as: 

-   Media players

-   Pickers and switchers

-   Fitness tracking screens

-   Confirmation dialogs 

[More on non-scrolling layouts for Wear OS](https://developer.android.com/design/ui/wear/guides/surfaces/apps/layouts/scrolling)

![A non-scrollable timer with current time 9:30, timer set for 00:25:52, and a start button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4d8mdi-05.png?alt=media&token=aa0d61fb-6677-4c4c-af3a-6c7cd873ac3f)

Use non-scrolling layouts for focused tasks like a timer

### Scrolling layouts

Scrolling layouts can show content that exceeds the screen height, such as lists or dialogs. These might include:

-   Message threads

-   Contact lists

-   Menu options

[More on scrolling layouts for Wear OS](https://developer.android.com/design/ui/wear/guides/surfaces/apps/layouts/scrolling)

![A scrollable layout with current time, search button, 1st follower and avatar on screen, and two followers off screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4d98d6-06.png?alt=media&token=f8ae3aad-0899-4c67-adb2-c91dae87fd56)

Lists use scrolling layouts to show additional options

### Tiles

Tiles (or widgets) are designed for glanceability. Use them to show timely updates or to help people perform frequent tasks quickly, such as checking progress towards a goal or viewing the weather.

Tiles are accessible with a swipe from the watch face. They have a fixed screen height and don't scroll.

[More on tiles for Wear OS](https://developer.android.com/design/ui/wear/guides/foundations/common-layouts/tiles)

![Icon buttons for meditation, running, cycling, and a More button](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4dbada-07.png?alt=media&token=0654f832-abb0-4cdf-af88-d6c520acba66)

Use tiles for quick access to to a few key options

### Notifications

Notifications can be expanded to offer more interactions, such as replying to a message, opening a location on a map, or playing a song.

Wear OS provides notification templates for instant messaging and calendar events.

[More on notifications for Wear OS](https://developer.android.com/training/wearables/notifications)

![A message notification shown in a drawer with dimmed notifications above and below.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4dbzlj-08.png?alt=media&token=c79e9e9a-fb2e-4a49-a811-157b0f4403bd)

Notifications should offer easy access to more interactions

### Adaptive layout

Adaptive design allows apps to adapt to different screen sizes and device contexts. On Wear OS, this means apps scale and reorganize to maximize the available space on both small and large round displays. [The Material 3 Compose component library](https://developer.android.com/jetpack/androidx/releases/compose-material3?_gl=1*1ntglil*_ga*NzMzMjg1Nzc1LjE3NDg5MTM2NjI.*_ga_QPQ2NRV856*czE3NjQ3MDkwMjUkbzc2JGcxJHQxNzY0NzEwNjAyJGo0MCRsMCRoMA..) has built-in adaptive behavior.

-   Design for small screens first: Start by designing for the smallest common screen size

-   Use percentages: Define margins and padding using percentages rather than fixed pixel values. This prevents clipping and ensures content remains centered and proportional as the screen size increases.

-   Add value on larger screens: Use the extra space on screens larger to show more content, such as additional buttons, text lines, or data visualizations

-   Test all font sizes: Font scaling and accessibility settings such as bold text may cause changes in the size of UI elements

[More on adaptive layout for Wear OS](https://developer.android.com/design/ui/wear/guides/foundations/adaptive-design)

![5, 10, and 15 minute alarm buttons plus an edge-hugging more button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4dcvb2-09.png?alt=media&token=bbded910-14b8-4f43-aec2-cd846b328f2c)

Design for small screens first, starting with a 192dp size watch

![5, 10, 15, 20 &amp; 30 minute alarm buttons plus an edge-hugging more button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4dg8dm-10.png?alt=media&token=0eccef8b-54ec-4458-b12b-8d24dd060bbc)

Show more content on devices that are larger than 225dp
