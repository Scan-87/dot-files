filetype indent on
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent
autocmd BufRead,BufNewFile *.py setlocal tabstop=4 shiftwidth=4 softtabstop=4
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif

" Vim Plugins Setup
filetype plugin indent on 
set encoding=utf-8 
set nocompatible 
syntax enable "Включает подсветку синтаксиса

" Basic Plugin setup
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Add your plugins here 
call plug#begin('~/.vim/bundle') 
"Тут будут описаны наши плагины
Plug 'rafalbromirski/vim-aurora'
Plug 'uu59/vim-herokudoc-theme'
call plug#end() 


"set termguicolors
"set background=dark
"colorscheme herokudoc-gvim
