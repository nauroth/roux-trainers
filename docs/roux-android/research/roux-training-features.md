# Roux-only Android trainer: features, existing tools, reusable code

Researched 2026-10-28 as input for an AI developer. Scope is **Roux only**. `[n]` refers to the numbered sources at the bottom. A bare `src/...:N` is a line in this repo: the nauroth fork of onionhoney/roux-trainers at `0129460` (v2.3, 2025-07-27, identical to upstream HEAD [56]).

Code permalinks are shallow clones, read only. A reference like `CST:path#L1` means that base URL plus the path and line anchor.
- **CST** = `https://github.com/cs0x7f/cstimer/blob/5f8e46cb78da6a487fc01ba913a6ce6fd101e28d/` (GPL-3.0)
- **M2P** = `https://github.com/cs0x7f/min2phase/blob/4d183b9eff8119cac72bc50ef35a7d8990740e06/` (GPL-3.0-or-later)
- **SWB** = `https://github.com/poliva/smartcube-web-bluetooth/blob/2077416d6c828ec926dee424cf1bbfe4c0f25a47/` (MIT)
- **OG** = `https://github.com/turnerglenn-cmyk/open-gan/blob/27520a574f53270716f11d0386e2597b43a553a6/` (GPL-3.0)
- **AOI** = `https://github.com/polo-aoi/aoi-roux-trainers/blob/d64e8122170846091707112cb64e2ad09220b74f/` (GPL-3.0)
- **SCT** = `https://github.com/dadadadas111/speedcube-trainer/blob/6e7606d5dc6d0e9a8c3fb1f4d9394bce0c7926d4/` (**no LICENSE file**)

Not read: the speedsolving.com wiki and forum (HTTP 403) and reddit/r/Roux (fetch refused). Neither is cited. The community hub resources.rouxers.com [1] and its book and tutorial were used instead.

## Summary

- **Learning path (community consensus):**
  - Start with FB, then SB built DR-first [4], then 2-look CMLL [7] and beginner LSE (arrow EO, `M' U2 M` swaps, `M2` for UL/UR) [8].
  - Learn full 42-case CMLL "as soon as possible", at the latest around 20–30 s [2].
  - Add EOLR only after full CMLL, from about 15 s [2].
  - Then EOLRb and misoriented centers (MC), 4c recognition (DFDB/BU), NMCLL and CMLL prediction [13].
  - x2y colour neutrality is the minimum; CFOP switchers should go fully colour neutral [9].
- **What coaches say to drill:**
  - Plan FB (or at least FS) and its fingertricks during inspection.
  - Do random-case trainer reps and check them against solver solutions, plus untimed solves trying alternatives.
  - Study fast solvers' example solves and reconstructions; use partial SpeedBLD as a warm-up [3][2].
  - Learn EOLR from text descriptions, not alg sheets [6].
- **Existing tools are web or desktop first.**
  - onionhoney roux-trainers (this repo) is the most complete Roux trainer, with solver-backed FB/SS/LP/CMLL/EOLR/4c. It is keyboard-centric, and its own changelog calls the mobile UI "still ongoing" [56].
  - cubegrass and Jade's EOLRb trainer are keyboard driven [17][18].
  - csTimer has Roux scramble subsets and a 4-step Roux split for smart cubes [CST].
  - No native Android Roux *trainer* was found. The Play and App Store hits are tutorials, or CFOP-first alg apps that include a CMLL list [39][40][37].
- **Gaps to own on mobile:**
  - Touch-first, offline stage trainers with random-state stage scrambles and solutions that use M and r.
  - Native BLE smart-cube support with fine Roux splits (FS/SS/LP/CMLL/EO/EOLR/4c). csTimer splits only 4 steps; the one finer splitter (SCT) has no licence.
  - Recognition-only drills with sticker masking and reaction-time stats.
  - Spaced repetition (SRS) per CMLL or EOLR case.
  - Chained stage practice, which exists only in the aoi web fork.
- **Code to reuse:**
  - Port `src/lib` to Kotlin: about 3.7k TS lines across Solver, Pruner, CubeLib, Analyzer, Evaluator, Algs, Defs and Math.
  - Use **cs0x7f/min2phase Java** for random-state scrambles. It is GPL-3.0+, depends only on `java.io`/`java.util`, uses about 1 MB and initialises in about 200 ms [M2P].
  - Port **smartcube-web-bluetooth** (MIT; GAN Gen1–4, MoYu, QiYi, GoCube, Giiker) [SWB], or reuse the GAN drivers from **open-gan**, which is GPL-3.0 Kotlin [OG].
- **Port the solver to Kotlin rather than embed a JS engine.** The TS pruning tables are dense `Uint8Array`s (fbdr 191 MB, fbss ≈ 382 MB) but **at most 1.6 % of entries are ever filled** (fbdr: 255,589 of 191 M = 0.13 %; measured, §5).
  - Sparse tables in Kotlin need a few MB; an embedded JS engine would inherit the 191–382 MB allocations.
