# Monetizing the Roux Android app on Google Play

Researched 2026-10-29 for an individual developer with a personal Play account and a GPL-3.0 app.
Every claim links to its source. **UNVERIFIED** means no primary source confirmed it, and
**ESTIMATE** means my own order-of-magnitude reasoning. This is not legal or tax advice.

## Recommendation

1. **Ship the app free.** Everything ported from onionhoney's roux-trainers stays free and
   complete in every build: the FB/SS/CMLL/LSE trainers, the solver and the analyzer. Ask
   onionhoney before charging for anything, and credit them in the app and the store listing.
2. **Add an optional one-time "Supporter" unlock** through Play Billing (PBL 9.1). Optionally add
   2–3 consumable "tip" products alongside it. The unlock covers cosmetics and extras that this
   app adds and the original never had: themes, advanced stage analytics, and later perhaps
   smart-cube insights. Twisty Timer (cubing, GPL) and Thunderbird already sell through Play
   Billing this way.
3. **Keep the Ko-fi link out of the Play build entirely.** That includes "donate" wording and
   links to pages that show donation buttons. Google enforced this against StreetComplete
   (2022) and AnkiDroid (Jul–Oct 2026). Put Ko-fi in the GitHub README, on the website, in the
   F-Droid `Donate` metadata and in a `foss` flavor.
4. **Use two flavors.** `play` gets Play Billing and no external payment links. `foss` has no
   proprietary libraries, the unlock already granted and the Ko-fi link. Tasks.org, Thunderbird
   and AnkiDroid use the same split.
5. **No ads and no paid-upfront price.** Ads bring little money, hurt the timer UX and pull in
   consent and families work. A paid app cuts installs in a tiny niche while the same app is
   free elsewhere. Note that a free app can never later become paid.

## Options at a glance

| Option | Allowed on Play? | Regions | Fee to Google | Effort | Fit for this app |
|---|---|---|---|---|---|
| Ko-fi/donation link in app | **No** (Payments §4). Only through link-out programs | US: External content links program (enroll + APIs, US users only). EEA: external offers needs a *registered business*. Rest of world: no | Ko-fi 0% on tips, plus processor fees. Play fee on a tip via the US program: UNVERIFIED | Trivial off-Play, high on Play | Good **only outside the Play build** |
| Tip jar (consumable IAP) | Yes | Everywhere Play Billing works | 15% (EEA/UK/US: 10% service + 5% billing fee) after enrolling in the $1M tier | Low–medium | Good |
| One-time Pro/Supporter unlock | Yes | Same | Same | Medium (gating, restore) | **Best fit** |
| Subscription | Yes | Same | 15% | High: needs ongoing value, e.g. a sync server | Poor (no recurring cost to justify) |
| Paid upfront | Yes | Same | 15%; the billing fee also applies to paid-app purchases | Low | Poor for a niche GPL app |
| Ads (AdMob) | Yes, with ad-placement and Families rules | Consent (CMP) required in EEA/UK/CH | AdMob revenue share not checked (UNVERIFIED) | Medium–high | Poor |

## 1. Ko-fi / tip / donation link

