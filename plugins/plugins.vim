call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'

call plug#end()

runtime! plugins/lspconfig.vim
runtime! plugins/mason.vim
runtime! plugins/cmp.vim
