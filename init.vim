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

set grepprg=grep\ -Rin\ --exclude-dir={__pycache__,node_modules,.git,dist}\ $*

command! -nargs=1 GREP silent grep! <args> | cw
command! ListFiles norm i!!find .
            \ -type d \( -name plugged -o -name __pycache__ -o -name node_modules -o -name .git -o -name dist \)
            \ -prune -o -type f -print | sed 's/^/:e /'

function! GitBlameNextTwentyLines()
    let l:linenumber = line(".")
    execute '!git blame -L ' . l:linenumber . ',+20 %'
endfunction

if executable("fzf")
    function! OpenFile(job_id, data, event)
        execute 'bdelete!'
        execute 'cfile ~/temp'
    endfunction
    function! FindFiles()
        let l:command = 'find . -type d \( -name __pycache__ -o -name node_modules -o -name .git -o -name dist \)
                    \ -prune -o -type f -print | fzf | sed ''s/$/:1:0/'' > ~/temp'
        execute 'bel new'
        call termopen(l:command, {'on_exit': 'OpenFile'})
        execute 'startinsert'
    endfunction
    nmap <leader>ff :call FindFiles()<CR>
endif

nmap <leader>yf :let @f = expand("%:.")<CR>
vmap <leader>y "+y
nmap <leader>cp "+p
vmap <leader>cp "+p
nmap <leader>fl :ListFiles<CR>
nmap <leader>fb :ls<CR>:b<space>
nmap <leader>fg :GREP<space>
nmap <leader>gb :call GitBlameNextTwentyLines()<CR>
nmap <leader>n :noh<CR>
vmap > >gv
vmap < <gv

runtime! plugins/plugins.vim

if has('termguicolors')
    set termguicolors
endif

colorscheme jellybeans-nvim
