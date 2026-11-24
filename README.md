# Backgrounds and tagging: Beamer slides

Same design as the HTML deck (UZH blue, Source Sans Pro, blue footer band).

- Compile: `latexmk main.tex` (LuaLaTeX via `latexmkrc`). On Overleaf: Menu → Compiler → LuaLaTeX.
- `main.tex`: cover and the list of chapters; `sections/NN_*.tex`: one `btframe` per slide.
- `beamerthemebt.sty`: the design (colours, footer, title block, tables, formula and flow boxes).
- `figs/`: sketches as PDF (sources in `figs/svg/`, edit with Inkscape), plots and images as PNG / JPG.

A slide: `\begin{btframe}{eyebrow}{title} ... \slidenote{grey note} \end{btframe}`.
Sizes are those of the 1600 × 900 px HTML stage on the 16 × 9 cm frame (1 px = 0.2845 pt): body text 4.55 pt, bullets 6.1 pt.

## Log
- 19 Nov 2026: section 6 now "Optimisation and conclusion": the AlphaEvolve slide is replaced by two slides on the
  genetic-algorithm run ga_20261119_115533 (method + convergence plot `figs/s35_ga_convergence.png`, result table
  ga7c3 / ga8c8 vs the R2 3.4 m seed); conclusion bullet added; outline lines updated in all sections; date 19 Nov.
  Old section kept as `sections/05_next_steps.tex.bak_20261119`. 42 pages.
- 19 Nov 2026: two back-up slides after "MS7 K_L" (pages 42-43): K_L momentum at the decay point and charged products at
  SST1 (figs/s40b_*), particle species at the decay point and at SST1 (figs/s40c_*), PASS / FAIL the full selection;
  panels cropped from veto results_rerun/kl_distributions. Old back-up kept as sections/06_backup.tex.bak_20261119. 44 pages.
- 19 Nov 2026: fin designs Z2 / Z3 removed; Z2 and Z3 are now the optimised designs of run ga_20261119_115533:
  Z2 = ga7c3 (SBT rings 2, 5-9, 225.3 drachmas, 21 171 channels, signal lost 2.71 %), Z3 = ga8c8 (rings 2, 3, 5-9,
  244.7 drachmas, 22 428 channels, 3.01 %). New ring sketches figs/s30_z2_opt.pdf, s31_z3_opt.pdf (old fin sketches
  s30_sk1 / s31_sk1 kept, unused). Section-6 slides and the convergence plot use the names Z2 / Z3; back-up tagging-rule
  table: Z2 / Z3 use the SBT rules and the V0 rule, MSMS only R3. Design files: veto results_rerun/evolve/
  Z2_opt_ga7c3.json, Z3_opt_ga8c8.json. Old section kept as sections/04_background_tagging.tex.bak_20261119. 44 pages.
- 19 Nov 2026: TikZ design sketch `sketch_design.tex` (\designsketch[height]{rings}{strips 0/1}{SBT label}), same layout and
  colours as the SVG sketches, SBT drawn as its 10 numbered rings (empty rings grey). main.tex loads it (+ tikz calc);
  test slide at the end of the back-up (page 45): R3 SVG vs TikZ, plus a Z2 example. main.tex.bak_20261119 = before. 45 pages.
- 19 Nov 2026: all design sketches are now TikZ (\designsketch from sketch_design.tex): overview R1-R3 (page 20, cost
  labels via \skubtlabel / \skmsmslabel), R1, R2, R3, Z2, Z3 slides; SBT drawn as 10 numbered rings (Z2: 2, 5-9; Z3: 2, 3,
  5-9, empty rings grey); MSMS labels on two lines. Test slide removed. SVG/PDF sketches s19_sk1-3, s26-s28_sk1, s30/s31
  kept in figs/ but unused. 44 pages.
