---
source: https://m3.material.io/foundations/watches/foundations
title: "Design for watches"
captured: 2026-09-14
---

# Design for watches

> Watches have special design considerations and interaction patterns

## Resources

| Type | Resource |
| --- | --- |
| Design | [Get Started with M3 Expressive](https://m3.material.io/get-started) |
| [UI Design for Wear OS](https://developer.android.com/design/ui/wear/guides/get-started/design-for-wearables) |
| [Figma Design Kits for Wear OS](https://developer.android.com/design/ui/wear/guides/get-started/design-kits) |
| Implementation | [Android Developers: Wear OS](https://developer.android.com/training/wearables) |
| [Jetpack Compose for Wear OS](https://developer.android.com/training/wearables/compose?version=3) |

## Anatomy

### The watch face

Watch faces display the time, as well as  other information and can provide access to other functions through apps and tiles.

They can also include complications, self-contained details that can show contextual info like heart rate or progress.

Ongoing activities on the watch face show in-progress actions, like a stopwatch countdown or a workout timer.

![A watch face with hands showing analog time readout, and complications showing the date in a calendar, heart rate, water consumption, and weather.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4b8pnm-01.png?alt=media&token=34c02240-e8a2-48c1-a2f7-9f3fe78955d3)

**Complications** are details on the watch face that can be customized for style or function

![A watch face with an entry point for an ongoing exercise activity.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4b9kvw-02.png?alt=media&token=f502f8d2-51ec-475a-a1ce-d5b8e9dde49b)

**1\. Ongoing activities**, like timers, media players, or workouts, can be accessed from the watch face

### Physical buttons

Wearable devices can have a variety input surfaces, which include physical buttons and controls.

![3 watch faces with indications showing the locations of a rotating side button, system button, and multifuction button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bb056-04.png?alt=media&token=c5f5729d-7062-4ad6-bb30-6623034e4d67)

1.  Rotating side buttons: Used for volume control, or to scroll through options or lists

2.  System buttons: Dedicated to OS functions like powering on and off, and cannot be customized

3.  Multifunction buttons: Used by apps for custom actions like starting and stopping a stopwatch

## Design principles

-   Tailor layouts for different screen sizes with [adaptive design](https://developer.android.com/design/ui/wear/guides/foundations/adaptive-design)

-   Design for short interactions to conserve battery

-   Focus on one or two tasks at a time rather than a full app experience

-   Test designs in situations that involve movement to make sure the design is usable at a glance

![Calendar screen with date, time of dentist appointment, and more button.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bcxbd-05-do.png?alt=media&token=62f68437-1882-4aa9-8d93-83782f72253f)

check Do

At-a-glance views allow people to quickly see calendar events

![3 columns with times, dates, and appointment names cut off.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bdrul-06-dont.png?alt=media&token=e9bc2019-549d-46b7-bc78-782c2ef2ec81)

close Don’t

Don't create complex and detailed apps such as a calendar grid

### Always relevant

Watches are always with people. Consider how to update app content based on context, such as time, place, and activity.

![A map search for a garden’s location on a watch and on a phone.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4befpv-07.png?alt=media&token=82769747-1860-4b35-af4d-450ca0ae21f4)

Navigation on a watch complements the experience on a phone

### Works offline

Design for slow connections and offline use, such as exercising and commuting.

![2 watches: 1 with offline music downloads list. 1 with a dialog about no internet connection with dismiss and accept buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bf7c4-08.png?alt=media&token=f17e3796-9fed-4cd7-9a36-771d26f34e94)

The network state can be communicated through:

1.  An offline icon

2.  A dialog

## Interaction patterns

### Cross-device experiences

Watches are often dependent on connected phones for functionality or complex interactions. In some cases, a watch and a phone are used together to accomplish different parts of the same task.

Consider how experiences can be consistent and complement the strengths of each device.

[More on multidevice development for Android](https://developer.android.com/multi-device-development)

![A contact entry shown on a phone and a watch, with options to call or message.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bg988-09-do.png?alt=media&token=555a5877-f868-49c2-b980-5236f0d8d605)

check Do

Consider which actions are appropriate for each device

### Always on displays

Watches can have always on displays, which allow ambient content to be shown when the watch isn’t in use.

This are especially helpful for ongoing experiences like a timer or a workout that should remain in view. Because they remain on the screen for long time periods, consider limiting the number of pixels that are illuminated.

[More on always-on apps and system ambient mode in Wear OS](https://developer.android.com/training/wearables/always-on)

![A watch face showing progress through a task and the current time.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmp4bgxlg-10.png?alt=media&token=e086af86-527b-474e-b1c1-602529e31f38)

Limit the number of illuminated pixels for a display that's always on
