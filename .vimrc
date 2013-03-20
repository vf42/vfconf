"
" @author VF <vadim.fedorov@gmail.com>
"

"
" Basic settings.
"
set nocompatible
set novb
set history=1000
set backspace=indent,eol,start
set nobackup
set nowritebackup
set noswapfile
filetype plugin indent on
set encoding=utf-8
set ffs=unix,dos
" Info in footer.
set showcmd
set ruler
set showmode
" Text look & feel.
set nu
set cursorline
set scrolloff=4
set wrap
set linebreak
" Tab & indentation.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
" Search settings.
set hlsearch
set incsearch
set wrapscan
set ignorecase
set smartcase


"
" Syntax highlighting.
"
syntax on
colorscheme darkburn
set background=dark
if has("gui_running")
    set listchars=tab:»·,trail:·,extends:>,precedes:<
else
    set listchars=tab:>.,trail:.,extends:>,precedes:<
endif
set list

"
" Gvim-specific: font & look.
"
if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guioptions-=l
    set guioptions-=L
    if has("gui_gtk2")
        set guifont=DejaVu\ Sans\ Mono\ 10
    elseif has("gui_win32")
        set guifont=Consolas:h10:cANSI
    endif
endif

"
" Key mapping.
"
" Turn off arrows :)
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>

