# Pushing Roux-trainer solve times into Twisty Timer / Cubic Timer (Android)

Researched 2026-10-28 from the apps' source code, manifests and Play listings. Unless a line is marked UNVERIFIED, it comes from the source code.

Source permalinks used below (all shallow clones, read only, never built):
- **TT** = Twisty Timer @ `2fcd6f7` → `https://github.com/aricneto/TwistyTimer/blob/2fcd6f7d2697a0810f37245ac033f1da12448382/`
- **CT** = Cubic Timer @ `cfdf5f2` → `https://github.com/hato-ya/CubicTimer/blob/cfdf5f2b1d7a3a10c319fcd216abffc9291a82b5/`

A reference like `TT:app/src/main/AndroidManifest.xml#L19-L32` means the base URL plus that path and line anchor.

## Answer

- **Fully automatic (zero-tap) insertion is not possible today in either app.** Neither one exports an Activity with a usable intent filter, a ContentProvider, a BroadcastReceiver or a deep link that accepts solves. Both store times in a private SQLite DB (`databaseManager`, table `times`). Android's per-UID sandbox stops other apps from writing to that DB without root.
- **What does work is semi-automatic import.** Our app writes a file in the **Twisty "backup" format**, and the **same file imports into both apps**. Its rows carry puzzle + category ("Roux FB", "CMLL", ...) + time + date + scramble + penalty + comment. The user then taps *Export/Import → Import… → From backup* in the timer and picks the file (a Storage Access Framework picker). That is about 5 taps.
- **Re-importing a cumulative file is idempotent** for the backup format, because duplicates are skipped. Two conditions apply: the times must be multiples of 10 ms, and the date and scramble must be identical.
- **One-tap import needs a small change in a timer app**, such as a share target that opens the existing import flow. Twisty Timer upstream has been dormant since 2023. Cubic Timer is actively maintained, but only collaborators can open PRs, so the request has to go in as an issue.
- **Recommendation:** keep our own timer and stats as the source of truth, and add "Export to Twisty/Cubic Timer (backup .txt)". For Cubic Timer, optionally also export the csTimer format so Roux phase splits survive.

## Which app is "CubicTimer"?

