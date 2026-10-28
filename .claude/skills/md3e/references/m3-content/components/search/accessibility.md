---
source: https://m3.material.io/components/search/accessibility
title: "Search"
captured: 2026-09-14
---

# Search

> Search lets people enter a keyword or phrase to get relevant information

## Use cases

People should be able to use assistive technology to:

-   Navigate to and focus on a search bar

-   View the hinted search text or persistent label

-   Input text and complete a search

-   Interact with a list of search suggestions and results

-   Clear the input text

## Interaction & style

### Autosuggest

When search suggestions and results appear, the screen reader must announce the change. This lets people know list items are available for selection.

![Hinted search text and autocomplete results on a mobile screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlgrjdxa-01.png?alt=media&token=aa3e6409-1ddc-4c1e-abf3-fd8b8feeb81f)

Autocomplete results should be announced by the screen reader

## Initial focus

Initial focus A focused state communicates when a user has highlighted an element, using an input method such as a keyboard or voice. [More on focused state](/m3/pages/interaction-states/applying-states#bc6d6853-48ef-490e-8076-448e89e69f0f) lands on the first interactive element. This is often a leading icon button Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview) or text field Text fields let users enter text into a UI. [More on text fields](/m3/pages/text-fields/overview) . A leading icon button usually activates search directly or opens a navigation component.

![Search bar with a focused leading icon. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlgrkpb6-02.png?alt=media&token=7d04e34b-36b3-4858-a352-2e88a041d2c1)

Initial focus can land on a leading icon

![Search bar with no leading icon. The text field is focused.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlgrl9ca-03.png?alt=media&token=28bc66bb-b098-4ef9-9065-b84a54a72406)

If there’s no leading icon, focus lands on the text field

## Keyboard navigation

| **Keys** | **Actions** |
| --- | --- |
| **Tab** or **Shift** + **Tab** | Navigate between interactive elements |
| **Space** or **Enter** | Activate the search text field for input |
| **Arrows** | Navigate between search result items |

## Labeling elements

The hinted search text should be used as the accessibility label describing the search bar.  

The role for the input field should be:

-   Android: **Text field**

-   iOS: **Search field**

![Search bar with “Label: Search messages” and “Role: Text field”.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlgrql4p-04.png?alt=media&token=4f1e2151-e990-4df2-8c46-96bdefa77b75)

The accessibility label should match the hinted search text

Leading and trailing icon buttons should be labeled according to their [accessibility guidance](/m3/pages/icon-buttons/accessibility).

![A search bar with accessibility labels for its leading icon button and trailing avatar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlgrt6xt-05.png?alt=media&token=9676908b-e093-44a0-b913-00b638bd7e7f)

Use icon labels for icon buttons

Search suggestions and results use the list component. Screen readers automatically announce the results as a list.

For accessibility labels, follow the [list accessibility guidelines](/m3/pages/lists/accessibility).

![A search bar on mobile, showing search results in a list.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlgrwf25-06.png?alt=media&token=ca00ca47-b6c1-4848-9842-9d89485e98b7)

Search suggestions and results are created using lists
