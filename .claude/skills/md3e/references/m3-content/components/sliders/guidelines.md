---
source: https://m3.material.io/components/sliders/guidelines
title: "Sliders"
captured: 2026-09-14
---

# Sliders

> Sliders allow users to make selections from a range of values

Sliders can adjust values in real time, such as image attributes

## Usage

Sliders are used to select values along a track. They’re ideal for adjusting settings such as volume and brightness, or changing the intensity of image filters.
Sliders can use icons or labels to represent a numeric or relative scale. 

![Sound settings screen with continuous sliders labeled call volume and alarm volume.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmabg8tbj-02.png?alt=media&token=ada3febd-596c-46d4-ae20-0aa3b4228c1e)

Use sliders to pick a value from a range, like volume loudness

Changes made with sliders must take effect immediately, so people can understand the effects of their selection as they're moving the slider.

Selection changes are immediate

There are three different variants of sliders: **standard**, **centered**, and **range:**

Standard sliders select one value from a range of values. Use this when the slider should start from zero or the beginning of a sequence.

![Horizontal standard slider with an end stop indicator.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lk01w5-04.png?alt=media&token=6cd6a040-a82f-4ef7-8d4b-badc8c6eb27b)

Horizontal standard slider

![Vertical standard slider  with an end stop indicator.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lk1j0t-05.png?alt=media&token=3b884058-21ca-4d72-ba5e-5afdb59fa01e)

Vertical standard slider

Centered sliders select a value from a positive and negative value range. Use this when zero, or the default value, is in the middle of the range.

![Horizontal centered slider with a negative value and visible stop indicators at each end.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lk3lyv-06.png?alt=media&token=eeb21a3d-5711-46a4-8751-5995fadab337)

Horizontal centered slider

![Vertical centered slider with a negative value and visible stop indicators at each end.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lk4tsn-07.png?alt=media&token=55d86dc7-7b06-47fa-9d1a-7ae9dff73c91)

Vertical centered slider

Range sliders select two values on one slider to create a range. Use this when defining a minimum and maximum value.

Avoid using range sliders vertically, as this can add too much cognitive load. People are used to most sliders being horizontal.

![Horizontal range selection slider with 2 values selected, and a stop indicator at each end.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lk6981-08.png?alt=media&token=67bf8680-0cc1-4109-aee0-b50e319a3ae9)

check Do

Horizontal range slider

