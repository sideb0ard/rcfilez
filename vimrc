set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'nvie/vim-flake8'
Bundle 'rhysd/vim-clang-format'
Bundle 'vim-syntastic/syntastic'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required

filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set number
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set showmatch
set ruler
syntax on

set wildmenu
set wildmode=longest:full,full

set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd,*.o,*.wav,*.aif,*.aiff

set nocursorline " don't highlight current line
set cursorcolumn
match ErrorMsg '\%>120v.\+'
match ErrorMsg '\s\+$'

" keyboard shortcuts
inoremap jj <ESC>

" highlight search
set hlsearch

" gui settings
if (&t_Co == 256 || has('gui_running'))
  if ($TERM_PROGRAM == 'iTerm.app')
    colorscheme solarized
  else
    colorscheme desert
  endif
endif

" found here -
" http://stackoverflow.com/questions/9714302/configuration-setting-for-vim-pep-8-plugin-to-ignore-errors-and-warnings
let g:syntastic_python_flake8_args="--ignore=E111"

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'
let g:syntastic_cpp_include_dirs = ['/Users/sideboard/Code/link/include', '.']

let g:syntastic_c_checkers = ['gcc', 'make', 'clang++']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let g:syntastic_c_include_dirs = ['/usr/local/include', '/Users/sideboard/NewCodez/SBShell/include', '/Users/sideboard/NewCodez/SBShell/include/stack', ',']
let g:syntastic_java_checker = 'javac'
let g:syntastic_java_javac_classpath = './lib/*.jar:.'

let g:syntastic_python_python_exec = '/Users/sideboard/homebrew/bin/python3'

let java_allow_cpp_keywords = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Unused - gonna try rhysd/vim-clang-format instead
"map <C-K> :pyf /Users/sideboard/homebrew/Cellar/clang-format/2016-12-09/share/clang/clang-format.py
"imap <C-K> <c-o>:pyf /Users/sideboard/homebrew/Cellar/clang-format/2016-12-09/share/clang/clang-format.py

set runtimepath^=~/.vim/plugin/cscope_maps.vim

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  " let g:ackprg = 'ag --column'
endif

"set statusline=%t       "tail of the filename
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file
"hi StatusLine ctermbg=green ctermfg=white

au BufNewFile,BufRead SCons* set filetype=scons
au BufNewFile,BufRead Scons* set filetype=scons
au BufNewFile,BufRead scons* set filetype=scons

let mapleader = ","
nmap <leader>d :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

"Youcompleteme fix
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_confirm_extra_conf=0
let g:ycm_register_as_syntastic_checker=0
let g:ycm_show_diagnostics_ui = 0
