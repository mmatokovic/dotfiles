syntax enable           " Enable syntax highlighting

set encoding=utf8       " UTF-8 FTW
set autoread            " Detect when a file has changed
set ttimeoutlen=50      " Remove delay on ESC
set exrc                " Allow per-project configuration files
set secure              " Don't load other people's per-project configs
set ignorecase          " Case-insensitive search
set smartcase           " Use smart case
set nohlsearch          " Turn off the highlighting
set incsearch           " Incremental search
set number              " Line numbers
set relativenumber      " Relative line numbers
set wrap                " Word wrap
set showcmd             " Show current commands in the footer
set cursorline          " Highlight cursor line
set wildmenu            " Show tab options menu
set lazyredraw          " Redraw only when needed
set mouse=a             " Allow using the mouse
set updatetime=50       " Faster update time
set splitbelow          " Split window below
set splitright          " Split window right
set hidden              " Enable hidden buffers
set shell=cmd           " Define shell (not needed in IdeaVim)
set guifont=Hack_NF:h14 " Set font (not needed in IdeaVim)
set nobackup noswapfile noundofile nowritebackup
set autoindent          " Auto indent
set smartindent         " Smart indent
set list                " Show tab guides
set expandtab           " Use spaces instead of tabs
set wildmode=longest,list,full  " Enable autocomplete
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=3         " Scroll offset
set foldlevelstart=20   " Folding config
set viewoptions-=options

let mapleader=" "       " Set <leader> to [space]

nnoremap <silent> & :echohl Error<CR>:echo
nnoremap <silent> * :let b:v=winsaveview()<CR>*:call winrestview(b:v)<CR>
nnoremap <leader>l :<C-u>let @/ = expand('<cword>') <bar> :set hlsearch!<CR>
nnoremap <leader>c :%s///gc<left><left><left>
nnoremap <leader>hl :set hlsearch!<CR>
nnoremap <F1> :e #<1<CR>:lcd %:p:h<CR>
nnoremap <F2> :browse oldfiles<CR>
nnoremap <F3> :set relativenumber!<CR>
nnoremap <F4> :set wrap!<CR>
nnoremap <Leader>za za        " Fold/unfold with <space> 
nnoremap <Leader>o o<Esc>   " Normal mode <enter>
nnoremap <Leader>O O<Esc>   " Normal mode <enter>

vnoremap < <gv
vnoremap > >gv

map <leader>s :setlocal spell! spelllang=en_us<CR>  " Spell-check
map R :so %<CR>                                     " Reset

" Fix copy/paste mappings
vnoremap <C-c> "+y   " Copy to system clipboard
inoremap <C-v> <C-r>* " Paste from system clipboard
nnoremap <C-v> "+p   " Paste in normal mode
