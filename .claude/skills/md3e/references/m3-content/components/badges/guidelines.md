---
source: https://m3.material.io/components/badges/guidelines
title: "Badges"
captured: 2026-09-14
---

# Badges

> Badges show notifications, counts, or status information on navigation items and icons

![Diagram of 4 badges in different configurations on a navigation bar's destination icons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0wmkr4-01.png?alt=media&token=2a5ee969-d4fd-499e-8716-f5c028e7dc71)

Large badges and a small badge in a navigation bar

## Usage

Badges are used to indicate a notification, item count, or other information relating to a navigation destination. They are placed on the ending edge of icons, typically within other components.

There are two variants:

1.  Small badge

2.  Large badge

![Diagram of 4 badges in different configurations on a navigation bar's destination icons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0wmphl-02.png?alt=media&token=1f32b375-fb78-43fe-a17e-8b92081ed44b)

Navigation bar with four badges

A **small badge** is a simple circle, used to indicate an unread notification.  

A **large badge** contains label text communicating item count information.

![A small badge is a circle with no characters.](https://lh3.googleusercontent.com/Xnibw8kAnTzaV0TmLVU5oOfL5xZTO6E8gxqFFo843YlClRZ3TI3eTR7cGtDL76c7_3oQ6xVKU3l7NV0PxnLeYgRw3ATNSz91ytruFjCWBNSIhw=w40)![A small badge is a circle with no characters.](https://lh3.googleusercontent.com/Xnibw8kAnTzaV0TmLVU5oOfL5xZTO6E8gxqFFo843YlClRZ3TI3eTR7cGtDL76c7_3oQ6xVKU3l7NV0PxnLeYgRw3ATNSz91ytruFjCWBNSIhw=s0)

Small badge

![A large badge holds 4 characters and expands its container's width but not height.](https://lh3.googleusercontent.com/UiES3FVbu4QTgh3y8L-WfQz6q2u2ao86ZpjIGDu6CxAIgDLxmu7zM-RC33uLQPuDaUJtgI1qqck8tM_bdeOfiZYNPg-PBiIsJD-7QV6gyc3a=w40)![A large badge holds 4 characters and expands its container's width but not height.](https://lh3.googleusercontent.com/UiES3FVbu4QTgh3y8L-WfQz6q2u2ao86ZpjIGDu6CxAIgDLxmu7zM-RC33uLQPuDaUJtgI1qqck8tM_bdeOfiZYNPg-PBiIsJD-7QV6gyc3a=s0)

Large badge

### With other components

Badges are most commonly used within other components, such as navigation bar Navigation bars let people switch between UI views on smaller devices. [More on navigation bars](/m3/pages/navigation-bar/overview) , navigation rail Navigation rails let people switch between UI views on mid-sized devices. [More on navigation rails](/m3/pages/navigation-rail/overview) , app bars App bars display navigation, actions, and text at the top of a screen. [More on app bars](/m3/pages/app-bars/overview) , and tabs Tabs organize content across different screens and views. [More on tabs](/m3/pages/tabs/overview) .

![Navigation bar with 3 icon buttons. 2 icons buttons have badges and 1 doesn't.
](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flvm8dp3k-5.png?alt=media&token=9e000d82-46f1-40c5-a9a7-e6b6046e04ae)

In navigation bars, hide the badge once the destination has been selected

## Anatomy

![Small and large badges on 2 icon buttons.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Flvm8fkil-7.png?alt=media&token=3f431e5e-5e88-41bd-bbcd-052f2e6202fd)

1.  Small badge
2.  Large badge container
3.  Large badge label

## Container

There are two container options for the badge: 

-   Small badge Small badges are a simple circle used to indicate an unread notification. with no text

-   Large badge Large badges contain label text communicating item count information. with text

![A small badge on a navigation item.
](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0womos-07.png?alt=media&token=50e7d36f-b594-4edc-84bd-980b95aa1331)

A small badge uses only shape to indicate a status change or new notification

![Number 10 displayed within large badge on a navigation item.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8jybps-08.png?alt=media&token=9ceea2e2-7e57-4f49-add4-668242cc5b09)

A large badge displays a number within a container to indicate a quantifiable status change related to a destination

Badge containers are anchored inside the icon bounding box. As the number count increases for large badges Large badges contain label text communicating item count information. , their width expands, but keeps the same placement.

Badges use a color intended to stand out against labels, icons, and navigation elements. Use the default color mapping to avoid color conflict issues.

![Small and large badges on the left side of 2 navigation items in a right-to-left language.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8k2962-9-do.png?alt=media&token=532cb06e-da53-45d2-ba95-83ffc62ea499)

check Do

Change the position of the badge for right-to-left languages

![Small and large badges at random positions on 3 icon buttons on a navigation rail.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8k2vet-10-dont.png?alt=media&token=6390c1de-9d89-42b8-b383-793abc96f691)

close Don’t

Badges have fixed positions. Don’t change the position of the badge arbitrarily or place the badge over the icon.

![Small and large badges in default red color on 3 navigation items.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0wr0gz-11_do.png?alt=media&token=e91ea890-94ed-4e0b-a484-868b5f16308a)

check Do

Use the default badge color

![Small and large badges in custom colors on 3 navigation items.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0wr4mw-12_dont.png?alt=media&token=c58658ac-aea9-4126-a88c-9e7ee6b76930)

close Don’t

Avoid using custom color roles for the badge container and label text. If custom roles are necessary, make sure they have contrast of at least 3:1.

### Label text

Label large badges Large badges contain label text communicating item count information. with counts or a status. The maximum number of characters within large badge label text is four, including a + to indicate more.

![4 icons with increasing number badges. The badges represent quantities, using a "+" symbol for quantities over 999.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8ks60f-13.png?alt=media&token=55a2ca2d-c2a3-4849-ab90-d860253ad5c2)

Large badges with one to four characters

Use the recommended maximum character count to ensure labels don’t extend beyond the badge container.

![4-digit numbers condensed to a 3-digit badge with "+" to fit the badge container's width.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0wrqi2-14_do.png?alt=media&token=37353d5f-7e7f-4ef8-b6c4-866d5015b818)

check Do

Truncate badge labels as needed

![4-digit and 5-digit number badges on navigation items exceed the badge container's width and get cut off at the edge.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0wru4w-15_dont.png?alt=media&token=79eceaeb-887c-4b7a-b950-b2ba0a84a24e)

close Don’t

Don’t let the badge get cut off or collide with another element

## Placement

![Large badge to the right of a navigation rail item.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmg0wsl1o-16_do.png?alt=media&token=85852fb2-22ac-43ad-90db-e27b958c792e)

check Do

Use a large badge to show count information when visual collisions aren’t an issue, such as in a navigation rail

![Small badge on an icon button in an app bar.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8kxkle-17_caution.png?alt=media&token=276fc105-e418-4f3f-887f-3a449899e5ee)

exclamation Caution

Use a small badge when spaces are tightly constrained, such as app bars. Small badges won’t run into the edge of the screen.

![Large badge placed at the end of a tab.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8kyp7i-18_do.png?alt=media&token=83a75fa1-4971-49ed-8297-51b97ce1ca52)

check Do

When an icon with a badge is followed by text or another element, place a large badge at the trailing edge

![Large badge overlapping the icon and text in a tab.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fme8kzbcm-19_dont.png?alt=media&token=b7e028e1-cddb-46f2-9efd-7c671e6dae6e)

close Don’t

Avoid using a large badge when it might overlap with a trailing element. Either place it at the trailing edge or use a small badge instead.
