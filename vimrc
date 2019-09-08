" Show line numbers
set number

" Change ctrl-W to ctrl-E for switching vim panes, since ctrl-W closes the tab!
nnoremap <C-e> <C-w>

syntax on
filetype indent plugin on

" color lines grey, from
" https://stackoverflow.com/questions/237289/vim-configure-line-number-coloring
highlight LineNr ctermfg=grey

" set tabs to 4 spaces, from
" https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
