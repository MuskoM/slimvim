" Set leader key
let mapleader = ","

" Plugin manager
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'
Plug 'mbbill/undotree'
call plug#end()

" Essential settings
set nocompatible
syntax on
set number
set relativenumber
set incsearch
set hlsearch
set ignorecase
set smartcase
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set undofile
set undodir=~/.vim/undodir
set splitbelow
set splitright
set showmatch
set laststatus=2
set noshowmode

" Enable file type detection
filetype plugin indent on

" Color scheme
colorscheme catppuccin

" Key mappings
nnoremap <Esc> :nohlsearch<CR>
nnoremap <leader>u :UndotreeToggle<CR>

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

" FZF mappings
nnoremap <leader>sf :Files<CR>
nnoremap <leader>sg :Rg<CR>
nnoremap <leader><leader> :Buffers<CR>
nnoremap <leader>sh :History<CR>
