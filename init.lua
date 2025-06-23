
vim.opt.nu = true
vim.opt.rnu = true

vim.g.mapleader = " "       
vim.g.maplocalleader = "\\"  

vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 4      -- width of tab character
vim.opt.shiftwidth = 4   -- width of indentation
vim.opt.expandtab = true -- use spaces instead of tabs

vim.cmd.colorscheme('retrobox')

require("config.lazy")
require("config.keymaps")

-- Autosave
vim.api.nvim_create_autocmd({"FocusLost", "BufLeave"} , {
    command="wall"
})

vim.opt.updatetime = 1000
vim.api.nvim_create_autocmd("CursorHold", {
     command="wall"
})
