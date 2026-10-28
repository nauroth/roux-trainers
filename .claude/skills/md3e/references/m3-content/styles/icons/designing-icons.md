---
source: https://m3.material.io/styles/icons/designing-icons
title: "Icons"
captured: 2026-09-14
---

# Icons

> Icons are small symbols to easily identify actions and categories

## Design principles

Icons are an essential element of any interface, packing an informative punch into a small form factor. They’re designed to be simple, modern, friendly, and sometimes quirky. To ensure consistency and readability, their limited size means that each icon must strictly adhere to guidance while still expressing essential characteristics. 

![Front view of boat icon.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhi79a8-1.png?alt=media&token=451212d1-7de5-44e4-98e2-7f9985913116)

check Do

Simplify icons for greater clarity and legibility

![Boat image with sails, mast, and flag.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhi8n00-2.png?alt=media&token=40bea5d0-2d09-42d0-9b6a-b182fb7fb729)

close Don’t

Don’t be overly literal. Avoid complex icons.

![Use geometric, consistent shapes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhi9wll-3.png?alt=media&token=b19af771-b281-4d84-9ced-53cace623b7b)

check Do

Make icons graphic and bold

![Detailed thumbs-up icon with contoured fingers in outline.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiaure-4.png?alt=media&token=49b74c47-52cb-4ee0-b968-2bba4ea56225)

close Don’t

Don’t use delicate or loose organic shapes

![Four icons with a consistent style.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhibyvj-5.png?alt=media&token=bf9ab6d9-d86e-4014-8c9e-e60874027699)

check Do

Use and maintain a consistent visual style throughout one icon set

![Four icons with a inconsistent styles.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhicb7v-6.png?alt=media&token=e5a225b0-6388-4ac7-9799-c75ba995749d)

close Don’t

Avoid mixing styles for one icon set

## Icon sizes and layout

### Standard (Baseline) icon size

Standard icons are displayed as 24dp x 24dp. For pixel-perfect accuracy, create icons for viewing at 100% scale. 

![Icon at 100% scale on a 24dp grid.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhid657-7.png?alt=media&token=497fdf34-12ee-4ffb-9cad-6045cc3ee1f0)

24dp grid at 100% scale

![Icon at 1000% scale on a 24dp grid.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiddsr-8.png?alt=media&token=5af129e8-c2b7-4719-8c75-1bcd4e19b568)

24dp grid at 1000% scale

### Additional optical icon sizes

Icons support additional sizes: 20dp, 40dp, and 48dp, with 20dp primarily for desktop, dense layouts, and small scale visuals, and 40dp and 48dp optimized for display or headline type, plus larger screen sizes.  

![Four document icons shown at increasing scales.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhidx2o-9.png?alt=media&token=f2d1ca4b-09ee-43e2-b621-989695fdcdd5)

Supported icon sizes: 20dp, 24dp, 40dp, and 48dp

### Standard (Baseline) icon layout

Icon content should remain inside of the **live area**, which is the region of an image that is unlikely to be hidden from view (such as an area where sidebars appear upon scrolling).

If additional visual weight is needed, content may extend into the padding between the live area and the **trim area** (the complete size of a graphic). No parts of the icon should extend outside of the trim area.

![A 24dp-by-24dp icon grid with the 20dp-by-20dp live area highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhienpf-10.png?alt=media&token=b8afbf0e-da99-4611-9ea4-0c338f77fb64)

**Live area**

Icon content is limited to the 20dp x 20dp live area, with 2dp of padding around the perimeter

![A 24dp-by-24dp icon grid with the inner 2dp padding highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhievo4-11.png?alt=media&token=3b55c1d9-74e8-458b-91fb-0e1bce8fc9db)

**Padding**

2dp of padding surrounds the live area

![A 24dp-by-24dp icon grid with the inner 2dp padding highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhifrut-12.png?alt=media&token=2defbe33-bf98-42f6-8f9c-7ede12b5bbc7)

check Do

Icon content is limited to the 20dp-x-20dp live area, with 2dp of padding around the perimeter

![Icon using live area and trim area.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhig0cg-13.png?alt=media&token=f9cd0fc1-a871-4f36-a31f-a58277000c41)

