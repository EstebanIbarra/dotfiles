"				===>    CONFIG FILE FOR EIR'S NEOVIM    <===
" 
" 
"
"
"
"
"
"
" Created: 15/Aug/2020 by Esteban Ibarra
" Modified: 15/Aug/2020 by Esteban Ibarra

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

" ==> Colors

set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }

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
autocmd BufWinEnter * NERDTreeMirror

" SOURCES

source $HOME/.config/nvim/plug-config/coc.vim