**Policy text** ([Payments policy](https://support.google.com/googleplay/android-developer/answer/9858738)):

- §3, billing must *not* be used where "payments include peer-to-peer payments, online auctions, and tax exempt donations".
- §4: "Other than the conditions described in Section 3, Section 8, and Section 9, apps may not lead users to a payment method other than Google Play's billing system." This explicitly covers "An app's listing in Google Play" and "In-app webviews, buttons, links, messaging, advertisements, or other calls to action".
- The [Payments FAQ](https://support.google.com/googleplay/android-developer/answer/10281818) says "Do direct tips or contributions from user to creator require Play's billing system? In cases where 100% of the tip or contribution from a user goes to the creator and the payment does not grant access to any digital content or services (including stickers, badges, special emojis etc.), then we regard this as a peer-to-peer payment". The same FAQ says that inside an app this "includes directly linking to a webpage that could lead to an alternate payment method".

**Enforcement shows the "tips to creator" wording does not protect a developer's own donation link:**

- **WireGuard (2019):** delisted over a link to its donations page, and restored after the link was removed ([mailing list](https://lists.zx2c4.com/pipermail/wireguard/2019-October/004596.html)).
- **StreetComplete (2022):** Google rejected Patreon/Liberapay links, and then *also* rejected a plain link to the GitHub project page because that page mentioned donating. The fix was to remove the link and keep a dialog ([issue #3768](https://github.com/streetcomplete/StreetComplete/issues/3768)).
- **AnkiDroid (2026):** Google flagged an Open Collective link. The 2026-08-07 notice said: "your app allows users to contribute donations to an organization that is not tax-exempt". A 2026-09-29 rejection warned that the app "will only be available to Google Play users in India, Russia starting October 12, 2026". The team removed Donate links "only from the `play` variant" and was back on Play on 2026-10-24 ([issue #21656](https://github.com/ankidroid/Anki-Android/issues/21656)).

**By region:**

- **US.** Since 2025-10-29, under the Epic injunction, "Google will not prohibit a developer from … link to transactions". Google also says "Our current policies and programs remain in effect": linking out goes through the [External content links program](https://support.google.com/googleplay/android-developer/answer/16470497). That program requires enrollment, integration of the external-links APIs, US-only targeting, and fees from 2026-10-01 (10% on in-app item purchases for the first $1M; $2.85 per app download). A settlement signed 2026-03-04 asks for a revised injunction, so this may change ([US update page](https://support.google.com/googleplay/android-developer/answer/15582165)). Whether a tip that unlocks nothing is billable: UNVERIFIED.
- **EEA.** [External offers program](https://support.google.com/googleplay/android-developer/answer/14372887) eligibility includes "Developer must be registered as a business". A personal account is not eligible.
- **Rest of world.** Not allowed, except for genuinely tax-exempt recipients (AnkiDroid shows Google reads that narrowly).

**What open-source apps do:**

- They hide the link in the Play flavor: AnkiDroid's `play` variant, and Thunderbird, whose `foss` flavor uses `feature.funding.link` while `full` uses `feature.funding.googleplay` with Play Billing ([build.gradle.kts L259–264](https://github.com/thunderbird/thunderbird-android/blob/main/app-thunderbird/build.gradle.kts)).
- They sell a Play IAP "donation". Twisty Timer offers 1/2/3/5/10 USD tiers ([strings.xml](https://github.com/aricneto/TwistyTimer/blob/master/app/src/main/res/values/strings.xml)); the app was last updated on Play 2023-06-23 and uses an old billing wrapper.
- They keep donation links on the website and README. F-Droid's [`Donate` metadata](https://f-droid.org/docs/Build_Metadata_Reference/) takes a URL and asks for "a link that the developer explicitly makes public" rather than Ko-fi/PayPal "button code".
- Web tools are not bound by Play: [csTimer](https://cstimer.net/) and [SpeedCubeDB](https://speedcubedb.com/) both use PayPal donate links.

**Ko-fi:** the help centre says "Ko-fi Free … 0% on tips and 5% on Shop, Memberships, Monthly payments, and Commissions", with PayPal/Stripe fees on top ([help article](https://help.ko-fi.com/hc/en-us/articles/360002506494); seen in a search snippet because direct fetch returned 403. The Gold price is UNVERIFIED).

## 2. In-app purchases (tip jar, Pro unlock, subscription)

- **Required for digital unlocks.** The policy says Play-distributed apps selling "app functionality or content (such as an ad-free version of an app or new features not available in the free version)" "must use Google Play's billing system" ([Payments §2](https://support.google.com/googleplay/android-developer/answer/9858738)). A tip to an individual is not a tax-exempt donation, so Play Billing is the correct rail for it.
- **Library.** The current version is **PBL 9.1.0** (2026-06-18), and PBL 9 is supported until 2028-08-31. Since 2026-08-31 every new app and update must use PBL ≥ 8 ([release notes](https://developer.android.com/google/play/billing/release-notes), [deprecation FAQ](https://developer.android.com/google/play/billing/deprecation-faq)). Unacknowledged purchases "are refunded after 3 days" ([integrate guide](https://developer.android.com/google/play/billing/integrate)).
- **Fees** ([service fees](https://support.google.com/googleplay/android-developer/answer/112622)):
  - For users in the EEA, UK and US (from 2026-06-30) and Australia and Japan (from 2026-09-30), the "First $1M (USD) of annual earnings" row is 10% plus a 5% billing fee.
  - Everywhere else it is "15% for the first $1M (USD)".
  - Either way you must enroll: create an Account Group and accept the 15%-tier terms ([15% tier](https://support.google.com/googleplay/android-developer/answer/10632485)).
  - Subscriptions are 15%.
- **Effort (ESTIMATE):**
  - One non-consumable plus a few consumables with `billing-ktx` and no backend: about 2–4 days, including license-tester runs, purchase restore and the acknowledge/consume flow.
  - A subscription adds grace-period, hold and cancel states, and only makes sense with a recurring benefit such as a cloud-sync server you pay for.
- **Effect of the GPL:** anyone can rebuild with the unlock on. Tasks.org (GPL-3.0) does this itself: its generic/F-Droid build returns `hasPro = IS_GENERIC || …`, so Pro is always on, while the Play build sells subscriptions ([Inventory.kt](https://github.com/tasks/tasks/blob/main/app/src/main/java/org/tasks/billing/Inventory.kt)). Present the unlock as "support development + extras", not as DRM.

**What cubing apps charge for:**

| App | Model | Paid features / price |
|---|---|---|
| csTimer (web, GPL) | Free + PayPal donate | none ([cstimer.net](https://cstimer.net/)) |
| Twisty Timer (Android, GPL-3.0) | Free + Play IAP donations | $1–$10 tips, no features ([repo](https://github.com/aricneto/TwistyTimer)) |
| Cubic Timer (Twisty fork, GPL-3.0) | Free | smart *timer* support free, no IAP ([repo](https://github.com/hato-ya/CubicTimer)) |
| SpeedCubeDB (web) | Free + PayPal donate | none |
| acubemy (smart cube; Android/iOS/web) | Freemium subscription | Free tier: analytics, cloud sync, all cubes, matches. Premium (€4.99/mo or €49.99/yr) adds OLL/PLL stats, learning and drilling algs, personalized training and exports. Supporter tier €14.99/mo or €149.99/yr ([FAQ](https://acubemy.com/faq)) |
| Last Cube X (iOS) | Free + subscription | server sync; IAP $3.99/mo, $39.99/yr ([App Store](https://apps.apple.com/us/app/last-cube-x-cube-timer/id1661241296)) |
| Cubeast, CubeDesk | — | no pricing on their sites: UNVERIFIED |

**Candidates for the paywall**, mapped to [roux-training-features.md §2](roux-training-features.md):

- **Keep free:** all MVP trainers, the timer and ao5/ao12, Twisty export, spaced repetition and curriculum (core learning), and smart-cube *connection*. acubemy keeps connection free.
- **Supporter unlock:** themes and app icons, a supporter badge, advanced per-stage stats and "what to work on", deeper smart-cube analytics such as per-move hesitation and the stage-split history charts, and CSV/JSON export extras.
- **Subscription:** only if you ever run sync infrastructure.

## 3. Paid upfront app

- **Billing.** "Developers charging for app downloads from Google Play must use Google Play's billing system" ([Payments §1](https://support.google.com/googleplay/android-developer/answer/9858738)), and the 5% billing fee applies "for the initial purchase of a paid app" ([fees](https://support.google.com/googleplay/android-developer/answer/112622)).
- **Free can never become paid.** "Once your app has been offered for free, the app can't be changed to paid", which would mean a new package name ([pricing](https://support.google.com/googleplay/android-developer/answer/6334373)).
- **Price.** Each country has a min/max price range ([table](https://play.google.com/supported-locations)). The exact USD/EUR limits are UNVERIFIED because the table did not render.
- **Refunds.** A user "has up to two hours to return it for a full refund", once per app ([orders & refunds](https://support.google.com/googleplay/android-developer/answer/2741495)). Within 48 h they can also request a Play refund ([user policy](https://support.google.com/googleplay/answer/15574908)).
- **GPL precedent.** DAVx⁵ (GPLv3) is $6.49 on Play. Its site says "It is always possible to compile the app yourself and use it for free" and points to F-Droid ([download page](https://www.davx5.com/download)). Conversations (GPLv3) was paid on Play for years, but its US listing now shows price 0 (Play listing JSON-LD, fetched 2026-10-29; the reason is UNVERIFIED).
- **Fit for this app.** Paid works when the app is already the known default, like DAVx⁵ for CalDAV. For a new Roux-only app, ESTIMATE: a price wall plus the 12-tester gate plus a free F-Droid copy means very few sales.

## 4. Ads (AdMob)

- **Placement rules** ([Play Ads policy](https://support.google.com/googleplay/android-developer/answer/9857753)):
  - "Full screen interstitial ads of all formats … that show unexpectedly, typically when the user has chosen to do something else, are not allowed."
  - "Ads that appear during game play at the beginning of a level or during the beginning of a content segment are not allowed."
  - In practice: no ads on the timer, inspection or drill screens. That leaves banners on lists and settings, which have low value.
- **Children** ([Families policy](https://support.google.com/googleplay/android-developer/answer/9893335)):
  - If children are in the target audience, or users are of unknown age, you may "Only use Google Play Families Self-Certified Ads SDKs" with no interest-based ads.
  - Mixed audiences need a "neutral age screen".
  - Google "reserves the right to conduct its own review" of the target audience you declare. Cubing visibly attracts kids and teens (no figures found: UNVERIFIED), so declaring 13+ does not remove the risk.
- **Consent.**
  - A Google-certified, TCF-integrated CMP is required for personalized ads in the EEA/UK (from 2024-01-16) and Switzerland (from 2024-07-31) ([AdMob CMP](https://support.google.com/admob/answer/13554116)). Google's UMP SDK covers this ([UMP setup](https://developers.google.com/admob/android/privacy)).
  - The age signal is now `setAgeRestrictedTreatment(CHILD|TEEN|UNSPECIFIED)`, which replaces the deprecated TFCD/TFUA tags ([targeting](https://developers.google.com/admob/android/targeting)).
- **F-Droid.** It forbids "proprietary tracking or advertising libraries" ([inclusion policy](https://f-droid.org/docs/Inclusion_Policy/)), so the `foss` flavor would ship without ads anyway.
- **Revenue (ESTIMATE).** Vendor benchmarks put US Android banners at about $0.3–1.5 eCPM and interstitials at about $8–14 ([Appodeal eCPM report](https://appodeal.com/the-mobile-ecpm-report-updated-q4-2024-view); secondary). Assume a niche app with 200–1,000 daily users, about 3 banner views each per day and a ~$0.5 global-mix eCPM. That gives roughly **$10–50 per month**: smaller than a handful of $3–5 supporter purchases, and it costs UX and goodwill.

## Play account setup requirements

- **Fee and identity:**
  - US$25 one-time registration ([get started](https://support.google.com/googleplay/android-developer/answer/6112435)). You "may be asked for a valid government ID and a credit card, both under your legal name".
  - Contact email and phone must be verified by OTP ([required info](https://support.google.com/googleplay/android-developer/answer/13628312)).
  - Personal accounts must also verify access to an Android device through the Play Console app.
- **Closed testing (personal accounts created after 2023-11-13):** "a closed test for their app with a minimum of **12 testers** who have been opted in continuously for at least **14 days**", then an application for production access ([testing requirements](https://support.google.com/googleplay/android-developer/answer/14151465)). Plan to recruit testers from Roux communities early.
- **Public identity:** "Google will display your legal name, your country … and developer email address on Google Play. **If you decide to monetize on Google Play then Google will display your full address.**" ([required info](https://support.google.com/googleplay/android-developer/answer/13628312)). Whether ads-only monetization, with no merchant profile, triggers this is UNVERIFIED.
- **Merchant / payments profile:** needed for paid apps and IAP. It requires a legal address (no PO box), and the payout bank account must be in the same country ([payments profile](https://support.google.com/googleplay/android-developer/answer/7161426)).
- **Tax:**
  - In the payments profile, file a **W-8BEN** (non-US) or **W-9** (US) ([merchant tax info](https://support.google.com/googleplay/android-developer/answer/7163598)).
  - For EU buyers on Play Billing, "Google is responsible for determining, charging, and remitting VAT" ([tax rates/VAT](https://support.google.com/googleplay/android-developer/answer/138000)).
  - Income tax on payouts in your own country is yours.
- **15% tier:** create an Account Group and enroll ([link](https://support.google.com/googleplay/android-developer/answer/10632485)).
- **Android developer verification (sideloaded/F-Droid APKs):**
  - Protections apply "for all users who install apps from participating stores in Brazil, Indonesia, Singapore, and Thailand" from 2026-09-30, and globally in 2027 ([developer verification](https://developer.android.com/developer-verification)).
  - "Google Play automatically registers 99% of apps."
- **EU DSA "trader" declaration:** how it applies on Play is UNVERIFIED (no Play help page found).

## GPL and community notes

- **Selling is fine** ([GPL FAQ](https://www.gnu.org/licenses/gpl-faq.html#DoesTheGPLAllowMoney)): "Yes, the GPL allows everyone to do this. The right to sell copies is part of the definition of free software."
  - You do not have to give it away for free yourself, but a buyer may: "if someone pays your fee and gets a copy, the GPL gives them the freedom to release it to the public".
  - So any paywall is soft. Price it as support, and expect F-Droid or third-party free builds.
- **Source and the Play build:**
  - Play builds must offer the source. A link in the About screen and the listing is the usual way.
  - Precaution (StreetComplete 2022): point it at a page with **no donation buttons**, such as a release/tag page or a plain project site, not a README with a Ko-fi badge or a GitHub "Sponsor" button. Whether a repo link with a Sponsor button would be flagged is UNVERIFIED.
- **F-Droid:**
  - Play Billing is proprietary, and F-Droid says "Upstream developers must implement either a FLOSS alternative or a build flavour that does not require these dependencies" ([inclusion policy](https://f-droid.org/docs/Inclusion_Policy/)).
  - Put billing behind an interface. `play` gets the PBL implementation; `foss` gets a no-op that reports "unlocked". This is the Thunderbird/Tasks.org pattern.
  - F-Droid signs with its own key, so users cannot switch between the Play and F-Droid builds in place ([DAVx⁵ notes](https://www.davx5.com/download)).
- **Community etiquette:**
  - roux-trainers is a free community tool ("A trainer collection that caters to all your Roux training needs ❤️", README).
  - Before monetizing, ask onionhoney. If min2phase is used, consider telling cs0x7f too; it is GPL-3.0-or-later (see [roux-training-features.md §4](roux-training-features.md)).
  - Credit both prominently in About and in the store listing. Never charge for features ported from their work, and don't use the "Roux Trainers"/onionhoney name without permission (see the HANDOFF open decisions).
  - State plainly in the listing: open source (GPL-3.0), all trainers free, the Supporter unlock funds development, and the F-Droid/GitHub build has everything.
  - Optionally offer onionhoney a revenue share. Note that a link to *their* donation page would itself be an external payment link in the Play build.

## Open questions / unverified

1. Could Play's "tips to creator = peer-to-peer" FAQ ever cover a developer's own Ko-fi link? Enforcement (StreetComplete, AnkiDroid) says no, and no Google statement says yes.
2. US external content links program:
   - Are individuals eligible? No business requirement is listed, unlike the EEA program.
   - Is a reward-free tip billable?
   - What will the revised injunction after the 2026-03-04 settlement change?
3. Does a GitHub/README link with a Ko-fi badge or Sponsor button, in the Play build or the store listing, count as "leading users" to payment?
4. Not checked: exact Play price ranges per currency, the AdMob payment threshold and revenue share, Cubeast/CubeDesk pricing, the Ko-fi Gold price, the size of the Roux audience, and how DSA trader status works on Play.
5. Is the full address shown publicly with ads-only monetization? How does developer verification treat F-Droid-signed builds of a Play-registered package?
6. **To settle with the user:** the user's country (it affects the tax forms and the bank account), whether onionhoney agrees, and which features go into the Supporter unlock.
