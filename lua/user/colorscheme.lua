vim.cmd([[
try
  let g:material_style = "deep ocean"
  colorscheme material
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
