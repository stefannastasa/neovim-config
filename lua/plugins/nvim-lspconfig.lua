return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        },
        config = function()
            require('mason').setup()
            require('mason-lspconfig').setup({
                ensure_installed = { 'lua_ls', 'pyright', 'tsserver' }
            })

            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup{}
            lspconfig.pyright.setup{}
        end
    },
}