- **Licensing:**
  - Shipping ported roux-trainers or csTimer code makes the whole APK GPL-3.0 (§5c). You must publish the Corresponding Source; a link next to the Play listing satisfies §6d. The app UI must show the legal notices (§5d).
  - GPL-3.0 apps already ship on Play, for example Twisty Timer [43].
  - Avoid TNoodle, which is AGPL [46].
  - SpeedCubeDB and Kian's alg docs state no licence. Ask permission, or re-derive the algs with the solver.

## 1. Roux learning path and recommended drills (evidence)

| Stage | Sub-skills, in learning order | Drills / milestones recommended by coaches |
|---|---|---|
| FB | 1x2x3 block on L. Approaches: DL-first, line-line 2x2x1 + pair, S-move insert [9]. FS → last pair; FS/pseudo-FS/line openings (`src/lib/Analyzer.ts:5`). x2y CN is the minimum [9]. | Plan FB in inspection; "if you cannot plan FB entirely, try to plan FS first". Plan fingertricks too; prefer pairs and triggers you execute well over raw movecount. Random LP-case trainers + check solutions, but "trainers can only help you so far": add untimed solves trying alternatives. Example solves are "the best way to learn new ideas". Kian's partial SpeedBLD as warm-up; Zhouheng's tracking trainer [3]. Block trainers: Cubegrass, Zhouheng [2]. |
| SB | DR-first (used by "most of the world-level rouxers", incl. Kian and Sean); freestyle is a superset [4]. Moveset `<R,r,U,M>`, wide inserts, avoid F at first, DR first "unless a pair presents itself" [10]. SBLP algs (Kian doc) [58]. SpeedCubeDB SBLS (65 cases) [15]. | Zhouheng's SS trainer; Cubegrass SB/SS/SP trainers; example solves [10]. Lookahead guide (Dylan Miller, CFOP-based) and Charlie Eggins practice guide [1]. |
| CMLL | 2-look: Sune-based orientation, then one corner-swap alg [7]. Full 42 ASAP, at the latest at 20–30 s [2][12]. Recognition progression: orientation first → "peeking" → all angles via colour patterns (Kian video) [5]. Any-angle recognition (James Macdiarmid video) [1]. NMCLL / hyperorientations / ATCRM; Straughan 4-sticker recognition (2024) [13]. CMLL prediction: Zhouheng 2020; Straughan CO prediction 2022 [13]. OH set [1]. | Drill orientation recognition until fast; rotate only with U [5]. 2H/OH alg lists on rouxcubing.com [1]. |
| LSE | Beginner: EO via the arrow case and `M' U2 M` / `M U2 M'` swaps; UL/UR via `M2`; finish [8]. EO flowchart (4a) [1]. EOLR = EO + UL/UR edges to D, merging 4a+4b, "about 60 cases … all intuitive" [11]. EOLRb also solves UL/UR directly [13]. Misoriented centers since 2004 [13]. 4c recognition: FUBU, BU, DFDB [13]. EOLRb 4c "non-cycle influencing" to avoid dots [6]. | Learn EOLR "from text descriptions", not alg sheets [6]. Book headings: "better switch late than early" (3-look → EOLR); "MC vs non-MC: better early than late" [6]. Trainers: Jade's EOLRb, Zhouheng's LSE, LaSEr (MC setting broken) [1]. Teoidus LSE fundamentals; Crys DFDB tutorial [1]. |
| Whole solve | Reconstructions (reco.nz Roux filter; Cubeast ao100s of top solvers) [1]. | Slow solves and reviewing example solves [3]. |

## 2. Proposed feature map (by stage)

Priority: **MVP** = first release, **v1** = next, **later**. The Reuse column lists code or data to port or read.

**0 Foundations**

| Feature: what / why | Pri | Reuse |
|---|---|---|
| Cube model + notation with M/r/S/E/f, wide moves and rotations, and centers tracked (needed for slice moves). | MVP | Port `CubieCube` (`src/lib/CubeLib.tsx:11-99`; `tp` = centers), `Move` (`:291`), `MoveSeq` (`:409`). Fix the parser: it silently drops unknown tokens, so `Rw`, parentheses and `x2'` don't parse (`:467-501`). |
| Random-state *stage* scrambles: sample a masked random state, then emit a scramble. Without this, cases are recognisable from the scramble. | MVP | `get_random_with_mask` (`src/lib/CubeLib.tsx:1006`). Scramble = min2phase, or the stage solver's solution inverted plus a margin (`src/reducers/BlockTrainerStateM.tsx:113-141`). csTimer equivalents: `sbrx`, `cmll`, `lse` (`CST:src/js/scramble/scramble_333_edit.js#L558-L571`, `#L687`), `lsemu` (`CST:src/js/scramble/333lse.js#L45`). min2phase needs solved centers (`src/lib/Solver.tsx:259`); csTimer appends M-slice prefix/suffix moves for this. |
| Touch-first trainer shell: case queue, reveal solutions, favourites, scramble-list input, dark mode. | MVP | Behaviour of the current app [56]; UI is new (Compose). |
| 2D/3D cube view with sticker masking per stage. | MVP | Masks `src/lib/CubeLib.tsx:777-873`; 2D CMLL visualiser (`src/components/CubeSim2D.tsx`, `CaseVisualizer.tsx`). |
| Timer, sessions, ao5/ao12, manual per-stage split entry. | MVP | Twisty Timer (GPL-3.0, Java, on Play) [43] for patterns. |
| Curriculum: milestone gates (2-look → full CMLL by 20–30 s; EOLR at about 15 s; x2y CN). Why: matches the community path. | v1 | [2][9]; content links to [1]. |
| Spaced repetition and weak-case weighting for CMLL/EOLR/4c/LP cases. None of the surveyed tools has SRS; SCT only weights undrilled cases. | v1 | New. Case IDs from `src/lib/Algs.tsx`. |

