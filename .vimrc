set tags=tags;/

set number
set wildmenu
set laststatus=2

set ignorecase
set smartcase
set smartindent
set smarttab
set magic

set tabstop=4
set shiftwidth=4
set expandtab

" options
"set autoindent
set errorformat=%f:%l:%c:\ warning:\ %m,%f:%l:%c:\ error:\ %m,%f:%l:%c:\fatal\ error:\ %m
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=eol:Ω,tab:╰─,trail:␣
set makeprg=build
set textwidth=0

nnoremap <C-n> :bnext<CR>
nnoremap <C-b> :bprevious<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

set pastetoggle=<F2>

:set hidden

au BufRead,BufNewFile *.sv set filetype=SystemVerilog
au BufRead,BufNewFile *.mt set filetype=c
au BufRead,BufNewFile *.c set filetype=c
au BufRead,BufNewFile *.cc set filetype=cpp
au BufRead,BufNewFile *.h set filetype=cpp
au BufRead,BufNewFile *.py set filetype=python
au! Syntax SystemVerilog source /home/mauricedaverveldt/.vim/syntax/systemverilog.vim

set nocompatible              " be iMproved, required
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

filetype plugin indent on

"Bundle 'bkad/CamelCaseMotion'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
set noshowmode
set notitle

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Highlight extra whitespace characters
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatc
