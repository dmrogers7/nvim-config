vim.cmd([[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
    autocmd FocusLost * silent! wa
  augroup end

  " augroup _colorscheme
  "   autocmd BufEnter *      colorscheme nightfox
  "   autocmd BufEnter *.html colorscheme tomorrow
  "   autocmd BufEnter *.xml  colorscheme tomorrow
  "   autocmd BufEnter *.xsl  colorscheme tomorrow
  " augroup end
  "
  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd =
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

  augroup _format
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd BufWritePre * lua vim.lsp.buf.format()
  augroup end

  augroup _gopls
    autocmd!
    autocmd BufWritePre *.go lua OrgImports(1000)
  augroup end

  augroup _files
    autocmd!
    autocmd BufNewFile,BufRead *Jenkinsfile* set filetype=groovy
    autocmd BufNewFile,BufRead Spinnakerfile set filetype=json
    autocmd BufNewFile,BufRead *.cql set filetype=sql
    autocmd BufNewFile,BufRead *.tftpl set filetype=go
  augroup end
]])
