" Adding packages using vim 8 package manager:
" git submodule init
" git submodule add <PLUGIN_GIT_REPO> pack/plugins/<start|opt>/<plugin-name>

" Updating packages
" git submodule update --remote --merge

" Show commands
set showcmd

"Set backspace prefs
set backspace=2

" Make tabs two spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Syntax Highlighting
syntax on

"Set color scheme
colorscheme base16-ocean

" Mark a line at column 80
if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=16
endif

" Vim-Airline settings
set laststatus=2 
let g:airline_theme='luna'

" Set Line numbers
set number
highlight LineNr ctermbg=16

" Switch iTerm2 profile when opening vim
if !has('gui_running')
  function! s:change_iterm2_profile()
    call system('echo -e "\033]50;SetProfile=Ocean\a" > /dev/tty')
  endfunction
  autocmd vimenter,colorscheme * call s:change_iterm2_profile()
  autocmd vimleave * call system('echo -e "\033]50;SetProfile=Default\a" > /dev/tty')
endif