**1 First Block**

| Feature: what / why | Pri | Reuse |
|---|---|---|
| FB trainer: random state → you plan and solve → top solutions ranked for ergonomics. The core blockbuilding drill [3]. | MVP | `fb` pruner (`src/lib/Pruner.tsx:365-404`); IDA* (`src/lib/Solver.tsx:30-184`); `SeqEvaluator` (`src/lib/Evaluator.tsx:7-37`). |
| Inspection planner: 15 s countdown; enter or perform the plan; compare with the best across x2y or full CN. Why: inspection planning is the #1 FB advice [3]. | MVP | `analyze_fb`: 8 (x2y) or 24 (CN) orientations × premoves `"",x,x',x2` (`src/lib/Analyzer.ts:145-206`). |
| FB last pair (+DR) trainer, with edge/corner position filters. | MVP | `fbdr` pruner (`src/lib/Pruner.tsx:215-257`). |
| FS / pseudo-FS / line "opening" quiz (hint mode). Why: teaches spotting easy starts. | v1 | `fs-*`, `fs-pseudo-*`, `felinep1-*` solvers (`src/lib/Analyzer.ts:170-205`, `src/lib/Pruner.tsx:638-731`). |
| Piece-tracking trainer: N hidden moves, then predict the result. Book-recommended [3]. | v1 | `src/components/TrackerView.tsx:63-140`. |
| Chain flow: pick a revealed FS/FB solution → continue as FBLP / SS / FBLP+SS. Builds the FB→SB transition. | v1 | `AOI:src/components/BlockTrainerView.tsx#L291-L317` (setup + chosen alg becomes the next scramble). |
| Batch mode (6 cases at once, e.g. for inspection-only reps). | later | `AOI:src/reducers/BlockTrainerStateM.tsx#L210-L240`. |
| Partial SpeedBLD warm-up (blindfolded FB) [3]. | later | New. |

**2 Second Block**

| Feature: what / why | Pri | Reuse |
|---|---|---|
| SS trainer (front/back; DR position and orientation filters), DR-first oriented [4][10]. | MVP | `ss`/`ssdp` pruners (`src/lib/Pruner.tsx:409-469`); selectors (`src/Config.tsx:276-290`). |
| SB last pair trainer + SBLP reference (65 SBLS cases exist on SpeedCubeDB [15]; Kian doc [58]). | MVP | `sb` / `lpsb` pruners (`src/lib/Pruner.tsx:471-636`). Data licence: see §6. |
| FBLP + SS and FS + DR combined trainers. | v1 | `fbss` (`src/lib/Pruner.tsx:781-851`) and `fsdr` (`:735-770`). Note the fbss memory problem (§5). |
| Slow-solve mode: movecount per stage versus solver par. Efficiency feedback. | v1 | Solver par from `analyze_*`. Idea from SCT README#L47-L50 (idea only; no licence). |
| CMLL / EO prediction drill at SB last pair, using NMCLL recognition [13]. | later | `nmcll_to_cmll_mapping` (`src/lib/Algs.tsx:163-296`). |

**3 CMLL**

| Feature: what / why | Pri | Reuse |
|---|---|---|
| 2-look CMLL lesson + drill (Sune orientation; corner-swap alg) [7]. | MVP | Algs from [7]; reuse the CMLL trainer engine with a 2-alg set. |
| Full 42-case trainer: pick by group or case, random AUF, optional random SB last pair before the case (realistic recognition). | MVP | 42 algs (`src/lib/Algs.tsx:28-72`); SB-LP trigger pre-moves `trigger_algs` (`:330-343`); `CmllStateM`; csTimer CMLL case filter (`CST:src/js/scramble/scramble_333_edit.js#L505-L560`). |
| Recognition-only drill: masked stickers (2-side / Macdiarmid-style), tap-to-name, reaction-time stats. Recognition is the bottleneck [5]. | MVP | v2.1 recognition masking [56]; 2D visualiser. |
| NMCLL / non-matching-block CMLL (L/R face-shape selection). | v1 | `src/lib/Algs.tsx:163-326` (incl. `nmcll_display_parity` `:303`). |
| Per-case alg choice with alternatives; execution timing per case; OH set. | v1 | User-entered algs. SpeedCubeDB lists alternatives with votes [16] but has no licence. |
| Smart-cube per-move hesitation chart for CMLL algs. | later | Idea: SCT README#L160 (reimplement). |

