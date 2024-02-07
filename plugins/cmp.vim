lua << EOF
local cmp = require('cmp')

local source_names = {
    buffer = "[Buffer]",
    nvim_lsp = "[LSP]",
    luasnip = "[LuaSnip]",
    nvim_lua = "[Lua]",
    latex_symbols = "[LaTeX]",
}

cmp.setup {
    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),
    formatting = {
        format = function(entry, vim_item)
            vim_item.menu = source_names[entry.source.name]
            return vim_item
        end
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        {
            name = 'buffer',
            option = {
                get_bufnrs = function()
                    return vim.api.nvim_list_bufs()
                end
            }
        },
    }),
}
EOF
