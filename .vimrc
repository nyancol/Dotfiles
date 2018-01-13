set number
set rnu

" Enable builtin plugins
set nocompatible
filetype plugin on

set hls

set history=200

" 24 bit color support
set termguicolors

set showmode!
syntax enable

" Setting the leader
let mapleader = " "

if exists('+colorcolumn')
    set colorcolumn=120
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif

" Color scheme
set background=dark
colorscheme hapycolor

" Lightline
set laststatus=2
let g:lightline = { 'colorscheme': 'hapycolor' }

" CtrlP
nmap <leader>j :CtrlP<CR>
" let g:ctrlp_custom_ignore = *.o,*~,*.pyc
" Set the current file's directory as the source only if ...
nmap <leader>J :let g:ctrlp_working_path_mode = 'a'<CR>

" Fast saving
nmap <leader>w :w!<CR>

nmap <leader>a :wqa<CR>

" Fast save and quit
nmap <leader>q :wq<CR>
nmap <leader>Q :q!<CR>

" :W sudo saves the file
command W w !sudo tee % > /dev/null

" zsh like autocompletion
set wildmenu
set wildmode=full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class,*.cache
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
" set softtabstop=4
set tabstop=4

" folding settings
" set foldmethod=indent   "fold based on indent
" set foldnestmax=10      "deepest fold is 10 levels
" set nofoldenable        "dont fold by default
" set foldlevel=1         "this is just what i use

" rot13 all text
map <leader>r ggVGg?

set mouse=a

" nohighlight
nnoremap <C-l> :nohlsearch<CR><C-l>

" incremental search
" set incsearch
" set hlsearch

" autocmd InsertEnter * :setlocal nohlsearch
" autocmd InsertLeave * :setlocal hlsearch

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" fzf
set rtp+=/usr/local/opt/fzf

" Disabling arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


" Enable hard mode
autocmd VimEnter, BufNewFile, BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Markdown
set conceallevel=2

" Yankstack
let g:yankstack_yank_keys = ['y', 'd']
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" Python mode
let g:pymode_python = 'python3'

" Disable syntax highlighting after the first 200 characters of each line
set synmaxcol=200