**4 LSE**

| Feature: what / why | Pri | Reuse |
|---|---|---|
| Beginner LSE lessons: arrow EO, swaps, `M2` UL/UR, finish [8]. | MVP | Content only. |
| EO (4a) trainer incl. misoriented centers; 4b-for-MC option. | MVP | `lse` pruner (`src/lib/Pruner.tsx:876-908`); `src/Config.tsx:340`; SpeedCubeDB EO4A (9 cases) [15]. |
| EOLR / EOLRb trainer: filters for non-MC only, MC only, both, and "only where MC (or non-MC) is optimal". | MVP | `eolr` pruner with AC/MC pre-moves (`src/lib/Pruner.tsx:910-958`); modes `src/Config.tsx:68-74`; `src/reducers/LSETrainerStateM.tsx:75-150`. |
| 4c trainer with a selectable recognition method (FUBU/BU/DFDB) [13]. | MVP | `lse` solver; `src/Config.tsx:340`. |
| EOLRb 4c non-cycle influencing ("avoid dots") cases [6]. | v1 | Generate with the `lse` solver; text from [6]. |
| EOdM (EO + DF/DB edges; `edge_encode` marks DF/DB at `src/lib/Pruner.tsx:963`). | later | `eodm` pruner (`src/lib/Pruner.tsx:960-992`). |

**5 Full solve, analysis, smart cube**

