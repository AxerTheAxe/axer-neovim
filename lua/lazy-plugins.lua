-- This script is used to bootstrap and configure Lazy, a plugin manager for neovim.

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

local plugins = {
  "rose-pine/neovim",
  'nvim-tree/nvim-web-devicons',
  'akinsho/bufferline.nvim'
}

require("lazy").setup(plugins)
