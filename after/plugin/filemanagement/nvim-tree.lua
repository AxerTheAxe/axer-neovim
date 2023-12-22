-- This script is used to configure the NvimTree file explorer plugin

-- -- Variable for NvimTree's api
local api = require "nvim-tree.api"

-- Function to create key bindigs for the file explorer
local function treeBindings(bufNum)
  -- Function to return binding options
  local function binOpts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufNum, noremap = true, silent = true, nowait = true }
  end

  -- Set NvimTree's default keybindings
  api.config.mappings.default_on_attach(bufNum)

  -- Opens a directory to the root of the explorer
  vim.keymap.set("n", "<S-CR>", api.tree.change_root_to_node, binOpts("CD")) -- NvimTree Insert | Shift+Enter
  -- Moves back a directory
  vim.keymap.set("n", "<C-CR>", [[:cd ../<CR>]], binOpts("CD")) -- NvimTree Insert | Shift+Enter-
end

-- Function for NvimTree's configuration
require("nvim-tree").setup {
  on_attach = treeBindings,
  -- Toggles whether the file explorer should be synced with
  -- the current directory
  sync_root_with_cwd = true,
  reload_on_bufenter = true,
  respect_buf_cwd = true,

  -- Settings for file focusing
  update_focused_file = {
    enable = true,
    -- Update the file explorers directory when switching
    -- to a new file
    update_cwd = true
  },

  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
}

-- Bindings...
-- Toggle the file explorer
vim.keymap.set("n", "<leader>ft", api.tree.toggle) -- Normal | Leader+f+t
