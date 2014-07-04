set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'Rip-Rip/clang_complete'

" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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

set scrolloff=2

:nmap <C-s> :w<CR>
:imap <C-s> <Esc>:w<CR>a
:imap <C-s> <Esc><c-s>

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set number              
set showmatch           
set showmode            
set showcmd             
set ruler               
set title               
set wildmenu            

set laststatus=2        
set matchtime=2         

set ignorecase          
set smartcase           
set smartindent         
set smarttab            
set magic               

set tabstop=4
set shiftwidth=4

set hidden
set mouse=v

if &t_Co > 2 || has("gui_running")
  syntax on          " enable colors
  set hlsearch       " highlight search (very useful!)
  set incsearch      " search incremently (search while typing)
endif

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


let g:clang_use_library=1
let g:clang_complete_macros=1
let g:clang_library_path="/usr/lib/llvm-3.2/lib"
let g:clang_library_file = "libclang.so"
let g:clang_use_library = 1
let g:clang_snippets=1
let g:clang_snippets_engine='ultisnips'
let g:clang_conceal_snippets=1
let g:clang_periodic_quickfix=1
let g:clang_hl_errors=1

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

set completeopt=menuone,menu,preview
"set completeopt=menuone,menu,preview
"               |       |    |
"               |       |    + Použivať náhľadové okno
"               |       + Zobraziť popup menu pre dopĺňanie
"               + Zobraziť menu aj keď je jediná zhoda

" Automatické zatvorenie náhľadového okna pri presune kurzoru
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Dopĺňanie po stlačení Ctrl+Space
imap <C-Space> <C-X><C-u>
imap <Nul> <C-X><C-I>
