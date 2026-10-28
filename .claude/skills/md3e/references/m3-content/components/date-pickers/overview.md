---
source: https://m3.material.io/components/date-pickers/overview
title: "Date pickers"
captured: 2026-09-14
---

# Date pickers

> Date pickers let people select a date, or a range of dates

-   Date pickers can display past, present, or future dates

-   Three variants: docked Docked date pickers open from an onscreen input similar to a text field. They're often used within forms. [More on docked date pickers](/m3/pages/date-pickers/guidelines#8d78696c-a756-4a4d-b7dd-846d866ba985) , modal Modal date pickers extend full-screen. They're often used for selecting a date range. [More on modal date pickers](/m3/pages/date-pickers/guidelines#ced55f72-28b5-4f5d-a347-fa38214ef2d4) , modal input Modal date inputs allow the manual entry of dates using the numbers on a keyboard. They're often used in compact layouts. [More on modal date inputs](/m3/pages/date-pickers/guidelines#d91ce7bc-dbc7-43e3-a802-152f2f9c892a)

-   Clearly indicate important dates, such as current and selected days

-   Follow common patterns, like a calendar view

![3 variants of date pickers side-by-side. The docked date picker has an outlined text field above a calendar view. The modal date picker allows people to select a date from a calendar view. The modal date input lets someone type in a date.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmd5mxu7o-01.png?alt=media&token=14c0b956-fdb9-439e-a756-23f4628ecc57)

1.  Docked date picker
2.  Modal date picker
3.  Modal date input

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design |
| [Design Kit (Figma)](https://www.figma.com/community/file/1035203688168086460) | Available |
| Implementation |
| [Flutter](https://api.flutter.dev/flutter/material/DatePickerDialog-class.html) | Available |
| [Jetpack Compose](https://developer.android.com/develop/ui/compose/components/datepickers) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/components/DatePicker.md) | Available |
|
Web

 | Unavailable |

Close

## Differences from M2

-   Typography and spacing: Titles and labels are larger and have increased spacing to accommodate 48dp target size

-   Color: New color mappings and compatibility with dynamic color Dynamic color takes a single color from a user's wallpaper or in-app content and creates an accessible color scheme assigned to elements in the UI. [More on dynamic color](/m3/pages/dynamic/choosing-a-source)

-   Variants: The three variants of date pickers have been renamed to not be device-dependent. The former desktop date picker is now known as the docked date picker Docked date pickers open from an onscreen input similar to a text field. They're often used within forms. [More on docked date picker](https://m3.material.io/m3/pages/date-pickers/guidelines#8d78696c-a756-4a4d-b7dd-846d866ba985) . The former mobile date picker and date input are now known as modal date picker Modal date pickers extend full-screen. They're often used for selecting a date range. [More on modal date picker](/m3/pages/date-pickers/overview) and modal date input Modal date inputs allow the manual entry of dates using the numbers on a keyboard. They're often used in compact layouts. [More on modal date input](/m3/pages/date-pickers/overview) to reinforce that the user must take an action.

![Old version of a date picker with a white background and shadows.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fle4qmou9-1P-datepicker_whatsnew_1.png?alt=media&token=771d7d4e-4ed2-4492-915e-9b82218f4848)

M2: Date pickers had a drop shadow and different color mappings

![New version of date picker with a colorful background, rounded corners, and no shadows.](https://lh3.googleusercontent.com/HWA4owUgCVU0oIuTW-9x1wyLuHIA6m_aaks97Ih_BEz-wvMRKQqmb8-FsElnU5Jxck9-Hi-br9L52IDZBwYY22tVVJyY8NtOKnsOlqxB8gJdpQ=s0)

M3: Date pickers have larger typography, no shadow, and new color mappings compatible with dynamic color
