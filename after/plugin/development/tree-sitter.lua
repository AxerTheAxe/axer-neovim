-- This script is used to configure TreeSitter code parser

-- Function for TreeSitter's configuration
---@diagnostic disable-next-line: missing-fields
require 'nvim-treesitter.configs'.setup {
  -- Automatically installs parsers for all languages
  ensure_installed = "all",

  -- Settings for TreeSitter's code highlighting
  highlight = {
    -- Toggles highlighting
    enable = true
  }
}
