let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let undo_dir = has('nvim') ? stdpath('data') . '/undo' : '~/.vim/undo'
if !isdirectory(undo_dir)
    call mkdir(undo_dir, "p", 0700)
endif

" Set leader key
let mapleader = ","

" Plugin manager
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'
Plug 'mbbill/undotree'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
call plug#end()

" Essential settings
" Indentations as (4) spaces
set nocompatible
set shiftwidth=4
set softtabstop=4
set expandtab

" Set line numbers
set number
set relativenumber

" Case-insensitive searching UNLESS \C or one or more capital letters in the
" search terms
set ignorecase
set smartcase

" Decrease time it takes to save a swap file if nothing is typed 
" See :help crash-recovery
set updatetime=250

" Use undofile to track changes in a file
" For more see :help undotree (plugin)
set undofile
set undodir=~/.vim/undodir

" Enable wildmenu for command-line completion
set wildmenu

" Highlight current line
set cursorline

" Minimal number of screen lines to keep above and below cursor
set scrolloff=10

" Make searching easier
set incsearch
set hlsearch
set showmatch

" Set reasonable defaults for splits
set splitbelow
set splitright

" Status line config
set laststatus=2
set noshowmode

set autoindent

syntax on

" Enable file type detection
filetype plugin indent on

" Color scheme
set termguicolors
colorscheme catppuccin_macchiato

" Set colorscheme for lightline
let g:lightline = {'colorscheme': 'catppuccin_mocha'}

" Key mappings
nnoremap <silent> <Esc> :nohlsearch<CR>

" FZF configurations
let g:fzf_layout = { 'down': '~40%' }

" Check if ripgrep is available
if executable('rg')
  command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
    \   fzf#vim#with_preview(), <bang>0)
else
  command! -bang -nargs=* Rg call fzf#vim#grep("grep -R " . shellescape(<q-args>) . " .", 1, <bang>0)
endif

" Undotree mappings
nnoremap <leader>u :UndotreeToggle<CR>

" FZF mappings
nnoremap <leader>sf :Files<CR>
nnoremap <leader>sg :Rg<CR>
nnoremap <leader><leader> :Buffers<CR>
nnoremap <leader>sh :History<CR>

" Which-Key setup
nnoremap <silent> <leader> :WhichKey ','<CR>
set timeoutlen=500

let g:which_key_map = {}
let g:which_key_map[','] = 'Last Buffers'
let g:which_key_map.u = 'Undo Tree'
let g:which_key_map.s = {
    \ 'name': '+search',
    \ 'f': 'in files',
    \ 'g': 'with ripgrep',
    \ 'h': 'in history',
    \ }

call which_key#register(',', "g:which_key_map")

" Netrw config
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
