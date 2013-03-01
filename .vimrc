" Turn off arrows
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>

" Some simple settings.
set showcmd
set ruler
set showmode
set nocompatible
set nu
syntax on
set vb
set cursorline
set scrolloff=3
set history=1000
set backspace=indent,eol,start
set wrap
set lbr
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hlsearch
set incsearch
set wrapscan
set ignorecase
set smartcase
set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile
filetype plugin indent on
set encoding=utf-8
set ffs=unix,dos

colorscheme darkburn
set background=dark

" Gui-specific
if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    if has("gui_gtk2")
        set guifont=DejaVu\ Sans\ Mono\ 10
    elseif has("gui_win32")
        set guifont=Consolas:h10:cANSI
    endif
endif