| Candidate | Package | Source | Verdict |
|---|---|---|---|
| **Cubic Timer** by hatoya ([Play](https://play.google.com/store/apps/details?id=com.hatopigeon.cubictimer)) | `com.hatopigeon.cubictimer` | [hato-ya/CubicTimer](https://github.com/hato-ya/CubicTimer), GPL-3.0 | **Almost certainly the one meant.** It is the top Play result for "cubic timer" and "cubictimer". It is a Twisty Timer fork with smart-timer and stackmat support. Play: 100K+ downloads, updated May 10, 2026 |
| "Cube Timer" apps | `com.peterhohsy.cubetimer`, `com.avelsoft.cubetimer`, `br.com.mateusfiereck.cubetimer`, `com.sparkappz.cubetimer` | No public source found (GitHub code search for these package names: 0 hits) | Different name ("Cube"). Not analysed |
| CubeTimer (F-Droid) | `com.danilolutz.cubetimer` | GPL-3.0+, per F-Droid | Not on Play (the listing returns "Not Found"). Not analysed |
| `icy-develop/CubicTimer`, `Yaroslav2022/CUBICTimer` | n/a | GitHub, C++ / CSS, 0 stars | Not Android apps |

## Twisty Timer (`com.aricneto.twistytimer`)

**Status.** GPL-3.0 ([LICENSE.txt](https://github.com/aricneto/TwistyTimer)). The last master commit is 2023-06-23 ("Migrate to Storage Access Framework", authored by hatoya). The last merged PR is #152, from 2023-03-23. Play shows "Updated on Jun 23, 2023", v4.7.0, 1M+ downloads. There are 7 open PRs with no response, including #194 (Aug 2025) and #181 "Import Times into session or into archive" (May 2023). The README says "just send a pull request", but in practice upstream is **unmaintained**. The app sets `targetSdkVersion 33` (`TT:app/build.gradle#L8-L15`).

**Forks.**
- The maintained descendant is **Cubic Timer** (separate repo, not a GitHub fork).
- `maklumi/TwistyTimer` is active: Sep 2026 commits include a Jetpack Compose rewrite, "Hints for roux first block" and cleaned-up CMLL algs. It is not published, and it keeps `applicationId com.aricneto.twistytimer`. Its manifest has the same entry points as upstream, so it adds no integration hooks.
- `louis-hildebrand/TwistyTimer` (2025) is a personal fork.
- `901228/TwistyTimer` (pushed 2026) has no new commits beyond upstream.

**Inter-app entry points: none usable.** This is the full manifest component list (`TT:app/src/main/AndroidManifest.xml#L19-L58`):
```xml
<activity android:name="com.aricneto.twistytimer.activity.MainActivity" android:launchMode="singleTask"
    android:exported="true" ...>
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <action android:name="android.intent.action.SENDTO" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>
<activity android:name="...SettingsActivity" .../>  <activity android:name="...AboutActivity"/>   <!-- not exported -->
<receiver android:name="com.aricneto.twistytimer.OnUpgradeReceiver" android:exported="false"> MY_PACKAGE_REPLACED
<provider android:name="androidx.core.content.FileProvider" android:exported="false" android:grantUriPermissions="true">
```
The `SENDTO` action inside the launcher filter is inert, for three reasons:
- The filter has no `<data>` element.
- It has no `CATEGORY_DEFAULT`, so implicit `startActivity` cannot match it.
- `MainActivity` never reads its launch intent (`grep getIntent|onNewIntent` finds no matches in the whole app).

An explicit launch therefore only opens the timer. The app has no `ACTION_SEND` or `ACTION_VIEW` filter, so it is **not a share target**.

**Import/export.** Two formats: "backup" (all puzzles) and "external" ("For other timers", one puzzle/category).
- Import starts `ACTION_OPEN_DOCUMENT`, `CATEGORY_OPENABLE`, type **`text/plain`** (`TT:.../activity/MainActivity.java#L697-L711`). Only `.txt`/text-plain documents are selectable.
- Export uses `ACTION_CREATE_DOCUMENT`, with an optional share (`ACTION_SEND`, `EXTRA_STREAM`) of the result (`#L714-L750`, `#L925-L942`).
- The parser uses opencsv 3.7: `new CSVReader(br, ';', '"', true)`, so `strictQuotes=true` (`#L1021`).
- **csTimer files are not accepted.** The external parser rejects rows with more than 4 fields (`#L1041`), and only the two formats exist (`TT:.../fragment/dialog/ExportImportDialog.java#L49-L54`).
- **User flow:** Drawer → *Export/Import* → *Import…* → *From backup* or *From .txt file*. For *From .txt file*, the user first picks the puzzle and an **existing** category in a spinner (`TT:.../fragment/dialog/PuzzleChooserDialog.java#L188-L200`), then picks the file.

**Database.** The DB is SQLite `databaseManager` (version 10), accessed via a `SQLiteOpenHelper`, not Room (`TT:.../database/DatabaseHandler.java#L76-L90`):
```sql
CREATE TABLE times(_id INTEGER PRIMARY KEY, type TEXT, subtype TEXT, time INTEGER,
  date INTEGER NOT NULL DEFAULT (strftime('%s','now')), scramble TEXT, penalty INTEGER, comment TEXT, history BOOLEAN)
```
- `time` is in ms, and the last digit is cut on insert: `time = time - (time % 10)` (`#L312`).
- `date` is epoch ms.
- `penalty` is 0 = none, 1 = +2, 2 = DNF, or 10 = hidden placeholder row (`TT:.../utils/PuzzleUtils.java#L45-L50`). A +2 is **already added into `time`** (`applyPenalty`, `#L304-L325`).
- `history=1` means archived ("History"), and `0` means the current session (`TT:.../database/TimeTaskLoader.java#L35-L40`).
- **Both imports hard-code `history=true`**, so imported solves land in History, not in the current session (`MainActivity.java#L1032`, `#L1069`).
- The DB lives in the app's private data dir. Android "assigns a unique user ID (UID) to each Android app and runs it in its own process … by default, apps can't interact with each other" ([AOSP app sandbox](https://source.android.com/docs/security/app-sandbox)). `adb backup` can't extract it either, because it excludes app data for apps targeting API 31+ ([Android 12 behavior changes](https://developer.android.com/about/versions/12/behavior-changes-12)). Writing to it requires root.

**Categories: yes.** A category is just the free-text `subtype` column. A new category is created by inserting a hidden placeholder row with `PENALTY_HIDETIME` (`TT:.../fragment/dialog/CategorySelectDialog.java#L116-L129`), and the category list is `SELECT DISTINCT subtype … WHERE type=?` (`DatabaseHandler.java#L451-L466`). As a result, **a backup-format row with category `Roux FB` creates that category automatically**. The puzzle `type` must be one of the app's IDs (`"333"`, `"222"`, …, `PuzzleUtils.java#L33-L43`), so Roux drills should use `333`.

## Cubic Timer (`com.hatopigeon.cubictimer`)

**Status.**
- License GPL-3.0. `applicationId com.hatopigeon.cubictimer`, v3.9.0 (77), `targetSdkVersion 36` (`CT:app/build.gradle#L9-L14`).
- **Actively maintained.** Releases came on 2025-10-19, 2026-01-03, 2026-01-18 and 2026-05-10, and the Play "Updated on May 10, 2026" matches. Branch `feature/#195-smart-cube-integration` was pushed 2026-08-23 and adds a `splits` table with `method_id` and `step_id`. Its only methods so far are `METHOD_NONE` and `METHOD_CFOP` (no Roux).
- All 139 PRs come from the maintainer. GitHub shows **"Only collaborators can create PRs"**, so outside contributions must start as an issue.
- No existing issue asks for an intent or API for third-party apps (searched issues for intent/api/import).

**Entry points: none usable.** The manifest only adds `USB_DEVICE_ATTACHED`, which is for the stackmat USB-serial cable (`CT:app/src/main/AndroidManifest.xml#L35-L54`):
```xml
<activity android:name="com.hatopigeon.cubictimer.activity.MainActivity" android:exported="true" ...>
    <intent-filter> MAIN + SENDTO + LAUNCHER (same inert filter as Twisty) </intent-filter>
    <intent-filter><action android:name="android.hardware.usb.action.USB_DEVICE_ATTACHED" /></intent-filter>
</activity>
<provider android:name="androidx.core.content.FileProvider" android:exported="false" .../>
```
There is no `getIntent()` or `onNewIntent` handling in `MainActivity`. The `intent.getAction()` hits are internal LocalBroadcast receivers.

**Import/export.**
- Four import formats (`CT:.../fragment/dialog/ExportImportDialog.java#L48-L63`): `EXTERNAL=1`, `BACKUP=2`, `CSTIMER_EXPORT=3` (the csTimer "Export to file" JSON .txt) and `CSTIMER_SESSION=4` (the csTimer session CSV).
- The picker is `ACTION_OPEN_DOCUMENT` with type **`text/*`** (`CT:.../activity/MainActivity.java#L647-L666`).
- An **"Import to archive"** checkbox lets the user choose between session and archive (`ExportImportDialog.java#L119-L135`).
- Parsers:
  - backup: `#L1011-L1026`, `CSVReader(br, ';', '"', '\\', 0, true)`
  - external: `#L1027-L1073`
  - csTimer JSON: `#L1074-L1181`
  - csTimer CSV: `#L1182-L1236`
- Export writes backup and external with opencsv `CSVWriter(';','"','\\')` (`#L812-L870`).
- The Play description's "Google Drive" support is just the SAF picker; the source has no Drive API.
- UI labels: *From backup*, *From .txt file*, *From csTimer export TXT*, *From csTimer session CSV* (`CT:app/src/main/res/values/strings.xml#L136-L142`).

**Database.** Same `databaseManager` / `times` schema as Twisty (`CT:.../database/DatabaseHandler.java#L32-L92`), with three differences:
- `time` is a `long` and is **not truncated**: there is a three-decimal mode (`#L311-L327`).
- `penalty` is stored "raw" as `mbldPenaltyNum*100 + penalty` (`CT:.../items/Solve.java#L26`). For non-MBLD solves it is 0/1/2.
- The app is sandboxed in the same way.

**Categories:** same free-text `subtype` mechanism. The csTimer JSON import maps each csTimer session name to a category.

## Exact import formats (write these from our app)

The rules below apply to both apps:
- Separator `;`. **Every field double-quoted**: with `strictQuotes=true`, unquoted text is ignored, so an unquoted time reads as "" (0 ms in Twisty).
- Do not put `"` or `\` inside fields; backslash is opencsv's escape character.
- UTF-8. Name the file `*.txt` so it gets MIME `text/plain` (Twisty's picker filters on it).

### A. Backup format: recommended, imports into both apps

Writer: `TT:.../activity/MainActivity.java#L849-L873`. Reader: `#L1024-L1036` (CT `#L1011-L1026`).

| # | Column | Content |
|---|---|---|
| 0 | Puzzle | Twisty puzzle id, e.g. `333` |
| 1 | Category | free text, e.g. `Roux FB` (2–32 chars when created in-app) |
| 2 | Time(millis) | integer ms **including** +2. For Twisty, **round to 10 ms** (see gotchas) |
| 3 | Date(millis) | epoch ms (UTC) |
| 4 | Scramble | text, may be empty |
| 5 | Penalty | `0` none, `1` +2, `2` DNF |
| 6 | Comment | text, may be empty |

The **first line is always discarded** as a header (`// throw away the header`, `#L1025`). It must be present, or the first solve is lost. Twisty writes it unquoted with commas. Example, constructed exactly as the writer at `#L851-L862` would emit it:
```
Puzzle,Category,Time(millis),Date(millis),Scramble,Penalty,Comment
"333";"Roux FB";"4520";"1793175330120";"R U2 F' L2 D B2 R' U F2";"0";"FB drill, x2 y"
"333";"CMLL";"3170";"1793175390000";"";"1";"time includes +2"
"333";"Roux LSE";"6240";"1793175450000";"";"2";""
```
**Duplicates are skipped** when `type, subtype, time, scramble, date` all match (`TT:.../database/DatabaseHandler.java#L370-L372`, `#L717-L721`).

### B. External format ("For other timers" / "From .txt file")

Reader: `TT:.../activity/MainActivity.java#L1037-L1076` (CT `#L1027-L1073`).
- **There is no header.** The file holds 1 to 4 fields per line, and a line with more than 4 fields is an error.
- The puzzle and category are **not in the file**: the user picks them in the import dialog, which offers existing categories only.
- Every solve is imported **without duplicate checking** (`DatabaseHandler.java#L370`), so re-importing the same file duplicates it.

| # | Field | Twisty parse | Cubic Timer parse |
|---|---|---|---|
| 0 | time | `PuzzleUtils.parseTime`: `M:SS.ss` or `S.ss`, any decimals, rounded to 10 ms (`TT:.../utils/PuzzleUtils.java#L239-L265`) | `parseAddedTime`: `[h ]mm:ss.SS[S]`. **Needs exactly 2 or 3 decimals**: `.5` is read as 5 ms (`CT:.../utils/PuzzleUtils.java#L683-L723`) |
| 1 | scramble | optional | optional |
| 2 | date | optional, ISO-8601 via Joda `DateTime.parse`. If it fails to parse: import time | same |
| 3 | penalty | optional, only `DNF` is recognised. +2 can't be expressed: write the time already +2'd | same |

Real line from the repo's sample file (`TT:Solves_333_Sample.txt#L1`):
```
"1:02.42";"B' F' L2 F D2 L2 R2 B' R2 B F' D' B' F2 R F' L B2 R' B' U2";"2016-06-19T10:37:09.619+01:00"
```

### C. csTimer formats (Cubic Timer only)

- **csTimer export JSON:** single line (it reads `br.readLine()` only). `properties.sessionData` is a JSON *string* mapping each session id to `{name, opt:{scrType}}`. Each session lives in `session<id>: [[[penalty, total, ...cumulative splits, last phase first], scramble, comment, unixSeconds], ...]`.
  - Penalty encoding: `2000` = +2 (added to the time) and `-1` = DNF.
  - `scrType "333"` maps to puzzle `333`, and the session name becomes the category.
  - **Splits are converted into the comment as `P1: …`, `P2: …`**, so Roux FB/SB/CMLL/LSE splits would survive.
  - Duplicates are checked (`CT:.../activity/MainActivity.java#L1074-L1181`, penalty at `#L1126`, date at `#L1165`).
- **csTimer session CSV:** `No.;Time;Comment;Scramble;Date;P.1;…` with a header, which the reader skips (`#L1182-L1236`).

### Generator gotchas (verified in code)

1. **Round times to 10 ms for Twisty.** Twisty truncates on insert (`DatabaseHandler.java#L312`) but compares the *untruncated* value in `solveExists`. If times are not multiples of 10, every re-import duplicates rows.
2. **Write a header line in the backup format.** The first line is discarded unconditionally.
3. **Use the backup format for repeated syncs.** It dedupes, and the external format does not. Keep `date` and `scramble` stable per solve, e.g. derive them from our DB row.
4. **Twisty puts backup imports into History**, not the current session. Cubic Timer lets the user choose.

## Integration options, ranked

| Rank | Option | Works today? | Effort | UX |
|---|---|---|---|---|
| 1 | **(e)+(b) Own timer & stats as the source of truth, plus "Export to Twisty / Cubic Timer"**. Writes one cumulative backup-format `.txt` (all Roux drill solves, categories `Roux FB`/`Roux SB`/`CMLL`/`LSE`/`Roux full`). Optionally adds a csTimer-JSON export for Cubic Timer, csTimer and cubicdb so splits survive | Yes | S (1–2 days: a formatter, unit tests built from the parser rules above, `ACTION_CREATE_DOCUMENT` or `MediaStore.Downloads`) | User opens the timer, then *Export/Import → Import… → From backup* → picks the file (about 5 taps). Idempotent re-import |
| 2 | **(b+) The same, with less friction.** Our app publishes the file through its own `DocumentsProvider` root, so it always appears in the SAF picker. Then an "Open Twisty Timer" button calls `getLaunchIntentForPackage`, which needs `<queries><package android:name="com.aricneto.twistytimer"/><package android:name="com.hatopigeon.cubictimer"/></queries>` on Android 11+ | Yes | M | Same taps, no file hunting. Still not automatic |
| 3 | **(c) Upstream change:** a share target (`ACTION_SEND`/`ACTION_VIEW`, `text/plain` + `EXTRA_STREAM`) that opens the existing import dialog with user confirmation. Confirmation matters, because a silent exported "add solve" API would let any app inject fake times | Not yet | S code. Adoption is uncertain: Twisty upstream is dormant, and Cubic Timer accepts issues only (PRs restricted to collaborators). The maintainer is active | Best possible: one tap "Send to Cubic Timer". Our own GPL fork of Twisty would be a different app (must change the applicationId), not an integration |
| 4 | **(a) Call an existing exported intent/provider** | **No.** None exists in either manifest (see above) | – | – |
| 5 | **(d) AccessibilityService that drives the timer's UI** | Technically possible | M–L | Fragile: it breaks on UI, layout or locale changes and relies on timing. Play policy requires in-app prominent disclosure, affirmative consent and a declaration form, and the use must stay "deterministic, rule-based automation". Any use that enables an app to "autonomously initiate, plan, and execute actions" is prohibited ([Play policy](https://support.google.com/googleplay/android-developer/answer/10964491)). Sideloaded APKs on Android 13+ also hit "restricted settings" (per secondary sources such as [9to5Google](https://9to5google.com/2022/05/06/android-13-sideloaded-accessibility/)). **Not recommended** |
| 6 | Write the timer's DB directly / `adb backup` | **No** | – | Sandbox. `adb backup` excludes app data for targetSdk ≥31 (TT 33, CT 36) |

## Timing solves in our own app

- **On-screen stackmat-style touch timer:** hold for about 0.3–0.55 s to arm, release to start, tap to stop. Use `MotionEvent.getEventTime()` and `SystemClock.elapsedRealtime*()`. Reference: Twisty's `TT:.../fragment/TimerFragment.java#L140-L143` (`HOLD_FOR_START_DELAY = 500L`) and `TT:.../layout/ChronometerMilli.java`.
- **GAN Smart Timer / GAN Halo over BLE:** service `0000fff0-0000-1000-8000-00805f9b34fb`, state characteristic `0000fff5-…` (`CT:.../fragment/TimerFragment.java#L293-L294`). Protocol references:
  - [afedotov/gan-web-bluetooth](https://github.com/afedotov/gan-web-bluetooth) `src/gan-smart-timer.ts` (MIT, TypeScript; also GAN smart cubes)
  - csTimer [`src/js/hardware/gantimer.js`](https://github.com/cs0x7f/cstimer/blob/master/src/js/hardware/gantimer.js) (GPL-3.0)
- **QiYi Smart Timer:** service `0000fd50-…`, characteristics `00000001/00000002-0000-1001-8001-00805f9b07d0` (`CT:.../TimerFragment.java#L306-L308`). Reference: csTimer `src/js/hardware/qiyitimer.js`.
- **Stackmat (Speed Stacks G3–G5, YuXin):**
  - The signal is 1200 baud 8N1 serial. Cubic Timer reads it through a USB-RS232 cable with [usb-serial-for-android](https://github.com/mik3y/usb-serial-for-android) 3.4.6: `setParameters(1200, 8, STOPBITS_1, PARITY_NONE)` (`CT:.../TimerFragment.java#L2445-L2487`). Its README warns that the cable is "NOT AUDIO CABLE used by csTimer".
  - csTimer instead decodes the audio-jack signal from the mic in [`src/js/hardware/stackmat.js`](https://github.com/cs0x7f/cstimer/blob/master/src/js/hardware/stackmat.js). Porting that to Android `AudioRecord` with a USB-C audio adapter is plausible but UNVERIFIED.
- **Licensing:** Twisty Timer, Cubic Timer and csTimer are GPL-3.0. Copying their code makes our app GPL. gan-web-bluetooth is MIT. Treating UUIDs and protocol facts as reference only is safer.

## Open questions / unverified

- I did not check whether Twisty Timer's Play build (v4.7.0, Jun 2023) matches the GitHub master byte for byte. The Play "Updated on" date matches the last commit date (UNVERIFIED).
- I read that a puzzle `type` outside the app's fixed list would be stored but never shown in the UI, but did not test it. Use `333`.
- The default state of Cubic Timer's "Import to archive" checkbox was not checked.
- Whether hato-ya would accept a share-target feature request is unknown. Open an issue at <https://github.com/hato-ya/CubicTimer/issues>.
- The csTimer JSON semantics are taken from Cubic Timer's parser comments, not from csTimer's own writer code (UNVERIFIED against csTimer source).
- Android 13+ "restricted settings" behaviour is described here from secondary sources, not official docs (UNVERIFIED).
- `maklumi/TwistyTimer` (Roux FB hints) is unpublished and could change. It might be worth contacting the author as a potential collaborator (not evaluated further).
