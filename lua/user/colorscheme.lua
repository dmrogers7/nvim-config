vim.cmd([[
try
  let g:material_style = "deep ocean"
  colorscheme kanagawa
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