- 19 Nov 2026: back-up pages 44-46 from veto results_rerun/kl_distributions/seen_by: V0-rule aperture (angle of p_vis
  vs p, miss/r at the tile plane), which detector (UBT / SBT / MS7 strips) sees the parent of a selected MS7 K_L (own
  hits only, R3), and the dependence on the interaction z in MS7. Page 42: median beta of the K_L added. 47 pages.
- 19 Nov 2026: now a git repo, pushed to github.com/Gfrisella/Presentation_Tagging_System (main, commit 79c7860);
  main.pdf is tracked, the *.bak_* backups and LaTeX build files are not.
- 19 Nov 2026: Overleaf compiled with pdflatex (fontspec fatal error). latexmkrc now also maps $pdflatex to lualatex, so
  "latexmk -pdf" (Overleaf's default) runs LuaLaTeX; tested locally, 47 pages.
- 19 Nov 2026: Overleaf could not find SourceSansPro-*.otf (its TeX Live has Source Sans 3). The four font files are now
  in fonts/ (OFL, see fonts/README.md) and beamerthemebt.sty loads them with Path=fonts/; italic name fixed (*-RegularIt).
- 19 Nov 2026: back-up page 41 "Muon flux at the target: Nov-4 vs 2018" (pz / pT, physical and with FairShip's 2018
  weighting emulated; veto results_rerun/nov4_vs_2018). Not committed yet (waiting for the Overleaf push). 48 pages.
- 19 Nov 2026: back-up page 49 "All rules run on every candidate, in parallel: tagged = OR" (TikZ diagram + which rule
  finds which background). Not committed yet (waiting for the Overleaf push). 49 pages.

## 19 Nov 2026 (evening)
- Slide 16: new "μ crossing" column (muons crossing each region per 15 y, each counted once; Nov-4 DIS parents, R2 geometry:
  helium 8.4e11, walls 8.4e11, air around 8.5e11, air upstream 3.5e11, UBT planes 5.8e11) and, in the MS7 table, a
  "muons in the iron" row with μ crossing 6.9e15 and interactions 1.4e13 (shield_dis summary, Nov-4). Sketches 38→30 pt, note added.
  Flux script/numbers: veto/results_rerun/nov4_flow/flux_regions.{py,json}.
- Slide 17: total row (interactions 2.0e7, ≥2 tracks 3.3e5, pair cuts 2140, IP<10 cm 17 ± 7, IP<2.5 m 2050 ± 170).
- Back-up p41–42 (new): MS7 K_L production — Geant4 vs Pythia vs SLAC γp data (v0_vs_W), and low-W strangeness vs
  SAPHIR/CLAS/ABBHHM/SLAC (v0_lowW). Figures copied from veto docs/figures/v0_production.
- 19 Nov 2026: slide 16 μ crossing column also shows the per-spill count in parentheses.
- 19 Nov 2026: Z2 / Z3 slides moved into section 6, after the GA method slide (outline updated).
- 19 Nov 2026: back-up p41 Q² / W of the interactions making the MS7 K_L (report fig:int:q2w); seen-by / aperture / z plots re-coloured PASS blue, FAIL orange as the momentum / species plots.
- 19 Nov 2026: back-up p46 search radius at the tile plane (track rule p = 10–90 GeV, V0 rule p_vis = 2–20 GeV, vertex mid-vessel); veto results_rerun/aperture_radii.
- 19 Nov 2026: **no-MSMS version** `main_nomsms.tex` + `sections_nomsms/` (copy of the chapters, 50 pages): no R3, no MSMS
  strips (tagging chain 3/3 and the R3 slide removed, MS7 rows of the chain slides removed, MSMS column / row out of the
  technology tables, R3 column out of the summary, outlines / cover / conclusion / GA genes adjusted). Back-up K_L
  seen-by and z plots redone for UBT + SBT only (veto results_rerun/kl_distributions/seen_by/plot_seen_by_nomsms.py:
  UBT 70 / 74, SBT 28 / 74, OR of the R2 rules 74 / 74). The V0-fix study slide keeps its numbers (made on R2 + strips),
  said in its note. Build: `latexmk main_nomsms.tex` (Overleaf: set main_nomsms.tex as the main document).
- 20 Nov 2026 (night): tagging-rules table and the search-radius slide moved into section 5, after the V0-rule slide
  (both decks). R1 / R2 / R3 tables: "without V0 rule" / "with V0 rule" columns from the optimiser chain (veto
  results_rerun/reco/r1_v0rule, r23_nov0rule, tiles_x34; R3 with V0 from the GA seed evaluation). Z2 / Z3 tables: same
  rows as R1 / R2, 90 % CL where nothing is left, n.e. where the design was not evaluated (rock, product pairs, ν MS7 / SBT,
  partial IP).
- 20 Nov 2026: slide 19 combinatorial table: single-track MS7 / vessel μ and ν interactions × μ, interaction × interaction, rock marked 'model under review' (veto results_rerun/combi_single); back-up cut-flow slide (p42).
- 20 Nov 2026: R1 'μ in the vessel' = 86 ± 22 in both columns (the V0 run's 96 ± 21 is random-hit noise; footnote).

## 2026-11-20 afternoon: full-chain results for the new columns
- Filled from results_rerun/full_chain_extra + reco/reco_x_* (Slurm 2149071, 2156964, 2157043, 2157083), both decks:
  partial-IP signal loss R1+V0 7.06, R2 noV0 5.19, R3 noV0 6.11, Z2 4.37, Z3 4.75 %
  (full-IP column reproduces the optimiser numbers exactly; Z from the *_full design files);
  ν in MS7 (v0rule_study ms7_nu2026/full, same definition as R2's 0.70): R1+V0 0.86, R2/R3 noV0 1.73, Z2 0.84, Z3 1.00.
- Still n.e.: rock x μ (not rerun, model under review); interaction product x μ and SBT-material ν for the new columns:
  dis_combinatorial gives a μ inefficiency 0.48-0.50 for R2/R3 noV0, Z2, Z3 (17 Nov R2 run: 0.062, and the optimiser's
  single-SST1 tagging is 90-95 %), and sbt_eval's veto fields differ from the 17 Nov reference -> under check.
- V0 rule p_vis < 20 GeV stated on the R2 / Z2 bullets and in the R1-R3 / Z2-Z3 notes.
- 20 Nov 2026: back-up slide "MS7 K_L: Q² and W of the muon interaction that made it, PASS vs FAIL" after the species slide (main p49, no-MSMS p45): 2D Q²–W FAIL | PASS (figs/s40d_kl_q2_vs_w.{pdf,png}) + table PASS / FAIL / all MS7 interactions; from veto results_rerun/kl_distributions/q2w. Backups sections*/06_backup.tex.bak_20261120_q2w. main 53, no-MSMS 49 pages. Not committed / pushed.
- 20 Nov 2026: back-up "SBT firing" (sections/07_backup_sbt_firing.tex, \input after the back-up in main and main_nomsms):
  how the SBT walls fire for nu DIS, mu DIS and mu x mu (R2, own deposits only): method, rate per ring, wall maps,
  selected-candidate table, shapes; figs/s41_sbt_firing_*.png from veto results_rerun/sbt_firing. DRAFT: mu x mu numbers
  in, nu / mu DIS cells marked "tbd" (runs in progress).
- 20 Nov 2026 (later): SBT-firing back-up filled with the final numbers (rate per ring: MS7 mu DIS products +0.38 MHz = +18 %
  of the muon map; selected-candidate table per source; shapes) and two mu x mu slides (top view x-z and +x / -x walls with
  the SBT entry points of the pair muons: mu+ -> -x wall, mu- -> +x wall). DIS seen by SBT / UBT slides written but
  \iffalse'd until the hit runs finish. main 60 pages, main_nomsms 56.
- 20 Nov 2026 (evening): SBT-firing DIS slides switched on (pages 61-62): selected nu / mu DIS seen by SBT, UBT, both or
  neither (own hits; UBT = geometric crossing incl. the parent muon) and their hit maps (side walls, UBT straws / tiles).
  main 62 pages, main_nomsms 58.
- 20 Nov evening: rock x mu rows -> "model under review" in every column (R1-R3, Z2/Z3, summary; both decks): the rock library
  gives ~28x more concrete-made tracks at SST1 than FairShip (veto docs/investigations_2026-11-20/cavern_rock). The other n.e.
  cells stay until the own-hits rerun (Slurm 2164033); then all R / Z tables are rebuilt from it.
- 23 Nov 2026: n.e. cells filled where results exist: SBT-material ν in R2 / R3 (both columns) and Z2 / Z3 = < 6×10⁻³ (90 % CL)
  (own-hits reruns: 0 of 311 selected MC left; veto results_rerun/ownhits_20nov, full_chain_extra/sbt_nu_*_nov0_full);
  the old R2 / R3 0.05 replaced. Z2 / Z3 interaction product × μ 0.014 ± 0.002 / 0.010 ± 0.001 (ownhits_20nov dis_comb, old
  single-good-track definition). Pending (Slurm 2203236, veto results_rerun/sst1one_23nov): every interaction × μ number
  (slide 19, R1-R3 / Z2-Z3 rows) redone with ONE charged track at SST1 per interaction; 3 R-table cells still n.e. until then.
- 23 Nov 2026: back-up "SST1 multiplicity" (sections/08_backup_sst1_multiplicity.tex, both decks, after the SBT-firing back-up):
  charged tracks at SST1 per interaction (incoming muon excluded), μ and ν interactions per location: MS7, cavern rock,
  air upstream, UBT planes, vessel wall / air / helium, SBT Al inner / LS / ribs (frame) / Al outer; plus the "1 good, alone"
  and "≥ 2 good" rates. From veto results_rerun/sst1one_23nov/multiplicity.json. main 64 pages, main_nomsms 60.
- 23 Nov 2026: back-up "FairShip cross-check" (sections/09_backup_fairship_crosscheck.tex, both decks, last page): FairShip
  TRY_2026_EM_noSBT_full (full Geant4, no SBT) vs our chain, setting + good-track definition (p > 1 GeV, all 4 straw stations
  + timing detector), table MS7 (μ flux 1.04, π at SST1 1.05, K_L-decay tracks 0.7) and cavern (p > 1: 1.7, good: 1.6 ± 0.4,
  good + real TD hit: 2.7) ours / FairShip at 4e13; plot figs/s45_fairship_cavern_p.pdf (cavern p spectrum at SST1, all and good).
  Source: FairShip_TRY2026_EM_SST1/comparison_noSBT (scripts/slide_plot.py, results/slide_numbers.json). main 65 pages, main_nomsms 61.
- 23 Nov 2026 (afternoon): last n.e. cells filled from the one-track-at-SST1 reruns (veto results_rerun/sst1one_23nov, MS7 part;
  vessel μ part < 1e-4): R1 product × μ 0.0030 (706 MC) both columns (was 0.019, old definition), summary row too; R2 / R3
  without V0 rule 0 MC -> < 1.1e-3 (90 % CL, limit of the larger 20 Nov sample). No n.e. left in either deck.
- 23 Nov 2026 (later): FairShip back-up table now shows GOOD-track rates at SST1 in kHz, FairShip vs ours, per MS7 species (π, p, K, e,
  K_L-decay) and cavern; TD hit row labelled as FairShip's own G4 hit. The previous "ours" MS7 values were ×0.8 too low
  (generators_natural.md is already per 4e13). Source: comparison_noSBT/results/ms7_good_tracks.json.
- 23 Nov 2026 (15 h): R2 / R3 product × μ without V0 rule from their own runs: < 1.2e-3 / < 1.3e-3 (90 % CL; vessel μ part ~1e-7).
- 23 Nov 2026 (evening): pulled the Overleaf removals (V0-rule-fixes slide in 06, two SBT-firing slides in 07). New back-up
  "Z2 SBT rings" (sections/10_backup_z2_rings.tex, figs/s46_z2_design_top.pdf from veto results_rerun/sbt_ls_stat/
  plot_z2_design.py): why the GA keeps ring 2 and drops 0, 1, 4 (ring 0: one heavy SBT-LS MC event; x11 LS statistics
  running, Slurm 2205690). Back-up divider rewritten as the list of all back-up chapters in page order (8 in main, 7 in
  nomsms). main 63 pages, main_nomsms 60.
- 23 Nov 2026 (night): slide 19 (combinatorial, before tagging): cavern-rock × μ row keeps 634 / 211 / 626 (old SST1 + TD), note † with the 4-station + TD values 213 / 84 / 208 (400k muons, preliminary; veto results_rerun/rock_vertices).
- 24 Nov 2026 (night, GPU session): synced with Overleaf (a8c42bd: `sections/` = deck without MSMS compiled by main.tex,
  `sections_withmsms/` + main_withmsms.tex = R3 version, fully commented out). On top, in both folders:
  - V0 rule = kinematic limit r = 5 cm + p*_max / p_vis · Δz, p*_max = (m_K² − (m_π + m_e)²) / (2 m_K) = 0.229 GeV (K_e3), no
    25 mrad floor: aperture slide (formula, new plots figs/s40d_*_kin.png), search-radius slide (figs/aperture_radii_kin.pdf),
    tagging-chain formulas, Z2 bullet. Source veto results_rerun/v0rule_fit (README, plot_angle_kin.py, plot_radii_kin.py).
  - Page 13 (track cuts): cut 2 = all 4 straw stations + TD; good tracks 6.34 kHz (6.05 straight + 0.28 bounced), was 8.5.
  - Rock × μ rows ("model under review" → numbers, 4-station good track, kinematic V0 rule, all designs): R1 0.20 ± 0.02,
    R2 / R3 < 0.028 (90 % CL), Z2 (1.4 ± 0.7)e-4, Z3 (3.9 ± 1.5)e-4; conclusion "rock × μ (84)"; with-MSMS slide 19 row 220 / 84 / 216.
    Source veto results_rerun/reco/rock_comb_*_4st.json. The other numbers are still the old SST1 + TD definition (production P3/P4).
  - Back-ups 11 / 12 (cavern-rock × μ pairs / vertices, deck session 23 Nov) added to sections/ and main.tex (active),
    sections_withmsms/ + main_withmsms.tex (commented like the rest).
- 24 Nov 2026 (morning): footnotes removed from the main deck except slide 10 (hits and digitisation) and the article
  citations (Cuda Muons arXiv:2512.10520; K_L production data: Abe 1984 / NOMAD 2002, SAPHIR / CLAS / ABBHHM / SLAC).
  Back-up reorganised in 5 chapters (divider updated): 1 simulation inputs, 2 cavern-rock × μ pairs (the 11 / 12 slides,
  now inside sections/06_backup.tex), 3 MS7 K_L production, 4 MS7 K_L in the vessel, 5 tagging rules (V0-rule history,
  OR of the rules). main.tex 51 pages. sections_withmsms unchanged by this step (main_withmsms.tex is commented out).
- 24 Nov 2026: slide 22 (tagging chain, tracks): each parameter of the track window defined (r0, σθ, θms, p, Δz, σt); plot smaller.
- 24 Nov 2026: new slide 9 "Why our own chain: speed buys statistics" (after the inelastic-interaction slide): FairShip vs Cuda Muons speed and two same-task times (figs/s06b_framework_speed.pdf from veto results_rerun/framework_speed/plot_speed.py; FairShip CPU times from 300 noSBT_full job logs on EOS) + four numbers (3 220 spills, 2e7 MS7 interactions in 14 min, 2.2e9 pairs in 6 min, 72 s per design).
