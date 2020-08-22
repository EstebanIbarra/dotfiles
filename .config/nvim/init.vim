"				===>    CONFIG FILE FOR EIR'S NEOVIM    <===
"  _______ _____ ______  
" (_______|_____|_____ \ 
"  _____     _   _____) )
" |  ___)   | | (_____ ( 
" | |_____ _| |_      | |
" |_______|_____)     |_|
"
" Created: 15/Aug/2020 by Esteban Ibarra
" Modified: 21/Aug/2020 by Esteban Ibarra

"		===    PLUGINS    ===

call plug#begin('~/.config/nvim/plugged/')

	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'tpope/vim-surround'
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'mattn/emmet-vim'
	Plug 'dense-analysis/ale'
	Plug 'airblade/vim-gitgutter'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tonsky/FiraCode'
	Plug 'vimlab/split-term.vim'
	Plug 'tpope/vim-commentary'
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'chriskempson/base16-vim'

call plug#end()

"		===    CONFIG    ===

" ==> Basic Config

syntax on

set noshowmode
set list lcs=tab:\|\ 
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set clipboard=unnamed
set colorcolumn=80
set splitbelow

" ==> Colors

set termguicolors
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }
let base16colorspace=256
colorscheme base16-tomorrow-night

" ==> NERDTree

let NERDTreeShowHidden=1
let NERDTreeMapOpenInTab='<ENTER>'

" STARTUP COMMANDS

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && isdirectory(argv()[0]) | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd VimEnter * wincmd l
autocmd VimEnter * 17Term
autocmd VimEnter * wincmd k
autocmd BufWinEnter * NERDTreeMirror
autocmd BufWinEnter * wincmd l

" SOURCES

source $HOME/.config/nvim/plug-config/coc.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
