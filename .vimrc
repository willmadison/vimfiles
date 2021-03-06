" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2011 Apr 15
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("gui_running")
  set guifont=Hack:h7:cANSI
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

noremap <silent> <F3> :NERDTree ~/<CR>

inoremap <C-SPACE> <C-x><C-o>
noremap <C-M> :%s/\r//g<CR>

syntax enable
set noautoindent
set softtabstop=2 shiftwidth=2 expandtab smartindent
colorscheme inkpot  
set showmatch
set t_Co=256
set number
let php_htmlInStrings=1
let php_sql_query=1
let php_foldingo=0
noremap <F4> :set hls!<CR>

filetype plugin on
au FileType php setlocal omnifunc=phpcomplete#CompletePHP softtabstop=4 shiftwidth=4 expandtab smartindent
au FileType python setlocal cursorline cursorcolumn
au FileType javascript setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent
au FileType go setlocal tabstop=4 softtabstop=4 shiftwidth=4 smartindent
 

au BufNewFile,BufRead *.pkg set filetype=plsql
au BufNewFile,BufRead *.bdy set filetype=plsql
au BufNewFile,BufRead *.spc set filetype=plsql
au BufNewFile,BufRead *.prc set filetype=plsql
au BufNewFile,BufRead *.fnc set filetype=plsql
au BufNewFile,BufRead *.seq set filetype=sql
au BufNewFile,BufRead *.tab set filetype=sql
au BufNewFile,BufRead *.vw set filetype=sql
au BufNewFile,BufRead *.trg set filetype=sql
au BufNewFile,BufRead *.syn set filetype=sql

set autochdir

set completeopt-=preview
set dict+=~/.vim/PHP.dict
set showmode

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current 
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in 
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer
set laststatus=2

filetype off
filetype plugin indent off
"set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

"set shell=powershell
"set shellcmdflag=-command
"
set noswapfile               " Don't use swapfile
set nobackup                 " Don't create annoying backup files
set ignorecase
set smartcase

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:neocomplete#enable_at_startup = 1

call pathogen#infect() 
