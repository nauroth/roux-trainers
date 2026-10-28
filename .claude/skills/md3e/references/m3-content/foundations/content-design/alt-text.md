---
source: https://m3.material.io/foundations/content-design/alt-text
title: "Alt text"
captured: 2026-09-14
---

# Alt text

> Effective alt text describes the meaning and context of images for screen reader users

## How to write great alt text

### Overview

Alternative text (alt text) refers to off-screen text that is used by screen reader accessibility software. Screen readers read out visible content such as paragraph and button text, as well as hidden content, including alt text for icons and headings.

Alt text also displays when an image doesn’t load. It tells people what they need to know about an image if they can’t see it.

![4 tin mugs and appropriate alt text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj77km2-1_do.png?alt=media&token=5d8da91e-0b52-4481-9553-127a76bfc20a)

check Do

Write alt text for images to provide context to screen reader users.

**Alt text: Two large and two small tin mugs.**

![4 tin mugs with file name as alt text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj782ss-2_don't.png?alt=media&token=384d5ff1-8b27-4ee8-be7a-a5f7e3c54373)

close Don’t

Avoid leaving the automatically generated file number as alt text.

**Alt text: jpg - 0223939-330**

### When to use alt text

If you remove the image from the page and no information is lost, then the image is decorative and doesn’t need alt text or a caption.

An image can be marked decorative using a null alt attribute, such as **alt=””** in HTML, which will hide the content from screen reader users.

![A bitcoin decorative image in a crypto article.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj79l11-3.png?alt=media&token=3846da68-3efa-4372-adf9-2bd45ea752a9)

Images that don’t add information don’t need alt text.

**Alt text: “”**

### Focus on the meaning of the image

Describe the context and overall meaning, rather than focusing on the details. For example, in a shopping app, focus on the item for sale rather than the things around it.

Alt text can also help improve SEO, but its primary purpose should be to make sites usable for all.

![Watering can in a shopping app and good alt text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7a0ft-4_do.png?alt=media&token=2f96d201-e43d-4649-b123-6cd67734c085)

check Do

Focus on the important part of the image.

**Alt text: A Scandinavian-style, copper-handled, cream-colored watering can.**

![Watering can in a shopping app and overly detailed alt text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7aw71-5_don't.png?alt=media&token=afa74e9c-4798-47ac-88c5-945eb26a2b85)

close Don’t

Avoid detailed descriptions that don’t contribute to the image’s meaning.

**Alt text: On a window sill, a child’s hands pours from copper handled cream colored watering can into a phoenix plant in a grey pot.**

### Keep it short

The recommended length for alt text is 140 characters. 

If alt text is too long, it may be cut off by some screen readers, which is a poor user experience.

![Relates idea of keeping alt text to a max of 140 characters.](https://lh3.googleusercontent.com/PRj_oYkwUTuzQUdGRjKqtfZ06uYy3M8Nql2VC6b06NAc25AnP4xAhLYDB4ygwCcFfjAbO7gxgQ7o100HwAtx3tXoJQvNTiAoz51wF8BJcYA=w40)

check Do

Write brief alt text.

**Alt text: A small happy dog hanging out the passenger window of a vintage car.**

![Long alt text can be overwhelming and ineffective.](https://lh3.googleusercontent.com/SjjCRROpmvOai7hbb6xB8KkxbDqAtj4WysgXym1u1NAv0MmomIBNZuBU_Qj41hrWYZrCJIMNyedImnC0AO2JdIrwXlUODzQJkCkUZLQGuwXc=w40)

close Don’t

Don’t write more than 140 characters of alt text. 

**Alt text: An aqua colored vintage car is driven by a woman in a cowboy hat. A poodle-mix dog sits in the passenger seat with its tongue out and paws out the window.**

### Don’t start alt text with “image of”

Screen readers announce “image” when they come across an image. If your start your alt text with “image of” a screen reader will announce “image, image of.”

![Makes the point of not  using “image of” to start alt text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7cw95-8_do.png?alt=media&token=03bb0011-82a3-44b6-b0c5-2bc668b17087)

check Do

Describe the image, rather than the format.

**Alt text: A wooden box of artisan sourdough bread is carried by a baker.**

![Makes the point that poor alt text starts with “Image of.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7dpkq-9_don't.png?alt=media&token=a54e16ec-76fd-4c27-91bc-4e711f29569f)

close Don’t

Avoid writing “image of." The screen reader will announce it’s an image.

**Alt text: Image of a wooden box of artisan sourdough bread is carried by a baker.**

## Context and nearby text

### Context matters

Use adjacent text to establish the context and word choices for alt text. Adjacent text includes all of the text near an image, such as body text, captions, and headlines. 

Don’t repeat the caption in alt text. It’s against best practices because the user will hear the same text twice, which is a poor experience.

Be consistent in your word choices. For example, don’t use “antique” in a caption and “vintage” in the alt text.

![Shopping app with image of a chair in a bathroom.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7ehhx-10_do.png?alt=media&token=b33f3bf7-e11e-42c7-875d-41eb4c9579b3)

check Do

Alt text should always relate to the context.

**Alt text: Brown oak dining chair.**

![Home decorating blog post heading and caption and image of a wooden chair in bathroom.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7f0me-11_do.png?alt=media&token=e6d18837-99bd-4348-ab91-84b4f1827bc9)

check Do

Change alt text for an image depending on where it’s used.

**Alt text:  Books on a wooden chair next to a vintage bathtub.**

### Alt text is subjective

Alt text is another layer of creative expression and should support the goals and style of its context.

The same image should have different alt text in different settings. Use the information in the app or article and the caption to decide what to emphasize in the alt text.

![Shows idea of alt text supporting the caption.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7flrw-12_do.png?alt=media&token=b732f29d-5521-44ba-bd62-47775e9cb1d1)

check Do

Make alt text consistent with the caption.

**Alt text: A well composed photo of a photographer waiting for the perfect shot of sailboats.**

![Shows idea of alt text  missing key information from the image.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7i4ba-13_don't.png?alt=media&token=f31a3bd8-7131-450d-be00-2c8243537b4e)

close Don’t

Don’t ignore the caption. Information in alt text should correspond to adjacent text.

**Alt text: A black and white photo of a woman standing on a pier while looking at sailboats.**

![Shows idea of alt text focussing on the meaning of the image.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7ik28-14_do.png?alt=media&token=15e46b26-7462-44ae-addd-c4b21b7247b1)

check Do

Focus on the meaning of the image.

**Alt text: A black and white photo of woman looking at sailboats from a pier.**

![Shows idea of alt text reinforcing the caption theme.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7ixvo-15_do.png?alt=media&token=df2721d7-d6e1-484d-aaa0-bcf05584dbf3)

check Do

Use alt text to reinforce ideas in the caption.

**Alt text: A photographer stands on a pier between 2 dock posts looking at sailboats.**

![Shows idea of overly detailed alt text.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7jdth-16_don't.png?alt=media&token=c11e5c8f-7516-4945-a131-11a10d1b93a8)

close Don’t

Don’t write alt text with details that aren’t relevant to the context of the image.

**Alt text: A black and white photo of a female photographer looking at sailboats while standing between 2 dock posts on a Venetian pier.**

### Captions should benefit all users

A caption should be useful to someone who can see the image clearly, as well as a screen reader user. 

Good captions support the image rather than duplicating its information. A well-written caption makes it easier to write alt text.

![Alt text of “flying pigeons” supports the caption “Pigeons have a distinct silhouette.” ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7jync-17_do.png?alt=media&token=53a50c25-1c12-4fe8-9bc8-ed040a6fed9b)

check Do

Capture the meaning of the image in a few words.

**Alt text: Flying pigeons.**

![The caption and alt text are both “Pigeons have a distinct silhouette.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7kb1h-18_don't.png?alt=media&token=614e6041-104c-42bb-b7fe-882bbebf7c06)

close Don’t

Don’t repeat the caption as the alt text.

**Alt text: Pigeons have a distinct silhouette.**

## Types of imagery

### When to describe the type of image

Occasionally it benefits users to name the type of image. This can include:

-   Chart
-   Infographic
-   Map
-   Graph
-   Screenshot
-   Headshot
-   Diagram

![Map with alt text that begins with “map of.”](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7kr95-19.png?alt=media&token=365d9d72-d471-41a8-b631-da2d2b8a5648)

exclamation Caution

Be careful when using alt text that describes the type of image.

**Alt text: Map of Denver Rd. Park and surrounding area.**

### Charts and graphs

Alt text is particularly important for visualizations such as charts and graphs. 

Visualizations can either be editorial and meant to support a specific purpose or key takeaway, or more open-ended and used for general data analysis.

Consider the core purpose of the chart or graph, and what information someone would need to use it.

Link to the data that generated the chart or graph, if it’s available.  

![Summary of interest in Manchester City, which is almost double that of Liverpool. Manchester interest peaks at 100 at 6pm. Liverpool peaks at 40 at 3am and 12:30pm.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2ch16f9-20.png?alt=media&token=b9137da9-a144-41d4-8740-28cfcc2896cc)

Summarize the main purpose of the data. Here, the chart involves interest in Manchester City and Liverpool.

When possible, explain the key takeaways and meaning in context, rather than detailing every data point.

A general formula for chart alt text would be: “Summary of \[data type\] + \[reason for showing the chart\].”

![Alt text that summarizes the meaning of the chart.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2ch1hb7-21_do.png?alt=media&token=bd84e22f-123c-44f2-b3b7-a8c80d8af77b)

check Do

Capture the meaning of the chart, along with key data points

**Alt text: Summary of interest in Manchester City, which is almost double that of Liverpool. Manchester interest peaks at 100 at 6pm. Liverpool peaks at 40 at 3am and 12:30pm.**

![Alt text for a chart that details too many data points. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm2ch1sqk-22_don't.png?alt=media&token=8d0111d7-e575-4e3c-b962-610f9abba5a4)

close Don’t

Avoid copying data points

**Alt text: Interest in Manchester City: 12am=40, 12pm=56, 6pm=100, 9pm=45. Liverpool interest 12am=20, 12:30pm=40, 6pm=30, 9pm=20.**

**Charts for editorial use
**
Charts with an editorial focus are used to support a key takeaway. This takeaway and the main data points confirming it should be the focus of the alt text. To create the alt text, leverage existing content from the body text, labels, and any text in the graph.

For example, a chart from a weekly digest showing highlights of physical activity may have a written summary of the total change in step count. This can be used in the alt text.

![A fitness digest with a takeaway and metric highlighted in sample alt text.](https://lh3.googleusercontent.com/CC4kwz_5M0YHQVuek5qWAwu8l0xVMYkwAqURJ-Lf78aRn7LjioRLOu7K6PhAYR6UuQuW8_JxSX2NpnApgA7ViM4Ae41mfOhFCARh7KqsEYY=w40)

check Do

In charts with an editorial focus, highlight the main takeaway and metrics

**Alt text: Your step count was 55% higher this week vs last week with 4,106 additional steps on average.**

**Charts for analysis**

Charts for analysis are meant to be reviewed as a whole, and offer pieces of data to be analyzed. They can be dense, appear alongside related charts, and have many takeaways. 

For charts that have one or two key takeaways, include these insights in the alt text. 

To avoid introducing unintentional bias in charts with many possible takeaways, highlight opportunities for exploration, such as a link to the data’s source. Emphasize key data points or mention that there isn’t a single takeaway.

![Chart for analysis with alt text that describes general structure and provides link to data.](https://lh3.googleusercontent.com/gjndFHZVwRy0iP69fsNWwDGJZs56rrB1cX8u7qeldrLHU8GmM3hjs5Z6OYKOZbqyUfu_fITvXHrCwL8N4c9biSzTB6kJea0iN7lUyz5QAFk2=w40)

check Do

In charts used for analysis, mention the general structure, and highlight opportunities for more investigation

**Alt text: Comparison of annual high, avg, and low temperatures. Visit the link provided to explore the data in detail.**

![Chart for analysis with alt text that inaccurately summarizes it.](https://lh3.googleusercontent.com/y9frD2pxvtXLDo-_Xa4szOPAE86O8YYHrYEVoELpOt2FdrxvGvXf6L-j5l1CjsXmQataWeNqU38GskS2Vv9rQQZabfaZti8hyQ6gUpgHJRnnKA=w40)

close Don’t

Don’t summarize a chart used for analysis

**Alt text: High, average, and low temperatures varied widely over the course of the year.**

**Use interactive charts**

To improve the screen reader experience,  consider using interactive charts instead of static images, especially for complex visualizations that are used for analysis. For interactive charts, a tooltip can show additional detail for specific data points.

See [Top Tips for Data Accessibility](https://m3.material.io/blog/data-visualization-accessibility) for more ways to make these visualizations accessible.

![Chart for analysis with alt text that describes general structure and provides link to data.](https://lh3.googleusercontent.com/a56fvmo9FI_dcrUww32YzJbtxXg8mf4oe2I87LeaK6f1v4vcFy9DIJTXVdCpl3VGAaqDuk_JTRLLj1q2rNMkeXpCYy9nX9tLOMo9G7_8TjTF=w40)

Use interactive charts for complicated visualizations

### Video and motion alt text

As with still images, if the animated information isn’t elsewhere on the screen, then it is informative and needs alt text.

Long-form video content uses video description to narrate the visual elements of a video, so it doesn’t need alt text.

Summarize the action in a video or animation

Alt text on informative GIFs or motion assets should highlight the important points. Think of a heading or title you might give it, and that’s likely your alt text.

![alt=""](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7mf38-24_do.png?alt=media&token=643620a0-982c-4ddd-a14d-d3b40399f758)

check Do

Write alt text that summarizes the motion asset.

**Alt text: A tooltip labeled “star” appears when a cursor hovers over a star icon.**

![alt=""](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flwj7mptb-25_don't.png?alt=media&token=7bb7ce8d-e563-45b8-89d0-b47d4581e467)

close Don’t

Don’t write about every aspect of the motion.

**Alt text: A hand-shaped cursor lands on a star-shaped icon and then a tooltip labeled “star” appears below the star.**
