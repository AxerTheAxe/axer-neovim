-- This script is used to configure the Telescope fuzzy finder plugin

-- Function for Telescope"s configuration
require("telescope").setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<C-n>"] = require("telescope.actions").preview_scrolling_down,
        ["<C-p>"] = require("telescope.actions").preview_scrolling_up,
        ["<C-d>"] = require("telescope.actions").delete_buffer,
      },
      n = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<C-d>"] = require("telescope.actions").delete_buffer,
      },
    }
  },
  -- Options for built-in pickers
  pickers = {
    -- Settings for the 'old files' picker
    oldfiles = {
      -- Changes the pickers prompt
      prompt_title = "Recently Opened Files"
    }
  }
}

-- Bindings...
-- Lets you open the current directory file picker
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files) -- Normal | Leader+f
-- Lets you open the recent files picker
vim.keymap.set("n", "<leader>rf", require("telescope.builtin").oldfiles)   -- Normal | Leader+r+f
-- Lets you open the git project files picker
vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files)  -- Normal | Leader+g+f
-- Lets you open the open buffers picker
vim.keymap.set("n", "<leader>bf", require("telescope.builtin").buffers)    -- Normal | Leader+b
