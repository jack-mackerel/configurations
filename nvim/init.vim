set nocompatible              " be iMproved, required


" load plugins from vundle
source ~/.config/nvim/plugins.vim

source ~/.config/nvim/mappings.vim




" Cribbed from https://gist.githubusercontent.com/benmccormick/4e4bc44d8135cfc43fc3/raw/41cb8709d72a56bf0be66d4294135c46613c312c/minimal.vim
" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	     Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick
" Last change:	         2014 June 8
"
" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
" filetype plugin indent on

" Show line numbers
set number

" Show relative line numbers
set relativenumber

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

"""""""""""""""""""""
" Personal Settings "
"""""""""""""""""""""
" Save netrw history file to cache dir.
let g:netrw_home=$XDG_CACHE_HOME.'/vim'

" Enable Unicode
if !has('nvim')
	set encoding=utf-8
endif

" Show whitespace
set list listchars=eol:¶,tab:→\ ,trail:·

" Use Spaces instead of Tabs
set expandtab

" Set Tab width to 4 space
set tabstop=4




"-------------------- AutoCommands --------------------"
" Auto Source on saving a config file.
" Hat tip [Jeffrey
" Way](https://gist.github.com/JeffreyWay/9b034ee90346fbd05180)
augroup autosourcing
	autocmd!

	" Source if any .vim file within ~/.dotfiles/vim is edited and saved.
	autocmd BufWritePost ~/.dotfiles/nvim/*.vim source %
augroup END