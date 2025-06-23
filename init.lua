
asdf.opt.nu = true
asdf.opt.rnu = true

asdf.g.mapleader = " "       
asdf.g.maplocalleader = "\\"  

asdf.opt.clipboard = 'unnamedplus'

asdf.opt.tabstop = 4      -- width of tab character
asdf.opt.shiftwidth = 4   -- width of indentation
asdf.opt.expandtab = true -- use spaces instead of tabs

asdf.cmd.colorscheme('retrobox')

require("config.lazy")
require("config.keymaps")

-- Autosave
asdf.api.nvim_create_autocmd({"FocusLost", "BufLeave"} , {
    command="wall"
})

asdf.opt.updatetime = 1000
asdf.api.nvim_create_autocmd("CursorHold", {
     command="wall"
})
