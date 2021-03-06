set number
set rnu

" Mapping leader
let mapleader = ","

" Delimite a 80 caracteres
"    command ShowLimites highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"    match OverLength /\%81v.\+/

if exists('+colorcolumn')
    set colorcolumn=120
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Color scheme
set background=dark
colorscheme desert

" lightline
set laststatus=2
set noshowmode
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ } 

" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" includes for syntastic
let g:syntastic_c_include_dirs = [ '~/Qt/5.7/clang_64' ]

" rot13 all text
map <leader>r ggVGg?

" nohighlight
nnoremap <C-l> :nohlsearch<CR><C-l>

" incremental search
set incsearch
set hlsearch

autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

cmap w!! %!sudo tee > /dev/null %

nnoremap <A+j> :m+<CR>==
nnoremap <A+k> :m-2<CR>==
nnoremap <A+h> <<
nnoremap <A+l> >>
inoremap <A+j> <Esc>:m+<CR>==gi
inoremap <A+k> <Esc>:m-2<CR>==gi
inoremap <A+h> <Esc><<`]a
inoremap <A+l> <Esc>>>`]a
vnoremap <A+j> :m'>+<CR>gv=gv
vnoremap <A+k> :m-2<CR>gv=gv
vnoremap <A+h> <gv
vnoremap <A+l> >gv
