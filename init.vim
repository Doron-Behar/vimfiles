set nocompatible
set modeline
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set encoding=utf8
set tenc=utf8

" highlight search during typing:
set nohlsearch
" incremental search
set incsearch
" Smart case: case-sensitive when uppercase, otherwise - not.
set smartcase

filetype plugin on
filetype indent on
set autoread
syntax enable
colorscheme koehler
set background=dark
" Always display the tabline, even if there is only one tab:
set showtabline=2
set list listchars=tab:›\ ,trail:-,extends:»,precedes:«,eol:¬
set showbreak=ˆ
" Always display the statusline in all windows:
set laststatus=2
" Hide the default mode text (e.g. -- INSERT -- below the statusline):
set noshowmode

" enable mouse actions
set mouse=a
" make vim's * register compatible with system's clipboard:
set clipboard=unnamedplus

" tab's and indentation preferences:
set shiftwidth=4
" tabsize:
set tabstop=4
set autoindent
set smartindent
set preserveindent
set noexpandtab
" no word wrap:
set nowrap
if &diff
	set diffopt+=iwhite
endif
set foldenable
set foldmethod=indent
set foldcolumn=2

set backupdir=~/.local/share/nvim/tmp//
set directory=~/.local/share/nvim/tmp//
set viewdir=~/.local/share/nvim/view//

" Make any buffer able to be hidden even if not saved
set hidden

" restore-view setting:
set viewoptions=folds,cursor
" mks settings:
set sessionoptions=folds,help,resize,tabpages,winpos,winsize

" make the return to normal mode with escape not take too long and confuse me:
set timeoutlen=1000
set ttimeoutlen=0
set t_Co=256

" Easier to launch new splits:
set splitbelow
set splitright

" Make plugin installations easy and use github-plugins from bundle:
runtime bundle/pathogen/autoload/pathogen.vim
let g:pathogen_disabled = ['']
execute pathogen#infect()
" make reading help documents for Plugins easier:
Helptags
