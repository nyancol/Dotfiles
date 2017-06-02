
set number

" Supprime toutes les tabulations et espaces inutiles
command DeleteTrailing %s/\s\+$//

" Mapping leader
let mapleader = ","

" Delimite a 80 caracteres
"    command ShowLimites highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"    match OverLength /\%81v.\+/

if exists('+colorcolumn')
  set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" 1 tab == 8 spaces
set shiftwidth=4
set tabstop=4

" Color scheme
set background=dark
colorscheme solarized

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
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
