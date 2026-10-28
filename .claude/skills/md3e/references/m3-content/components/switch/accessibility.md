---
source: https://m3.material.io/components/switch/accessibility
title: "Switch"
captured: 2026-09-14
---

# Switch

> Switches toggle the selection of an item on and off

## Use cases

People should be able to do the following with assistive technology:

-   Navigate to a switch with a keyboard or switch input

-   Toggle the switch on and off

-   Get appropriate feedback based on input type documented under [Interaction & style](/m3/pages/switch/accessibility#c0e9fae1-48df-428b-b028-4f7be071ada3)

## Interaction & style

The switch handle increases in size to indicate interactivity for both touch and cursor control interactions.

**Touch**
When tapped or dragged A dragged state communicates when a user presses and moves an element. [More on dragged state](/m3/pages/interaction-states/applying-states#c97582c4-5fef-42ce-9c34-71f8dcc5b8ad) , the handle size grows, providing interaction feedback.

**Cursor**
When hovered (in both on and off states States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) ), the hover A hover state communicates when a user has placed a cursor above an interactive element. [More on hover state](/m3/pages/interaction-states/applying-states#71c347c2-dd75-485b-892e-04d2900bd844) area grows, providing a visual cue that the handle is interactive. When clicked, the handle size grows.

![The switch handle increases in size when tapped and dragged.](https://lh3.googleusercontent.com/W9k8FZDab4FlAZdkKblIJVtCzjSJ48pu4wxgFourwAHfPsYc5RPK8gTPW4H7hVTj-hJNoR4iqQpZwdnoE14XBpGYLSk2_zBG7hWDC5YNt3r2ew=w40)![The switch handle increases in size when tapped and dragged.](https://lh3.googleusercontent.com/W9k8FZDab4FlAZdkKblIJVtCzjSJ48pu4wxgFourwAHfPsYc5RPK8gTPW4H7hVTj-hJNoR4iqQpZwdnoE14XBpGYLSk2_zBG7hWDC5YNt3r2ew=s0)

Touch: Tap, Drag

![The cursor changes from an arrow to a hand pointer when hovering over and clicking the switch.](https://lh3.googleusercontent.com/1waGLXuMxUHtjHjDVCcLWQF2ioH5mGvSRVlVJn9IO1rTSeiTTUE6pG2zQ6VskRok4RHejMQHucCfuiTKcoczKrjuyWT_hsyrERdMS7fJmp5P=w40)![The cursor changes from an arrow to a hand pointer when hovering over and clicking the switch.](https://lh3.googleusercontent.com/1waGLXuMxUHtjHjDVCcLWQF2ioH5mGvSRVlVJn9IO1rTSeiTTUE6pG2zQ6VskRok4RHejMQHucCfuiTKcoczKrjuyWT_hsyrERdMS7fJmp5P=s0)

Cursor: Hover, Click

### Avoid applying density by default

Don't apply density to switches by default — this lowers their targets below our best practice of 48x48 CSS pixels. Instead, give people a way to choose a higher density, like selecting a denser layout or changing the theme.

To ensure that this density setting can easily be reverted when it's active, keep all targets to change it at a minimum 48x48 CSS pixels each.

## Initial focus

Initial focus lands directly on the switch’s handle, since it’s the primary interactive element of the component. 

![The focus is on the switch handle, which is toggled on.
](https://lh3.googleusercontent.com/ncRMKB_fQpAaCrlUNBYQ-UXNOAdAP-bmIlZy3hiiGoTic1gTMurPu6wqzFLKBTWIMrhDa3bhrLT4J9Ppg8OLP7BOxKLEKLWvo5egYkDEL8Gw=s0)

Focus lands on the switch handle

![Space or Enter is used to toggle the switch off.](https://lh3.googleusercontent.com/zJYFK9dmp7xQR83LnteRstjk0HCH3wuryW_dm29AYmjj3K4U6GM91uuwHh9CLjlV49GMndpgnSlYNMgXwR5_OCNySgR7eHvBJgU2MmWXjofVfw=s0)

The switch is toggled using **Space** or **Enter**

## Keyboard navigation

| Keys | Actions |
| --- | --- |
| **Tab** | Focus lands on the switch handle |
| **Space** or **Enter** | Toggles the handle on and off |

## Labeling elements

The accessibility Accessible design makes products usable for people with all kinds of abilities. [More on accessibility](/m3/pages/overview) label for a switch uses the adjacent label text if implemented correctly. 

Assistive tech such as a screen reader will read the UI text followed by the component’s role.

![“Dark theme” is the switch’s adjacent label text and the accessibility label.](https://lh3.googleusercontent.com/uQCgvmrYgUn5jsyprqaHwVc9uV4Jgg0cJR11xFDTeF-WdA4w1h72Cm-S3xtz6IwTdRUEpj7rt3vloFZFENV8Q1FVUjffGOptoHDsJYVpQKcqUg=w40)

A switch’s accessibility label can incorporate its adjacent UI text

When the visible UI text is ambiguous, accessibility labels need to be more descriptive. For example, a switch visibly labelled **Photo album** would benefit from additional information to clarify the switch’s function.

Consider making the adjacent label text more descriptive when possible. This reduces the need for different accessibility text.

![The accessibility label for the switch is “Photo album access” though the label text is “photo album.”](https://lh3.googleusercontent.com/RL42kRexZDwly3y3IIMPDdcDUEkd7C4jOQuq9me0IQa3vkWH9zl08KjI5yLcp6KCZIM7S8f56Oa4q3FHDC6TgTCJUVngGOWBalNaMtkAJekq=w40)

While the visible label text reads **Photo album**, the accessibility label for this switch clarifies its function: **Photo album access**
