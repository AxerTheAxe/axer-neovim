-- This script is used to edit built-in Neovim settings

-- Better Lua loader, improves start speed
vim.loader.enable()

-- Controls how frequently Neovim does updates in milliseconds, affects performance
vim.opt.updatetime = 50

-- Automatically changes Neovim's directory to the current buffer
vim.opt.autochdir = true

-- Overrides terminal color palette
vim.opt.termguicolors = true

-- Makes the cursor a solid block regardless of mode
vim.opt.guicursor = ""

-- Toggles highlighting of the current line
vim.opt.cursorline = true

-- Toggles line numbers
vim.opt.nu = true
-- Toggles relative line numbers
vim.opt.relativenumber = true

-- Toggles soft tab, which uses space characters for tabbing
vim.opt.expandtab = true
-- Sets the size of spaces in a soft tab
vim.opt.softtabstop = 2
-- Sets the number of spaces for each level of code indentation
vim.opt.shiftwidth = 2

-- Toggles automatic indentation levels
vim.opt.smartindent = true

-- Toggles swap files
vim.opt.swapfile = false
-- Toggles backups
vim.opt.backup = false
-- Toggles undo files, which store file history for each file opened 
vim.opt.undofile = true
-- Sets directory to store undo files
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"

-- Toggles the persistent highlighting of search results
vim.opt.hlsearch = false
-- Toggles incremental search results, where search results are displayed immediately
vim.opt.incsearch = true

-- Set spellcheck to English US
vim.opt.spelllang = "en_us"
-- Enable spellcheck
vim.opt.spell = true
-- Disable spellcheck in terminal windows
vim.cmd("au TermOpen * setlocal nospell")

-- Disables Neovim's startup message
vim.o.shortmess = vim.o.shortmess .. "I"

-- Toggles NETRW
vim.g.loaded_netrw = 1
-- Toggles NETRW plugin
vim.g.loaded_netrwPlugin = 1
