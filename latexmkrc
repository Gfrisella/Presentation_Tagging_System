# The theme needs LuaLaTeX (fontspec, Source Sans Pro, Unicode text).
$pdf_mode = 4;   # LuaLaTeX
$lualatex = 'lualatex -interaction=nonstopmode -file-line-error %O %S';
# Overleaf runs "latexmk -pdf" (pdflatex) unless Menu -> Compiler is LuaLaTeX: send that call to lualatex as well.
$pdflatex = 'lualatex -interaction=nonstopmode -file-line-error %O %S';