| Feature: what / why | Pri | Reuse |
|---|---|---|
| Reconstruction import → auto stage split (FB over 24 orientations, then SS, SP, CMLL, LSE) → per-stage comparison with solver optima. | v1 | `analyze_roux_solve` (`src/lib/Analyzer.ts:59-130`), used by `src/components/AnalyzerView.tsx:376`. |
| Native BLE smart cube: GAN Gen1–4, MoYu (v1/MHC/WRM), QiYi, GoCube, Giiker. Android reads the address from the scan, so no MAC prompt (Web Bluetooth on Android needs a flag or manual MAC entry, SCT README#L169-L180). | v1 | Port SWB `src/smartcube/protocols/*` (MIT), or OG `core/` GAN Gen2–4 (GPL Kotlin; reads the advertised MAC at `OG:app/src/main/kotlin/app/opengan/ble/DeviceManager.kt#L89-L93`). |
| Automatic Roux splits: FB / SB (+FS/SS/LP) / CMLL / EO / EOLR(4ab) / 4c, with per-stage time, pauses and TPS. csTimer has only 4 steps. | v1 | Stage predicates `src/lib/CubeLib.tsx` masks plus `is_cmll_solved` (`:989`); csTimer `getRouxProgress` (`CST:src/js/lib/cubeutil.js#L206-L218`). |
| Cube-clock timestamps with linear-fit time correction. | v1 | `cubeTimestampLinearFit` (SWB README#L217-L220; from csTimer). |
| Smart-cube-guided scramble (live highlighting, auto-correction). | v1 | Idea: SCT README (reimplement; no licence). |
| Stats by stage, plus "what to work on" (recognition vs execution vs efficiency). | later | Idea: SCT README "Reports" (reimplement). |

## 3. Existing tools compared

| Tool | Platform | Roux coverage / strengths | Gaps (for a mobile Roux learner) | Licence / source |
|---|---|---|---|---|
| onionhoney roux-trainers (this repo) [56] | Web (React) | FB analyzer (x2y/CN, FS/pseudo/line quiz), FB/FBLP(+DR), FS, SS, FS+DR, FBLP+SS, CMLL by case/NMCLL/masking, EOLR/EOLRb/EOdM with MC filters, 4c, tracking trainer, recon analyzer; random-state scrambles; M/r solver. | Keyboard control ("CStimer mapping") and mobile UI "still ongoing"; no smart cube, SRS, timer/stats or curriculum; heavy memory (§5). | GPL-3.0 |
| aoi-roux-trainers [AOI] | Web fork | Adds chain flow FS→FBLP→SS, batch mode (block + CMLL), zh UI. | Same base limits. | GPL-3.0 |
| AJGDsn/roux-trainers [57] | Web fork | Search snippet: adds smart cube via smartcube-web-bluetooth. | **UNVERIFIED**: repo 404 / needs auth on 2026-10-28. | (GPL-3.0 if it exists) |
| Cubegrass block trainer [17] | Web | Roux FB; SB "First square" / "Last pair"; levels. | Keyboard (Space/Enter), canvas; no source. | None stated |
| Jade's EOLRb trainer, LaSEr [18][19] | Web | EOLRb with mirrors, random AUF, orientations; LaSEr (M/U). | Keyboard; LaSEr v0.1 with a broken MC setting [1]; no source. | None stated |
| csTimer [CST] | Web | "3x3x3 Roux" scrambles (2nd Block, CMLL, LSE, LSE <M,U>) and "Roux-generator M,U" (`CST:src/lang/en-us.js#L238-L243`, `#L464`). Roux S1 and S1+S2 solvers (`CST:src/js/tools/roux1.js#L117`, `gsolver.js#L1243`). Smart cubes (GAN/Giiker/GoCube/MoYu/QiYi) with a "Multi-phase: Roux" 4-step split (fb/sb/cmll/l6e, 24 orientations) (`CST:src/js/lib/cubeutil.js#L470-L490`, `src/js/timer/giiker.js#L201-L236`). | No case-level EOLR/4c drills; no solution reveal for stages; desktop UI. | GPL-3.0 |
| SpeedCubeDB [15][16] | Web | CMLL 42 (alternatives, votes, movecount), SBLS 65, EO4A 9; generic practice timer. | No EOLR/LSE/4c; no Roux trainer; no stated licence. | No licence |
| Kian's guide [11][12][58][59] | Google Sites + Docs | CMLL doc, SB algs, EO and EO+ULUR doc, links to EOLR playlist and trainer. | Static docs. | No licence |
| Roux Reader / tutorial / resources [1][2] | Web book | Curated path, FAQ, drills, link hub. | Many sections are stubs [4][5][6]. | book: MIT [55]; others unstated |
| speedcube-trainer [SCT] | Web (Vite/React; Chrome or Edge, desktop or Android) | GAN smart cube; splits FB→SB→CMLL→EO→4b→4c; move-level review; CMLL drills with auto case detection. | GAN only via Web Bluetooth (MAC hassle on Android); **no licence = not reusable**. | All rights reserved |
| smart-roux-timer [SRT] | Web (2022) | Xiaomi/Giiker; Roux phase detection (x2y CN; CMLL needs all 8 corners solved). | Stale; Xiaomi only. | GPL-3.0 |
| Cube Trainer (cellonty) [37] | Flutter APK via GitHub releases (Play listing not found) | CMLL 42 + LSE 15 list-based alg trainer; per-case ao5/ao12. | No random-state Roux stages, no blocks, no smart cube. | MIT |
| Roux-trainer PWA (Gyuyui34) [38] | iOS PWA (ja) | CMLL drills, streaks/XP; FB/SB/EO drills coded but hidden. | No LSE trainer; licence not stated. | None stated |
| "Rubiks Cube Solver: Roux Method" [39] | Android | Static tutorial (steps, CMLL, LSE). v3.0.3, 2024-02-24 (APKPure). | Not a trainer; the Play listing returned 404. | Closed |
| CuberPal [40] | Android/iOS | "Roux CMLL starter set" and method overview; smart cube (GoCube / Rubik's Connected / GAN 356 i); phase analysis is described only for CFOP. | Subscription ($6.99/wk); CFOP-centric. | Closed |
| Cubeast [41] | Web | "All existing 3x3 Bluetooth cube models"; "works with all major speedsolving methods". Roux ao100s are shared from it [1]. | Roux split support **UNVERIFIED**. | Closed |
| Cubedex [42] | Web PWA | Alg drilling with smart cubes, offline. | Names OLL/PLL; CMLL unconfirmed. | MIT |
| SpeedcubeQuest Solve Analyzer [54] | Web | Pasted solve → Roux steps (blocks, CMLL, LSE), auto-detected. | Source/licence unknown. | Unknown |

**Features no tool does well on mobile:**
- A native, offline, touch-first set of Roux stage trainers with random-state scrambles and M/r-aware solutions. All the strong trainers are keyboard-driven web pages.
- Smart-cube auto-splits finer than FB/SB/CMLL/LSE, tied back to targeted drills (e.g. slow EOLR → the EOLR trainer).
- Recognition-speed training (CMLL any-angle, NMCLL, 4c) with timing.
- SRS across case sets.
- An inspection-planning trainer with CN comparison.
- Native BLE that avoids the Web Bluetooth MAC problem. iOS has no Web Bluetooth at all (SCT README#L17-L18).

## 4. Reusable open-source pieces

| Piece | Licence | Android notes |
|---|---|---|
| CMLL 42 algs + NMCLL→CMLL map + NMCLL display parity (`src/lib/Algs.tsx:28-72,163-326`) | GPL-3.0 (this repo) | Plain data; copy into JSON. Includes `ollcp_algs_raw` (`:120`). |
| EOLR / 4c / EO "data" | n/a | No tables needed: generated by the `eolr`/`lse`/`eodm` solvers. Reference docs (Kian EO+ULUR, EOLR docs, optimal EOLR sheet [1]) have no licence. |
| roux-trainers solver, analyzer, evaluators (`src/lib/*`) | GPL-3.0 | Port; see §5. `two_gram_v1.json` (9 KB) feeds `TwoGramEvaluator` (`src/lib/Evaluator.tsx:59-79`). |
| cs0x7f/min2phase (Java) [M2P] | GPL-3.0-or-later (`M2P:src/Search.java#L1-L16`) | Usable directly on Android: imports only `java.io.Data*`, `java.util.{Arrays,Random}`. "About 1MB" (`#L23`); full init "about 200ms" (`M2P:README.md#L61-L64`). `Tools.randomCube()` is public; `randomState(cp,co,ep,eo,gen)` is `protected` (`M2P:src/Tools.java#L173,#L268`), so subclass or fork it for masked stage states. Face moves only: handle M-slice centers yourself. |
| cubing/min2phase.js (current web dep, `package.json`) | MIT **or** GPL-3.0+ ([M2PJS LICENSE](https://github.com/cubing/min2phase.js/blob/a465b5e458fc1850299cab3c6254973c7f4c76ae/LICENSE.md)) | Not needed on Android if the Java version is used. |
| csTimer Roux scramblers and smart-cube drivers (`CST:src/js/scramble/*`, `src/js/hardware/{gancube,giikercube,gocube,moyucube,moyu32cube,qiyicube}.js`) | GPL-3.0 | Reference for porting. |
| tnoodle-lib [47] | GPL-3.0 (Java, Maven) | Official WCA scrambles; overkill for Roux subsets. TNoodle (app/server) is **AGPL-3.0** [46]: avoid. |
| cubing.js (alg parser, twisty, bluetooth) [45][44] | MPL-2.0 / GPL dual | JS only. Bluetooth: Giiker, GoCube, GAN, HEYKUBE, QiYi; **MoYu: no** [44]. |
| afedotov/gan-web-bluetooth v3.0.2 [GWB](https://github.com/afedotov/gan-web-bluetooth) | MIT | GAN Gen2–4, timers, RxJS. |
| poliva/smartcube-web-bluetooth [SWB] | MIT (Pau Oliva + Andy Fedotov) | GAN Gen1–4, Giiker/Mi, GoCube, MoYu AI 2023/MHC/WRM, QiYi (`SWB:README.md#L40-L48`); per-vendor protocol files (`src/smartcube/protocols/`); replay tests with captures. Best port source. |
| turnerglenn-cmyk/open-gan [OG] | GPL-3.0 (GAN code ported from MIT gan-web-bluetooth, `OG:NOTICE`) | Pure-Kotlin `core/` (GAN Gen2–4, MoYu AI 2023, timestamp fit) + Compose BLE app. "Early scaffold … not tested on real hardware" (`OG:README.md#L6-L7`). |
| Twisty Timer [43] | GPL-3.0 | Android timer and session patterns; uses TNoodle. |
| Smart-cube Roux step detection | — | csTimer: 4 steps, masks `CST:src/js/lib/cubeutil.js#L33-L35`, recon per step `CST:src/js/stats/recons.js#L99-L125` (GPL). roux-trainers `analyze_roux_solve` (GPL). SRT (GPL, x2y). SCT (6 steps, **unlicensed**). |

## 5. roux-trainers solver: what it does, size, port vs embed

**What it does.**
- **Search.** `Solver()` (`src/lib/Solver.tsx:30-184`) runs IDA*: iterative deepening (`:165-178`) with a bound from the max over the pruning tables (`:155`). It collects up to `capacity` distinct solutions and has a 3M-state safety cap (`:31`).
- **Move ordering.** A move-successor table enforces canonical ordering and treats `R`+`r` as `R`+`M` (`:53-91`). Each node's children are deduplicated by encoded state (`:93-122`); two-table keys use `BigInt` (`:102,:109`).
- **Movesets.** HTM plus `r`, `M` and sometimes `u`, `f`, `S` (`src/lib/Pruner.tsx:45-59`).
- **Ranking.** Solutions are ranked by evaluators. The default is HTM×100 plus per-move ergonomic costs (`src/lib/Evaluator.tsx:7-37`); there are also 2-gram, grip DP and movement evaluators.
- **min2phase** is used only to turn a random full state into a scramble. It asserts that centers are solved (`src/lib/Solver.tsx:254-276`).
- **Analysis** runs off the main thread in a comlink Web Worker (`src/lib/Hooks.tsx:42`).

**Pruning tables.**
- Each table is a BFS from the solved state(s) to `max_depth`. It is stored in a **dense `Uint8Array(size)`** indexed by a hand-written encoding (`src/lib/Pruner.tsx:63-119`).
- Unreached entries mean `max_depth + 1`. Tables are built at runtime on first use (`CachedPruner`, `src/lib/CachedSolver.tsx:9-22`). Nothing ships precomputed; there are no move tables and no symmetry reduction.
- Each move allocates fresh arrays (`src/lib/CubeLib.tsx:94-99`).

Measured with Node 22 (V8, x86 cloud container) on scratch copies of `CubeLib/Defs/Math/Pruner/Solver`. The repo itself was not modified.

| Table (`src/lib/Pruner.tsx`) | Index size (= bytes) | Depth | Moves | Entries reached | Build |
|---|---|---|---|---|---|
| `fbdr` `:215-257` (FB + DR, also 1 of 2 tables of `fbss`) | 24⁶ = 191,102,976 | 5 | 21 | 255,589 (0.13 %) | 2.3 s; process RSS 485 MB |
| `fbss` `:781-851` (fbdr + "liness" 24⁶) | 2 × 191 M | 5 | 21 | not measured | ≈ 382 MB dense |
| `fb` `:365-404` | 24⁵ = 7,962,624 | 5 | 21 | 124,653 (1.6 %) | 1.1 s |
| `sb` `:471-510` | 7,962,624 | 6 | 12 | 5,470 | 0.1 s |
| `lse` `:876-908` | 12⁶·8 = 23,887,872 | 7 | 6 | 5,581 | 0.2 s |
| `fsdr-front` `:735-770` | 24⁴ = 331,776 | 5 | 21 | 56,955 | 0.25 s |
| `ss-front` `:409-439` / `eolr` `:910-958` | 13,824 / 18,432 | 8 / 20 | 12 / 6 | 4,930 / 7,680 | < 0.05 s |

- **x2y FB analysis cost:** 8 orientations × 4 premoves × 10 solutions, as in `analyze_fb`. It took **64–118 ms** per scramble after a 0.94 s `fb` table build (same machine).
- **Code comments report:** "1000 fb solves take 1962 ms"; 1000 fbdr solves take 2,500 ms, or 33,774 ms with 25 solutions each; "100 [FBLP+SS] cases take 400ms" (`src/lib/Perf.test.tsx:39-44,58-59,93`).

**Port to Kotlin (recommended).**
- About 3.7k TS lines in total: Solver 279, Pruner 1013, CubeLib 1188, Analyzer 258, Evaluator 280, Algs 423, Defs 221, Math 66.
- No DOM dependencies, except `Storage`/`ColorScheme`, which use `window.localStorage` (`src/lib/CubeLib.tsx:1077-1090`). That code is UI only; drop it.
- `new Function` codegen exists (`:129-139`) but is used only in tests.
- **Memory fix.** Replace the dense tables with sparse ones:
  - Open-addressing `IntArray` keys + `ByteArray` values; fbdr has ~256k entries, about 2–3 MB.
  - Or a sorted `IntArray` with binary search.
  - Or better indexing: e.g. 4 distinct edges = 12·11·10·9·2⁴ = 190,080 instead of 24⁴. Even then fbdr stays at about 96 M entries, so it still needs sparse storage.
  - Use `Long` instead of `BigInt` for combined keys (191 M² < 2⁶³).
- **Further options:** ship tables as compressed assets or build them in a background `Dispatchers.Default` job at first launch; add flat `IntArray` move tables to remove the per-move allocation.
- **Verification:** port `src/lib/*.test.ts*` as golden tests. Cross-check solution lengths and sets against the TS version on fixed seeds.

**Embed TS in a JS engine (not recommended).**
- **WebView or `androidx.javascriptengine`:** out-of-process V8 sandbox, API 26+ *if* the WebView implementation supports it, one sandbox per app; results come back as strings, big inputs via `provideNamedData`.
  - Heap is capped via `setMaxHeapSizeBytes` (doc example: 100 MB) [48], which conflicts with the 191–382 MB dense tables unless they are rewritten anyway.
- **QuickJS:** in-process via quickjs-kt (Apache-2.0, KMP) [49] or Zipline (Apache-2.0; "does not offer a sandbox") [50]. It is an interpreter, so a 2–3 s V8 table build could become tens of seconds (**UNVERIFIED**, not benchmarked).
- **Hermes:** no local `eval` [51]. It would work, since `new Function` is test-only, but it is also an interpreter (**UNVERIFIED** speed).
- **Overall:** embedding avoids a rewrite but keeps a JS-to-Kotlin bridge, the bundler and the memory problem. The engine choice does not change the GPL outcome.

## 6. Licensing notes (not legal advice)

- **The whole APK becomes GPL-3.0.** Porting or bundling roux-trainers (GPL-3.0, `LICENSE`) or csTimer (GPL-3.0) code makes the app a derivative work. "You must license the entire work, as a whole, under this License" (`LICENSE:222`). This holds even if the JS is embedded unchanged.
- **Compatible licences:** MIT (smartcube-web-bluetooth, gan-web-bluetooth, min2phase.js-as-MIT), Apache-2.0 (quickjs-kt, Zipline: can go into GPLv3, one way only [52]), and MPL-2.0 (cubing.js, unless marked "Incompatible With Secondary Licenses" [53]; cubing.js is also GPL-dual [45]).
- **Avoid AGPL TNoodle** [46]. Use tnoodle-lib (GPL-3.0) [47] or min2phase.
- **APK on Google Play:** §6d allows distribution "from a designated place … provided you maintain clear directions next to the object code saying where to find the Corresponding Source" (`LICENSE:275-286`). So link the exact source tag in the Play description and in the app, keep it available as long as the APK is distributed, and include build scripts (and the generator of any precomputed table assets).
- **Interactive UI** must show "Appropriate Legal Notices" (`LICENSE:230`); add an About/Licenses screen. Modified files need "prominent notices stating that you modified it" with dates (`LICENSE:214-215`).
- **No further restrictions.** "You may not impose any further restrictions" (`LICENSE:463`), so no DRM or EULA terms that limit GPL rights.
- **Installation Information** (signing keys) is only required for "User Products" conveyed with the device (`LICENSE:297-328`), so a Play-only app doesn't owe its signing key.
- **Selling the app is allowed.** Charging for the APK is fine, but anyone can rebuild it from source.
- **Precedent:** Twisty Timer (GPL-3.0) ships on Google Play [43].
- **Proprietary SDKs** (e.g. Play Billing, Firebase) linked into a GPL app need a GPL-compatible arrangement or a linking exception. **UNVERIFIED**; prefer none.
- **Alg data:** SpeedCubeDB [16], Kian's Google Docs [12][58][59] and rouxcubing.com state no licence, so treat them as all-rights-reserved (short move sequences may not be copyrightable, compilations may be: **UNVERIFIED**).
  - Safe route: the GPL data in `src/lib/Algs.tsx` + solver-generated EOLR/4c/LP solutions + user-entered algs; ask authors before importing their sheets.
- **SCT** has no licence. Reimplement its ideas only; do not copy code.

## 7. Open questions / UNVERIFIED

- AJGDsn/roux-trainers smart-cube fork: search snippet only; the repo was 404 / required auth. Does it detect stages?
- Cubeast Roux step splits; Cubedex CMLL support; current Play status of the "Roux Method" tutorial app (listing 404).
- r/Roux wiki/FAQ, the Roux Discord docs, and speedsolving wiki pages (EOLR, NMCLL, Roux) were not readable here. Re-check them for practice advice.
- The Roux Reader has many stub sections: FB+DR, SB lookahead, CMLL prediction, 4c recognition comparison [4][5][6].
- Phone performance: no on-device numbers. Need a Kotlin benchmark on a mid-range ARM phone; also measure QuickJS vs V8 sandbox if embedding is still considered.
- androidx.javascriptengine default heap and whether JIT is enabled in the sandbox: not documented on the page read [48].
- `BluetoothDevice.getAddress()` permission and behaviour for each cube vendor's address type. The Android reference page was not readable here. OG reads the GAN MAC from manufacturer data instead.
- Exact GPL version: the repo ships the GPLv3 text, but sources carry no "or later" headers. Decide between GPL-3.0-only and GPL-3.0-or-later with the upstream author (§14).
- Whether onionhoney would relicense parts (e.g. the solver) to Apache/MIT, which would avoid copyleft for the app.
- Exact `edge_encode` semantics in the `lse` pruner: `idx > 0` skips edge 0 (`src/lib/Pruner.tsx:883`). Probably intended, since the 6th edge is implied, but verify while porting.

## Sources

[1]: https://resources.rouxers.com/
[2]: https://book.rouxers.com/en/faqs.html
[3]: https://book.rouxers.com/en/fb.html
[4]: https://book.rouxers.com/en/sb.html
[5]: https://book.rouxers.com/en/cmll.html
[6]: https://book.rouxers.com/en/lse.html
[7]: https://tutorial.rouxers.com/beginners/cmll.html
[8]: https://tutorial.rouxers.com/beginners/lse.html
[9]: https://tutorial.rouxers.com/intermediate/first-block.html
[10]: https://tutorial.rouxers.com/intermediate/second-block.html
[11]: https://sites.google.com/view/kianroux/eolr
[12]: https://sites.google.com/view/kianroux/cmll
[13]: https://www.cubinghistory.com/3x3/Methods/Roux
[15]: https://speedcubedb.com/a/3x3
[16]: https://speedcubedb.com/a/3x3/CMLL
[17]: http://cubegrass.appspot.com/block_trainer/
[18]: https://enbyne.tech/tools/EOLRb
[19]: https://enbyne.tech/tools/laser
[37]: https://github.com/cellonty/cube-trainer
[38]: https://github.com/Gyuyui34/Roux-trainer
[39]: https://apkpure.com/rubiks-cube-solver-roux-method/rubikscube.rubixcube.rouxmethod.tutorial.magiccube
[40]: https://www.cuberpal.com/
[41]: https://www.cubeast.com/
[42]: https://github.com/poliva/cubedex
[43]: https://github.com/aricneto/TwistyTimer
[44]: https://js.cubing.net/cubing/bluetooth/
[45]: https://github.com/cubing/cubing.js
[46]: https://github.com/thewca/tnoodle
[47]: https://github.com/thewca/tnoodle-lib
[48]: https://developer.android.com/develop/ui/views/layout/webapps/jsengine
[49]: https://github.com/dokar3/quickjs-kt
[50]: https://github.com/cashapp/zipline
[51]: https://github.com/facebook/hermes/blob/main/doc/Features.md
[52]: https://www.apache.org/licenses/GPL-compatibility.html
[53]: https://www.mozilla.org/en-US/MPL/2.0/FAQ/
[54]: https://speedcube.quest/solve-analyzer
[55]: https://github.com/rouxers
[56]: https://github.com/onionhoney/roux-trainers
[57]: https://github.com/AJGDsn/roux-trainers
[58]: https://sites.google.com/view/kianroux/second-block
[59]: https://sites.google.com/view/kianroux/eo
