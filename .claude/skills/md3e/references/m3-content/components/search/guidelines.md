---
source: https://m3.material.io/components/search/guidelines
title: "Search"
captured: 2026-09-14
---

# Search

> Search lets people enter a keyword or phrase to get relevant information

When focused, a search bar can show a list of search suggestions. As text is entered, search results appear.

## Usage

Search helps people find information quickly.

Use search for products with many items to manage, such as files or messages.

![Mobile UI shows a search bar at the top of a message inbox.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfkhcoi-02.png?alt=media&token=0bbcd761-04b2-482f-8b01-e11cf9dd25c0)

Search helps people find information in large inboxes like messages or emails

### Different ways to search

The search entry point is dependent on a product’s needs, and should be easy to find:

-   Search bar The search bar is a persistent and prominent search field at the top of the screen. : Use to search contents in a specific view, like **Search your messages**

-   Search app bar Search app bars provide an emphasized entry-point to open search. [More on search app bars](/m3/pages/app-bars/guidelines#ed1f4c54-fc2d-4544-b1ed-ac667181dabe) : Use this app bar App bars contain page navigation and information at the top of a screen. [More on app bars](/m3/pages/app-bars/overview) variant when search is the primary, global function

-   Search icon button Icon buttons help people take minor actions with one tap. [More on icon buttons](/m3/pages/icon-buttons/overview) : Use when search is a secondary action or not the main focus

![A mobile app with a search bar below the page title.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfkodgz-03.png?alt=media&token=55ab08bb-f4bc-49d6-abc2-76bf93ba2ada)

Add a **search bar** below a title to search specific content

![A mobile app with a search app bar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfkpcee-04.png?alt=media&token=6dea133b-5732-4c6f-9dfa-29ca6e892083)

For global search, use a persistent **search app bar**, integrated into an app bar

![A mobile app with a magnifying glass icon on the leading side of the app bar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfkq5y2-05.png?alt=media&token=d94669aa-81c7-4c69-b709-ac4eb84a8302)

Use a **search** **icon button** when search is a secondary action

### Focused search

When a search entry point is selected, it opens focused A focused state communicates when a user has highlighted an element, using an input method such as a keyboard or voice. [More on focused state](/m3/pages/interaction-states/applying-states#bc6d6853-48ef-490e-8076-448e89e69f0f) search.  

-   Search suggestions can appear before text is entered

-   Search results can show as someone is typing or after a search is executed

-   Individual elements maintain their own interaction states States show the interaction status of a component or UI element. [More on states](/m3/pages/interaction-states/overview) when search is focused

[More on search states](/m3/pages/search/specs#65c58b10-4569-43d6-9c11-64a5b02f3099)

![Focused search with a list of suggestions on a mobile screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfkz1fo-06.png?alt=media&token=b2a28b95-5ca4-4c6e-a4a4-eda05d83c4e6)

When focused, a search bar expands to show search suggestions or results in a list

If search is the primary action, focused search can be a standalone destination reached from a navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview) .

![Focused search on a mobile screen with a list of suggested contacts.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfkth1m-07.png?alt=media&token=384b3aed-87d1-4265-a957-5b21037e9eba)

Focused search can be a standalone destination, reached by selecting an item in a navigation bar

### Search suggestions & results

Search suggestions and results both appear in a list Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview) component by default.

To help people find information quickly, consider adding variety and context, such as:

-   Leading icons related to suggestions

-   Category labels, like **Recent**, **Contacts**, or **Suggestions**

-   Avatars or other high-priority items

-   Filter chips to narrow down results

![Search with suggestions organized in a column, ending with a row of 5 contact avatars with names.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlflqra9-09.png?alt=media&token=b100c40a-d13b-4601-90ce-3a7e2087ac4d)

Include high-priority items like avatars in search suggestions or results

### Gaps

Use gaps to separate a list of suggestions or results into groups.

[More on using gaps in lists](/m3/pages/lists/guidelines#9e96fd72-5bf3-49df-9baf-e025dcca344d)

![A gap separates the location and calendar list items from people and pets avatars.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfm1yld-10.png?alt=media&token=9cd70993-130a-449e-8807-4c9ffe215f9a)

To separate list items into distinct groups, use a gap

## Placement

A search bar is typically placed at the top of a screen to remain prominent and accessible. Its location depends on whether search is the primary focus of a product or a secondary action.

![Mobile UI with a search bar directly below a Settings headline.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfmbc2s-21.png?alt=media&token=bdf6a965-f280-48a6-b28a-bf42f57e1d1e)

A search bar can be the primary focus of a page

![Mobile UI with a search bar centered at the top of the screen, above a row of Favorites avatars.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfmc255-22.png?alt=media&token=ad6fbc7a-15a6-42ed-8ec4-6450a6f9c87e)

Search bars should usually be placed at the top of the content

![A photos app with a search icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfmcmiv-23.png?alt=media&token=ec5cb486-7355-492f-9480-3e36fc614a51)

Search can be a secondary action

### Focused search layouts

When focused, search suggestions and results appear in a list below the search bar.  

There are two layout options:

-   **Docked** opens a list below the search bar, with a scrim covering main content

-   **Full-screen** expands to fill the screen

[More on adaptive design](/m3/pages/search/guidelines#eb45ccc4-d1b5-4ea1-bee5-ea1c3d1c5436)

![Tablet UI shows a list of search results docked below the search bar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfmf49n-08.png?alt=media&token=7b717895-53e2-47ec-9b26-e42e3a4971e8)

Docked layout on a tablet

![Mobile UI shows a list of search results filling the screen.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfmg7bg-07.png?alt=media&token=3be246ec-c24e-4d73-b43f-af6883770d08)

Full-screen layout on mobile

## Anatomy

![6 elements of search.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlgr3p93-11.png?alt=media&token=802aed8a-e993-42d2-8ef7-17aaba8ac5ad)

1.  Search bar container

2.  Leading icon

3.  Supporting text

4.  Avatar or trailing icon (optional)

5.  Input text

6.  Container for search suggestions or results

### Search bar container

In the contained style, the search bar container remains the same shape in both the unfocused and focused states. Avoid changing the container behavior.

The container’s margins should be:

-   Unfocused: 24dp

-   Focused: 12dp

In the divided (baseline) style, a divider separates the search bar and results.

![Side-by-side comparison of a search container in unfocused and focused states.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfmu14l-13.png?alt=media&token=f1e5fa3a-be6f-49fb-9314-34f76eac6971)

Search bar containers have persistent, rounded corners

#### Container color

Search bars use the **surface container high** color role Material has 26 standard color roles organized into six groups: primary, secondary, tertiary, error, surface, and outline. [More on color roles](/m3/pages/color-roles?s=m3) . This role applies when the screen background is white or a tonal **surface** color, ensuring the container has clear contrast.

![2 mobile UIs show search bars on white and tonal backgrounds.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfmvyj4-14.png?alt=media&token=ec01deec-54a8-417f-8287-634d57db53c8)

Search bars use **surface container high** to provide clear contrast

Avoid using a **surface container high** color on a **surface container** background. This can cause the search bar to blend in, making it difficult for people to find.

To ensure proper contrast, use surface container roles that are more than one step apart.

![A “surface container high” search bar on a “surface container” background.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfn371r-15.png?alt=media&token=8015480f-71dc-40f0-8a0e-a36611b9b70e)

exclamation Caution

Using a **surface container high** color on a **surface container** background reduces contrast and may affect accessibility

### Icons & icon buttons

#### Leading icons

The leading side of a search bar should include either:

-   A navigational icon button, such as a menu or arrow

-   A non-functional search icon

![A search bar on a tablet screen contains a non-functional search icon and a trailing avatar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfn8hr6-16.png?alt=media&token=00a26f0f-ed92-46ab-89ac-1c179529ef4f)

A search bar can contain a non-functional search icon

#### Trailing icons

A search bar should have one or two trailing icons or icon buttons.

Trailing actions can include:

-   Additional modes of searching like voice search

-   A separate high-level action such as current location or profile

-   An overflow menu

-   A decorative search icon

![A search bar with 2 trailing icon buttons: a microphone and an overflow menu.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfnb1td-17.png?alt=media&token=4ee36dd9-e75a-4109-82fe-0d0805a43d24)

Use a maximum of two trailing icons

![A search bar with a trailing microphone icon and avatar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfncrm8-18.png?alt=media&token=e3b1a784-65b2-4462-a2e9-908577627e04)

Combine an avatar with up to one other trailing icon button

![Focused search with a trailing x icon to clear input text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfndiyw-19-VQA.png?alt=media&token=3b6d8d61-8e80-4005-b1e2-ab6fa33d9361)

Focused search can show an optional **clear** icon to remove input text

### Text

#### Hinted search text

Provide a short description of the information people can search, like **Search replies** or **Search your messages**.

#### Input text

When a person starts typing, the hinted text is replaced with the input text.  

Hinted search text is replaced when a search query is entered

## Adaptive design

The search bar position and alignment should scale with the layout, and stay close to the searchable content.

In most cases, a search bar should:

-   Stay in its pane and scale in width accordingly

-   Internal elements anchor to the left and right as the parent container scales

[More on applying layout](/m3/pages/layout-overview/)

Keep the search bar close to the content a person can search

### Focused search

When focused, search can switch between showing suggestions or results in a:

-   **Docked layout**: Best for medium Window widths from 600dp to 839dp, such as a tablet or foldable in portrait orientation. [More on medium breakpoints](/m3/pages/breakpoints/medium) and expanded Window widths 840dp to 1199dp, such as a tablet or foldable in landscape orientation, or desktop. [More on expanded breakpoints](/m3/pages/breakpoints/expanded) windows

-   **Full-screen layout**: Default for compact breakpoints Window widths smaller than 600dp, such as a phone in portrait orientation. [More on compact breakpoints](/m3/pages/breakpoints/compact)

[More on search layouts](/m3/pages/search/specs#fc12e839-f356-4f48-9bd5-0ed210565bfe) 

![Search suggestions in docked and full screen layouts.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlfnv4wh-25.png?alt=media&token=2b99ff8b-9274-46e4-a6a9-ea64d7b4110c)

1.  A docked layout on a large screen

2.  A full-screen layout, the default for compact screens

Search suggestions or results should swap from full-screen in compact windows to docked in larger breakpoints Breakpoints are opinionated window sizes where a layout changes to match available space, device conventions, and ergonomics (previously window size classes). [More on breakpoints](/m3/pages/breakpoints) .  

Search suggestions and results should adapt to fit different window sizes

## Behavior

### Focused search

When a search bar is selected, search becomes focused and can:

-   Show historical suggestions before typing

-   Show suggestions or results as someone is typing

-   Wait to show suggestions or results until a search is queried 

The **back** icon releases focus, dismisses any suggestions or results, and returns the search bar to its original state.

When focused, a list of search suggestions can appear

Focus is released when the back icon is selected

### Scroll

Depending on needs, a search bar can:

-   Scroll away with content, then reappear when a person begins scrolling up

-   Remain fixed at the top of the screen

A search bar can scroll up with content, then reappear when a person scrolls down

### Search results

To execute a search, a person can:

-   Type a query and press **Enter**

-   Select a suggestion or result without querying a search

Search results appear in a list Lists are continuous, vertical indexes of text and images. [More on lists](/m3/pages/lists/overview) below the bar, and scroll beneath the bar.   

For accessibility, focused search needs a clear status indicator that it’s searching content, like a search icon or **Results** label. [More on search accessibility](/m3/pages/search/accessibility/)

![“Peanut” is the entered search query and the first suggestion in the list.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlgrceqs-32.png?alt=media&token=e8f6528f-ec6d-49b5-937a-c8a9ee80baed)

Show search results in a compact, organized list, with an indicator like **Quick results**

When search results are queried, the input text should remain visible, but not in focus.

Search suggestions and results display in a list, and the input text remains visible

### Predictive back

On Android, [predictive back](https://github.com/material-components/material-components-android/blob/master/docs/foundations/PredictiveBack.md) allows a person to swipe left or right on search. 

-   Search detaches from the screen edge to signal the full-screen layout will minimize

-   The previous screen is revealed in a preview

[More predictive back design guidance](https://developer.android.com/guide/navigation/custom-back/predictive-back-gesture)

The search surface and content scale back in the direction of the gesture
