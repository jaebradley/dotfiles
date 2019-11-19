" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" shows $ at end of each line and shows ^I instead of tabs
set list

" show line numbers
set number

" show relative line numbers
set relativenumber 

" remap jk or kj to escape
cnoremap kj <C-C>
cnoremap jk <C-C>

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" default Vim register to * register
set clipboard=unnamed

" Set leader to space
let mapleader =" "

" Set suffixes to search when using gf
set suffixesadd=".java,.py,.json,.js,.jsx,.rb,.md"

" PLUGINS

" NERDTree
" https://github.com/scrooloose/nerdtree
autocmd vimenter * NERDTree

" Allow nerdtree to show hidden files
" https://stackoverflow.com/a/5057406/5225575
let NERDTreeShowHidden=1

" ale
" https://github.com/dense-analysis/ale#usage
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" ctrlp
" https://ctrlpvim.github.com/
set runtimepath^=~/.vim/pack/plugins/start/ctrlp.vim

" ack.vim
" https://github.com/mileszs/ack.vim
" Use ag instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

