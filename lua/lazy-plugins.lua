-- This script is used to bootstrap and configure Lazy, a plugin manager for Neovim.

-- Define filepath for bootstrapping
local lazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- If the filepath is not found...
if not vim.loop.fs_stat(lazyPath) then
  -- Clone Lazy to the filepath
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazyPath,
  })
end
-- Adds Lazy's directory to the Neovim RTP
vim.opt.rtp:prepend(lazyPath)

-- Send plugins to Lazy's configuration
require("lazy").setup {
  -- Havona:
  -- Colorscheme for Neovim
  "axertheaxe/havona-neovim",

  -- TreeSitter:
  -- Code parser for Neovim
  "nvim-treesitter/nvim-treesitter",

  -- NvimLspConfig:
  -- LSP client within Neovim
  "neovim/nvim-lspconfig",

  -- Mason:
  -- Mason for Neovim
  "williamboman/mason.nvim",

  -- MasonLspConfig:
  -- LSP support for Mason
  "williamboman/mason-lspconfig.nvim",

  -- MasonToolInstaller:
  -- Automatic tool installation for Mason
  "WhoIsSethDaniel/mason-tool-installer.nvim",

  -- NvimCmp
  -- Code completions for Neovim
  "hrsh7th/nvim-cmp",

  -- CmpNvimLsp:
  -- Code completions for LSPs
  "hrsh7th/cmp-nvim-lsp",

  -- LuaSnip:
  -- Code parser within Neovim
  "L3MON4D3/LuaSnip",

  -- Plenary:
  -- Functions library for Neovim
  "nvim-lua/plenary.nvim",

  -- NvimDevIcons:
  -- File icons within Neovim
  "nvim-tree/nvim-web-devicons",

  -- LuaLine:
  -- Status line for Neovim
  "nvim-lualine/lualine.nvim",

  -- Telescope
  -- Fuzzy finder for Neovim
  "nvim-telescope/telescope.nvim",

  -- NvimTree:
  -- File explorer for Neovim
  "nvim-tree/nvim-tree.lua",

  -- UndoTree:
  -- Undo history visualizer for Neovim
  "jiaoshijie/undotree",

  -- NvimAutopairs
  -- Automatic closing for pair characters
  { "windwp/nvim-autopairs", event = "InsertEnter",                             opts = {} },

  -- I should make my own version of this
  { "abecodes/tabout.nvim",  config = function() require("tabout").setup {} end },

  -- Bufferstore:
  -- Stores buffer information
  "axertheaxe/bufferstore.nvim",

  -- NeoDev:
  -- Vim API completion support
  { "folke/neodev.nvim", opts = {} }
}
