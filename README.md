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