exclamation Caution

If additional visual weight is needed, content may extend into the padding between the live area and the trim area

![Icon exceeding trim area.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhig8hf-14.png?alt=media&token=8563d22a-fac6-498d-a893-0578831ff8a7)

close Don’t

No parts of the icon should extend outside of the trim area

## Grid and keyline shapes

### Icon design template

If your design requires an icon that isn’t covered by the over 2,000 variations in [Google Font’s icon library](https://fonts.google.com/icons), you may want to create your own. [Download this 24dp keyline template](https://storage.googleapis.com/material-io-design/downloads/gm_icon_template.ai.zip)\* (ZIP file) to design custom icons in Adobe Illustrator.

*\*This template is available under* [*Apache 2.0*](https://www.apache.org/licenses/LICENSE-2.0.html)*. By downloading this file, you agree to the* [*Google Terms of Service*](https://policies.google.com/terms)*. The* [*Google Privacy Policy*](https://policies.google.com/privacy) *describes how data is handled in this service.*

### Icon grid and keyline

The icon grid establishes clear rules for the consistent, but flexible, positioning of graphic elements. 

Keyline shapes are the foundation of the grid. By using these core shapes as guidelines, you can maintain consistent visual proportions across system icons.

![A 24dp-by-24dp icon grid.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhihomb-15.png?alt=media&token=ebd0158f-8fe2-4d24-a545-76db96e9e9b4)

Grid

![A 24dp-by-24dp grid of foundational icon keylines: square, circle, vertical rectangle, horizontal rectangle.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhihvvy-16.png?alt=media&token=005df028-43a6-40e9-b96a-caa0c370a21c)

24dp grid at 1000% scale

![A 24dp-by-24dp grid of foundational icon keylines with the square keyline highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiiy4c-17.png?alt=media&token=726aa27c-fd2b-4270-b76a-dc9f925bf1d8)

Square height and width, 18dp

![Add chart icon on square keyline.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhij5mm-18.png?alt=media&token=062e95df-32c7-44c3-b1f6-81731e1930dc)

Icon drawn using square keyline

![A 24dp-by-24dp grid of foundational icon keylines with the circle keyline highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhijf4f-19.png?alt=media&token=434a0acd-3f17-4b69-b37e-c53f2a611e08)

Circle diameter, 20dp

![Globe icon on circle keyline.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhijo1a-20.png?alt=media&token=57209aae-7be7-441b-b544-aec9b0ec96d3)

Icon drawn using circle keyline

![A 24dp-by-24dp grid of foundational icon keylines with the vertical rectangle keyline highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhikriz-21.png?alt=media&token=e3890dfe-5c76-4e55-9865-1e0b0b5a310f)

Vertical rectangle height, 20dp, and width, 16dp

![Document icon on vertical rectangle keyline.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhikzyl-22.png?alt=media&token=77cb7533-3aac-464c-afb1-e6965884d54a)

Icon drawn using vertical rectangle keyline

![A 24dp-by-24dp grid of foundational icon keylines with the horizontal keyline highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhil8ui-23.png?alt=media&token=392b52f0-7446-477b-9a7a-aaaa42929690)

Horizontal rectangle height, 16dp, and width, 20dp

![Envelope icon on horizontal rectangle keyline.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhilh5g-24.png?alt=media&token=9bcae434-7c41-4648-bdc7-71c73184885d)

Icon drawn using horizontal rectangle keyline

![Icon grid including a folder icon aligning to the grid. X and Y placement coordinates are shown using integers.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhilpjf-25.png?alt=media&token=9655e02a-a291-466e-b196-e45686e91762)

check Do

Position icons “on pixel” within the icon grid

![Icon grid including a folder icon misaligned to the grid with X and Y placement coordinates shown using decimals.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhilynz-26.png?alt=media&token=183e6f8f-dc5d-42db-abd1-c410c172ae3e)

close Don’t

Don’t place the icon on a coordinate that isn’t “on pixel”

## Icon metrics

### Anatomy

![Diagram of a calendar icon on a grid highlighting six different elements.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhird2l-27.png?alt=media&token=c1bdaf8d-d963-42ad-95d5-33b07c5b7fd3)

1.  Corner
2.  Stroke terminal
3.  Counter stroke
4.  Stroke
5.  Counter area
6.  Bounding area

### Corners

Corner radii are 2dp by default. For the outlined style symbols, interior corners are square, not rounded. For shapes 2dp wide or less, stroke corners shouldn’t be rounded.

For the rounded style symbols, both exterior and interior corner radii are rounded and for the sharp style symbols, both exterior and interior corners radii reduce from 2dp to 0dp. 

![Credit card symbol placed on grid with 2dp rounded exterior corners highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiwgza-28.png?alt=media&token=f8095345-1164-4158-a4b8-a488954399de)

Exterior corners with 2dp corner radii

![Credit card symbol placed on grid with 2dp linear interior corners highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhis0bd-29.png?alt=media&token=09785c23-d95d-44ff-bfc9-8a578597246a)

Interior corners shouldn’t be rounded

![Document icon placed on grid with overly rounded corners highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiswrw-30-caution.png?alt=media&token=8a81e237-d9a0-4bca-a394-cbbe5ba1e253)

exclamation Caution

Overly round corners reduces the symbol’s legibility

![‘Add more’ icon placed on grid with inconsistent rounded corners. ](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhit41a-31-dont.png?alt=media&token=69509827-8e53-4807-ab42-4a3a27beb3ec)

close Don’t

Don’t use inconsistent corner radii

### Weight and stroke

The recommended stroke weight for icons is 2dp or the regular weight (400), which includes curves, angles, and both interior and exterior strokes. Material Symbols can provide a range of weights between thin (100) and bold (700). 

![Regular stroke weight timer icon placed on a grid.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhitcv2-32.png?alt=media&token=af72e2dc-24cc-4270-85a2-29674981fd86)

Timer icon at the regular stroke weight (400)

![Weight timer symbols ranging from 100 to 700 weight.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhitln3-33.png?alt=media&token=96b4f7ef-c0d3-4af4-9ec4-1b329fc7dd5c)

Timer symbol shown across a 100–700 weight range

![Arrow symbol placed on a grid with arrowhead terminals trimmed to 45 degrees highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhituxl-34.png?alt=media&token=bd07e3e4-b86c-4678-90e8-4472466df66a)

Stroke terminal on an icon

![Add circle symbol placed on grid with linear 2dp inner stroke highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiu2ur-35.png?alt=media&token=99cda6a1-b2a6-466a-a76f-9f57176512f3)

Counter stroke on an icon

![Add chart icon placed on grid with consistent stroke weights and squared stroke terminals.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiucam-36.png?alt=media&token=ebb4def7-31ad-41f2-9dfd-a5607731a333)

Use consistent stroke weights and squared stroke terminals

![Add chart icon placed on grid showing inconsistent stroke weights and rounded stroke terminals.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiukep-37.png?alt=media&token=d7e200f0-8f01-4faf-a18e-082577ff70b5)

Don’t use inconsistent stroke weights or rounded stroke terminals

### Complex icon shapes

If an icon requires complex details, subtle adjustments can be made to improve its legibility. These adjustments are referred to as optical corrections. Any optical correction should use the geometric forms on which all other icons are based, without skewing or distorting those shapes.

![Paperclip icon on grid with adjusted 1.5dp stroke highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhiv5yo-38.png?alt=media&token=e4097aa3-49e1-4863-8905-ce880ff6ba0b)

The paperclip icon uses 1.5dp of the possible 2dp stroke area to fit multiple curves within the 24dp x 24dp icon space

![Ramen bowl icon on grid with adjusted 1.5dp stroke highlighted.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhivf9f-39.png?alt=media&token=587c6da7-20c8-4218-8b30-5891309bab1f)

The ramen bowl icon uses 1.5dp stroke and 2dp stroke together within the 24 x 24dp icon space

![Building icon using flat shapes.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhivoad-40.png?alt=media&token=d6545fb0-79fa-4758-9827-4ba86b76f5aa)

check Do

Make icons face forward

![Building icon in isometric perspective.](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fmlhivybg-41.png?alt=media&token=8482288f-dcff-4d02-91d1-f1d56fc2de0b)

close Don’t

Don’t tilt, rotate, or make icons appear dimensional
