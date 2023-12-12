-- This script is used to configure Undotree, 
-- an undo history visualizer for Neovim

-- Function for Undotree's configuration
require("undotree").setup {
  -- Sets the undotree's window position
  position = "right",

  -- Settings for the diff window
  window = {
    -- Sets the diff window's transparancy
    winblend = 0
  }
}

-- Bindings...
vim.keymap.set("n", "<leader>u", require("undotree").toggle) -- Normal | Leader+u
