" Adding packages using vim 8 package manager:
" git submodule init
" git submodule add <PLUGIN_GIT_REPO> pack/plugins/<start|opt>/<plugin-name>

" Updating packages
" git submodule update --remote --merge

" Set leader commands
let mapleader = "\<Space>"
nnoremap <silent> <Leader>p :call fzf#run({
  \'down': '20%', 'sink': 'vertical botright split' })<CR>
nnoremap <silent> <Leader>w :q<CR>
nnoremap <silent> <Leader>s :w<CR>
nnoremap <silent> <Leader>l <C-W>l
nnoremap <silent> <Leader>h <C-W>h

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

" GitGutter settings
highlight clear SignColumn
highlight GitGutterAdd ctermbg=2
highlight GitGutterChange ctermbg=3
highlight GitGutterDelete ctermbg=1
highlight GitGutterChangeDelete ctermbg=3

" Switch iTerm2 profile when opening vim
if !has('gui_running')
  function! s:change_iterm2_profile(profile)
    if exists('$TMUX')
      " Wrap escape sequence for tmux passthrough
      let l:seq = "\<Esc>Ptmux;\<Esc>\<Esc>]50;SetProfile=" . a:profile . "\x07\<Esc>\\"
    else
      let l:seq = "\<Esc>]50;SetProfile=" . a:profile . "\x07"
    endif
    call writefile([l:seq], '/dev/tty', 'b')
  endfunction
  autocmd vimenter,colorscheme * call s:change_iterm2_profile('Ocean')
  autocmd vimleave * call s:change_iterm2_profile('Default')
endif

