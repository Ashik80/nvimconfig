call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'nvim-treesitter/nvim-treesitter'
" colorscheme
Plug 'rktjmp/lush.nvim'
Plug 'metalelf0/jellybeans-nvim'
Plug 'ellisonleao/gruvbox.nvim'

call plug#end()

" runtime! plugins/jellybeans.vim
runtime! plugins/gruvbox.vim
runtime! plugins/treesitter.vim
runtime! plugins/lspconfig.vim
runtime! plugins/mason.vim
runtime! plugins/cmp.vim
