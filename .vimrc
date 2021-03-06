set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Themes
Plugin 'altercation/vim-colors-solarized'
let g:solarized_italic = 0

Plugin 'tomasr/molokai'

Plugin 'chriskempson/vim-tomorrow-theme'

" airline
Plugin 'bling/vim-airline'
set laststatus=2
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

Bundle 'vim-ruby/vim-ruby'

Bundle 'godlygeek/tabular'

Bundle 'YankRing.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set t_Co=256
colorscheme Tomorrow-Night
set number
syntax on
set wildmenu
set cursorline
set shiftwidth=4
set expandtab
set autoindent
set incsearch

"gui settings
if has("gui_running")
    set guifont=iosevka\ 12
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
endif

"no bells
set noerrorbells
set visualbell
set t_vb=
au GuiEnter * set t_vb=

inoremap jj <esc>

" language specific settings

" javascript 
autocmd FileType javascript setlocal shiftwidth=2

" html
autocmd FileType html setlocal shiftwidth=2

" ruby
autocmd FileType ruby setlocal shiftwidth=2
