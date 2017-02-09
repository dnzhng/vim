" Make tabs two spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Mark a line at column 80
if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

colorscheme base16-ocean
