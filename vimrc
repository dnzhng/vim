" Make tabs two spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Mark a line at column 80
if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

"Set color scheme
colorscheme base16-ocean

" Change iTerm profile from Default to Ocean when going in  and out of VIM
if !has('gui_running')
  function! s:change_iterm2_profile()
    call system('echo -e "\033]50;SetProfile=Ocean\a" > /dev/tty')
  endfunction
  autocmd vimenter,colorscheme * call s:change_iterm2_profile()
  autocmd vimleave * call system('echo -e "\033]50;SetProfile=Default\a" > /dev/tty')
endif
