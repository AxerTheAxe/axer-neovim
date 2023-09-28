-- This script is used to bootstrap and configure Lazy, a plugin manager for Neovim.

-- Define filepath for bootstrapping
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- If the filepath is not found...
if not vim.loop.fs_stat(lazypath) then
  -- Clone Lazy to the filepath
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
-- Adds Lazy directory to the neovim RTP
vim.opt.rtp:prepend(lazypath)

-- String table for the plugins we want to install
local plugins = {
  -- Rosepine colorscheme for Neovim
  "rose-pine/neovim",
  -- File icons within Neovim
  'nvim-tree/nvim-web-devicons',
  -- Tabs on the top of Neovim for each open file and buffer
  'akinsho/bufferline.nvim'
}

require("lazy").setup(plugins)
