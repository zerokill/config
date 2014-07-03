


set scrolloff=2

:nmap <C-s> :w<CR>
:imap <C-s> <Esc>:w<CR>a
:imap <C-s> <Esc><c-s>

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

" paste mode toggle (needed when using autoindent/smartindent)
map <F10> :set paste<CR>
map <F11> :set nopaste<CR>
imap <F10> <C-O>:set paste<CR>
imap <F11> <nop>
set pastetoggle=<F11>