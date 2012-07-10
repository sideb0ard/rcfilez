syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set number
set nocompatible
set autoindent
set smartindent
set showmatch
set spell spelllang=en_us
setlocal spell spelllang=en_us

" Below spelling stuff taken from http://blog.bodhizazen.net/linux/command-line-spell-checking/

" Toggle spelling with the F7 key
nn <F7> :setlocal spell! spelllang=en_us<CR>
imap <F7> <C-o>:setlocal spell! spelllang=en_us<CR>

" Spelling
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" where it should get the dictionary files
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'