![Vertical range slider with 2 values selected, and a stop indicator at each end.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7ln45vm-09%20-%20don't.png?alt=media&token=bb49eedd-2d76-45c9-99ab-8e9be6103673)

close Don’t

Because of the additional cognitive load of a range slider, avoid using it in vertical orientation.

## Anatomy

![6 elements of a slider.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7m553sk-04-1.png?alt=media&token=03f97ae2-c5e8-41b8-8416-ba8201534a1b)

1.  Value indicator (optional)
2.  Stop indicators (optional)
3.  Active track
4.  Handle
5.  Inactive track
6.  Inset icon (optional)

### Track

The track shows the full range of values that can be selected on the slider. It has two sections: active and inactive.

-   The **active** section of the track is from the minimum value to the handle. For range sliders, the active track is between the two handles.
-   The **inactive** section of the track is from the handle to the maximum value, or outside the two handles of a range slider.

For left-to-right (LTR) languages, the values increase from left to right. For right-to-left (RTL) languages, this is reversed.

![Sliders for font size and display size with stop indicators along the track.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lk9dsb-11.png?alt=media&token=ac3c7b80-ec76-498e-931e-6f6b573be9c6)

The track on a slider shows the available range

### Handle

The handle can be moved along the track to choose a value.

When sliders have two handles, the handles choose the minimum and maximum values in a range.

The handle changes shape to indicate when it’s pressed.

![The handle is a vertical line on the current value of the slider. It shrinks in width when selected.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkaurk-12.png?alt=media&token=8ee46da2-b5f5-4990-a851-44f5acaadba6)

A handle changes shape when it's being pressed or dragged

![2 unselected handles on a slider with range selection.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkbdhm-13.png?alt=media&token=bc2bb7bf-9f18-4ff2-988b-34a85bdc8084)

Two handles are used for sliders with range selection

## Configurations

### Value

The value displays the specific value that corresponds with the handle’s placement. 

A value appears when interacting with the corresponding handle. For range sliders, only one value should be shown at a time.

If the value is shown elsewhere, the indicator is not required.

![A value of 50 is above a slider handle in the middle of the track.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx1s2vu5-13.png?alt=media&token=94e8f2b1-9fac-4303-ab60-acb9e7a32bd9)

A value can appear while the handle is being pressed or dragged

![A value of 75 is above the pressed range slider handle. The unselected slider doesn’t show the value.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkclo7-14.png?alt=media&token=68ab779d-bed3-4d20-a2fb-e9f742ee269c)

For range sliders, the value only appears on one handle at a time

Instead of showing the built-in value label, a separate text input field can be added outside of the slider. If this is added, the slider and value in this text field should automatically update to match each other.

Make sure people can tab to the text field directly after the slider.

Use **Tab** to navigate to values that are shown outside the slider, like a text input field

### Stop indicators

Stop indicators show which predetermined values can be chosen on the slider. The slider handle snaps to the closest stop. 

Avoid having too many stop indicators on a slider, because it can become visually crowded and difficult to adjust the value.

All sliders have stops at the end of the inactive track to ensure at least a 3:1 contrast with the background. If the inactive track has this level of contrast already, the end stops can be removed.

![Stop indicators are equally spaced out on a slider.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flx1s1ozg-10.png?alt=media&token=313ed48c-5478-4e59-9e89-4baf04fa38fd)

Stop indicators show each available value on a slider

Icons or text can be added outside the slider to indicate the range of values and make the slider more accessible. This can be used instead of a stop indicator.

![Plus and minus icons on each end of the slider.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkfou6-17.png?alt=media&token=1a441aac-51d1-452b-8a1a-ec87e9f5dafd)

Plus and minus icons, or text, can be added to the left and right of the slider

### Orientation

Sliders can be oriented either horizontally or vertically, depending on what is best for your use case.

![Horizontal slider.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkhuu1-18.png?alt=media&token=9195aa36-4723-4ce8-91c3-c74694c2824e)

Standard slider in horizontal orientation

![Vertical slider. Zero is at the bottom.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkj1b8-19.png?alt=media&token=09bb620d-8745-48b4-8b03-34cbdc78d9a2)

Standard slider in vertical orientation

### Inset icon

Standard sliders that are M, L, or XL can include an icon within the track. This icon should illustrate what the slider controls. Avoid adding inset icons to XS or S sliders.

When there’s not enough space for the icon on the active track, like at a low value, the icon moves to the inactive track.

Consider swapping which icon is displayed at zero, like a volume icon becoming a mute icon.

![Inset icon on the active track when the handle is at 50%, and on the inactive track when the handle is at 0.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkmte8-20.png?alt=media&token=fef6e46e-5b1c-42fe-bf92-904ef3d1611a)

check Do

Inset icons change placement based on the handle

![An inset icon on an XS slider. The icon bounds are cut off by the slider container.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lni1k4-21%20-%20don't.png?alt=media&token=f36c7b22-9cce-489e-a73e-42d3a6dcae59)

close Don’t

Don’t use an inset icon with sliders that have track thicknesses under 40dp

Don’t use inset icons on centered or range sliders. It makes it unclear where the start of the slider is.

![Centered slider with an inset icon on one end, and a stop indicator on the other.
](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lnlfie-22%20-%20don't.png?alt=media&token=2deb8b76-5ccd-4412-81ba-a098a903d102)

close Don’t

Don’t use an inset icon on a centered slider

![Range slider with an inset icon on one end, and a stop indicator on the other.
](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lnor7e-23%20-%20don't.png?alt=media&token=6de66860-09fe-425f-b6b9-c6aa960411cc)

close Don’t

Don’t use an inset icon on a range slider

### Size

Sliders come in different sizes: XS, S, M, L, and XL. Use larger sizes to increase the targets and provide a larger visual emphasis.

The active and inactive tracks should always be the same size.

![5 sizes of sliders.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkolpk-24.png?alt=media&token=f87a9fd7-2914-4706-bcce-9edf4814fbc1)

1.  XS: 16dp
2.  S: 24dp
3.  M: 40dp
4.  L: 56dp
5.  XL: 96dp

XL sliders should be reserved for hero moments, where the slider itself is the most important element on the page.

![An XL slider used to adjust living room temperature on mobile. No other controls are on screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7lkr4j4-25.png?alt=media&token=e382cedc-e5ef-4cd5-9fd8-eb0dd4b0e729)

XL sliders should be the focus of the page

## Behaviors

### Select & drag

Select a value by dragging the handle.

**Standard slider**: The handle drags smoothly

**Slider with stop indicators:** The handle snaps to the closest stop indicator while dragged

### Select jump

Select a value by selecting part of the track. 

**Standard** **slider**: The handle moves to the selected location

**Slider with stop indicators:** The handle moves to the closest stop indicator

### Select & arrow

Select a value using the keyboard.

**Tab:** Focus lands on handle 

**Arrows:** Selected value increases or decreases by one value or stop indicator

**Space & arrows:** Selected value increases or decreases by a larger interval or stop indicator

**Standard** **slider**: The handle moves one value

**Slider with stop indicators:** The handle moves to the next stop indicator
