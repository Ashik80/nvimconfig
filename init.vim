let g:mapleader = " "

set number relativenumber
set tabstop=4 shiftwidth=4
set smartindent expandtab
set foldlevel=99 foldmethod=indent
set ignorecase smartcase
set nowrap
set noswapfile
set ttimeoutlen=0
set completeopt=menuone,preview
set guicursor=n-v-c-i:block

colorscheme wildcharm

set grepprg=grep\ -Rin\ --exclude-dir={__pycache__,node_modules,.git}\ $*

command! -nargs=1 GREP silent grep! <args> | cw
command! ListFiles norm i!!find .
            \ -type d -name plugged -prune -o
            \ -type d -name __pycache__ -prune -o
            \ -type d -name node_modules -prune -o
            \ -type d -name .git -prune -o
            \ -print | sed 's/^/:e /'

nmap <leader>yf :let @f = expand("%")<CR>
vmap <leader>y "+y
nmap <leader>cp "+p
nmap <leader>fl :ListFiles<CR>
nmap <leader>fg :GREP<space>
nmap <leader>n :noh<CR>
vmap > >gv
vmap < <gv
