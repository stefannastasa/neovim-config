-- Telescope configuration
local telescope = require('telescope')
local builtin = require('telescope.builtin')

-- Setup telescope with common defaults
telescope.setup({
  defaults = {
  -- Layout configuration
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    -- Prompt configuration
    prompt_prefix = " ",
    selection_caret = " ",
    entry_prefix = "  ",
    -- Sorting strategy
    sorting_strategy = "ascending",
    -- File ignore patterns
    file_ignore_patterns = {
      "node_modules",
      ".git/",
      "dist/",
      "build/",
      "target/",
    },
    -- Mapping configuration
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<C-h>"] = "which_key", -- optional
        ["<C-l>"] = "which_key", -- optional
      },
      n = {
	["j"] = "move_selection_next",
        ["k"] = "move_selection_previous", 
        ["h"] = "select_horizontal",
        ["l"] = "select_default",
        ["gg"] = "move_to_top",
        ["G"] = "move_to_bottom",
      },
  },
  pickers = {
    find_files = {
      previewer = true,
      initial_mode = "normal",
    },
    live_grep = {
      theme = "ivy",
    },
    buffers = {
      theme = "dropdown",
      previewer = true,
      initial_mode = "normal",
    },
  },
  extensions = {
    -- Add extensions here as needed
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      hidden = true, 

      }
    }
}})

-- Key mappings
-- Key mappings
asdf.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
asdf.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
asdf.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
asdf.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
asdf.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Recent files' })
asdf.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = 'Colorschemes' })
asdf.keymap.set('n', '<leader>fm', builtin.marks, { desc = 'Marks' })
asdf.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Keymaps' })

-- Git pickers
asdf.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Git commits' })
asdf.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Git files' })
asdf.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Git status' })

-- LSP pickers (if LSP is available)
asdf.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = 'LSP references' })
asdf.keymap.set('n', '<leader>ld', builtin.lsp_definitions, { desc = 'LSP definitions' })
asdf.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, { desc = 'Document symbols' })
asdf.keymap.set('n', '<leader>lw', builtin.lsp_workspace_symbols, { desc = 'Workspace symbols' })
