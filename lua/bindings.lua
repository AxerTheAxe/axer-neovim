-- This script is used to create keybindings for built-in Neovim features

-- Sets the leader key, which is used as a custom prefix for other bindings
vim.g.mapleader = " " -- Any | Space

-- Lets you enter insert mode on a new line above the cursors original 
-- position with an extra line above for padding
vim.keymap.set("n", "<leader>o", "O<esc>o") -- Normal | Leader+o
-- Lets you enter insert mode two new lines above of the cursors
-- original position
vim.keymap.set("n", "<leader>O", "O<esc>O") -- Normal | Leader+O

-- Lets you keep your cursor centered when jumping up a half page
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Lets you keep your cursor centered when jumping down a half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Lets you move highlighted text up and ensures proper indentation
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv") -- Visual | K
-- Lets you move highlighted text down and ensures proper indentation
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv") -- Visual | J

-- Lets you keep your cursor in the same position when appending lines 
-- from bellow
vim.keymap.set("n", "J", "mzJ`z") -- Normal | J

-- Lets you center your cursor faster 
vim.keymap.set("", "<C-z>", "zz") -- Any | Control+z
-- Lets you center your cursor in insert mode
vim.keymap.set("i", "<C-z>", "<C-o>zz") -- Insert | Control+z

-- Lets you copy to to your system clipboard
vim.keymap.set("n", "<leader>y", "\"+y") -- Normal | Leader+y
-- Lets you copy to to your system clipboard in visual mode
vim.keymap.set("x", "<leader>y", "\"+y") -- Visual | Leader+y
-- Lets you copy the text on the current line from your cursor position 
-- to the end of the line to your system clipboard
vim.keymap.set("n", "<leader>Y", "\"+Y") -- Normal | Leader+Y
-- Lets you copy all of the text on the current line to your system 
-- clipboard 
vim.keymap.set("n", "<leader>yy", "\"+yy") -- Normal | Leader+yy

-- Lets you paste over text while retaining the previously copied text
vim.keymap.set("x", "<leader>p", "\"_dP") -- Visual | Leader+p

-- Lets you begin a global search and replace
vim.keymap.set("n", "<leader>s", [[:%s/]]) -- Normal | Leader+s
-- Lets you begin a search and replace in the text that is highlighted
vim.keymap.set("x", "<leader>s", [[:s/]]) -- Visual | Leader+s
