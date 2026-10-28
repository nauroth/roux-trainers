---
source: https://m3.material.io/styles/shape/overview-principles
title: "Shape"
captured: 2026-09-14
---

# Shape

> The M3 shape system includes original shapes, a corner radius scale, and built-in shape morphing

-   Use abstract shapes thoughtfully to add emphasis and decorative flair
-   Leverage Material shapes for built-in shape morphing
-   Rectangular shapes are fully rounded in all corners by default
-   Individual corners can be adjusted to create asymmetrical rectangular shapes

![Illustration of range of irregular shapes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0c35amt-1.png?alt=media&token=ab563092-217d-4d71-986d-1b4d87b5ba3e)

Abstract shapes can help people express themselves

## Availability & resources

| Type | Resource | Status |
| --- | --- | --- |
| Design | [Shape library](http://figma.com/community/file/1035203688168086460/material-3-design-kit) (Figma Design Kit) | Available |
| Implementation | [Jetpack Compose](https://developer.android.com/reference/kotlin/androidx/compose/material3/MaterialShapes) (Shape Library) | Available |
| [Android Views (MDC-Android)](https://github.com/material-components/material-components-android/blob/master/docs/theming/Shape.md) | Available |

## M3 Expressive update

**May 2025**

Added 35 **new shapes** and **shape morphing** to [Material Shape Library](https://www.figma.com/community/file/1035203688168086460) (Figma Design Kit) and [Jetpack Compose](https://developer.android.com/reference/kotlin/androidx/compose/material3/MaterialShapes).

Added new shape principles and a refreshed art direction.

Added corner radii tokens:

-   Large increased (20dp)
-   Extra large increased (32dp)
-   Extra extra large (48dp)
-   Updated fully rounded corners to use **full**. Previously, this was defined using 50% of the component size.

[More on M3 Expressive](https://m3.material.io/blog/building-with-m3-expressive)

Overview of Material shapes

## Shape library

![35 shapes in the shape set.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0c3rf47-3.png?alt=media&token=1a6cef2c-83d4-4855-9b91-8121f8a8a0ae)

M3 has 35 shapes to easily apply to designs

## Use shapes and text in harmony

Shapes are expressive elements of Material 3 that echo key visual attributes of [M3 typography](/m3/pages/typography/overview/). 

Use shape and type together for products to feel cohesive and polished.

![Fonts and mock UI screens showing a wide range of square, round, thin, and thick shapes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm7pa01q8-4.png?alt=media&token=2bd24982-183f-4d94-8da0-d14252f165c4)

M3 shapes and Google Sans Flex share roundness visual attributes

Shape morphing should respond to user interaction

## Morph shapes to connect function and feeling

Shapes should morph to improve understanding and add moments of delight. Use shape morph to better communicate:

-   Interaction states, like when a button is selected
-   Actions in progress, like a friend typing, or a page loading
-   Changes in the environment, like sound, temperature, or time of day

Think about how shapes could react to different interactions, such as tapping, swiping, scrolling, releasing, and long pressing.

## Be bold and dare to embrace tension

Tension happens when the shape story changes unexpectedly, such as when contrasting shapes are used. This can be created using both square and rounded shapes, unconventional shapes, and other contrasting elements.

Material historically focused on rounded shapes. However, using sharp shapes, thereby adding tension, creates more dynamic design, one that’s more memorable and expressive.

This tension can be used in many ways, like conveying states, drawing attention to an element, or to improve the visual aesthetic.

![Round and square shape side-by-side.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0fc4dnp-6.png?alt=media&token=41b40132-0d83-4de4-9c1b-8b49902356e2)

Create tension by using a combination of round and square shapes

Shapes and motion can communicate actions in progress

## Shape is versatile, not semantic

Avoid making shapes literal or assigning a specific function or meaning to a single shape.

For example, the loading indicator Loading indicators show the progress of a process with a short wait time. [More on loading indicators](/m3/pages/loading-indicator/overview) can be wavy, but the waveform is not a strict symbol of progression. Progress could just as easily be shown using rotating shapes or shape morph. 

Plus, waveforms could be used in other places unrelated to progress, like button containers.

## Use abstract shapes sparingly

Be intentional when using shapes in product UI. Don’t compromise clarity for the sake of visual design.

When incorporating diverse shapes, think about how they fit into the overall design and consider how they balance with the entire composition. Ensure that shapes resonate with the product's narrative. Consider the 'why' behind their inclusion and the value they contribute to the overall user experience. 

![8 shapes with icons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm0c73wle-8.png?alt=media&token=f1bf9874-6d8e-43c4-ae44-c0d4912ca58b)

exclamation Caution

Shapes without clear meaning behind why they’re different can add more visual clutter than delight

Essential shapes can use shape morph to communicate change

Use abstract shapes on imagery and decorative UI

## Emphasize aesthetic moments with shape

Get creative when using shape in graphics, for photography cropping, personalized avatar masking, and other non-interactive elements.

Decorative moments offer the most flexible and creative uses of shape.

## Shape can be 2.5D

When effectively used, shape and motion can make 2D visuals feel 3D. They provide the illusion of depth and volume, making visuals more eye-catching and natural.

Apply motion and shape differently on each layer to give it the illusion of depth
