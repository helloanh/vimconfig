set number
set ignorecase
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread

set hidden
syntax on

" ==== turn off swap files ==== "
set noswapfile
set nobackup
set nowb

" ==== indentation ==== "
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

set nowrap    "don't wrap lines"
set foldnestmax=3   "deepest fold is 3 levels"
set nofoldenable    "don't fold by default"

" ==== completion ==== "
set wildmode=list:longest
set wildmenu
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

colorscheme peachpuff

" ==== NERDTree ==== "
execute pathogen#infect() 
syntax on
filetype plugin indent on
set sessionoptions-=options
"start nerdtree automatically when in vim "
autocmd VimEnter * NERDTree 
"cursor starts at the file and not the nerdtree window"
autocmd VimEnter * wincmd p

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ==== SPLIT WINDOWS IN VIM FOR MULTIPLE TABS ==== "
" <Tab> for switching panes, <Bar> and - for splitting windows "
map <Tab> <C-W>w  
map <Bar> <C-W>v<C-W><Right>
map -     <C-W>s<C-W><Down>


