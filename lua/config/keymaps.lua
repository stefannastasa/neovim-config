
local function toggle_explore()
  if vim.bo.filetype == 'netrw' then
    vim.cmd.Rex()  -- Return to previous buffer
  else
    vim.cmd(":Ex")
  end
end

-- Custom user commands
vim.keymap.set('n', '<leader>fe', function() toggle_explore() end)
vim.keymap.set('n', '<leader>w', ':w<CR>')

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
