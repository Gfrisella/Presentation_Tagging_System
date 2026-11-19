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
