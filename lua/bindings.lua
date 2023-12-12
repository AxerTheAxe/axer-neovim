-- This script is used to create keybindings for built-in Neovim features
--
-- Bindings that use a vim command should be written as
-- "<cmd>lua vim.cmd('foo')<CR>" instead of ":foo" to
-- avoid entering command mode.

-- Sets the leader key, which is used as a custom prefix for other bindings
vim.g.mapleader = " " -- Any | Space

-- Lets you enter insert mode on a new line above the cursors original 
-- position with an extra line above for padding
vim.keymap.set("n", "<leader>o", "O<esc>o") -- Normal | Leader+o
-- Lets you enter insert mode two new lines above of the cursors
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
vim.keymap.set("n", "<C-u>", "<C-u>zzzz")
-- Lets you keep your cursor centered when jumping down a half page
vim.keymap.set("n", "<C-d>", "<C-d>zzzz")

-- Lets you keep your cursor in the same position when appending lines from bellow 
vim.keymap.set("n", "J", "mzJ`z") -- Normal | J

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

-- Lets you copy the entire file contents
vim.keymap.set("n", "ya", "<cmd>lua vim.cmd('%y')<CR>") -- Normal | ya
-- Lets you copy the entire file contents 
-- into your system clipboard
vim.keymap.set("n", "<leader>ya", "<cmd>lua vim.cmd('%y+')<CR>") -- Normal | Leader+ya

-- Lets you paste from your system clipboard
-- after the cursor's position
vim.keymap.set("", "<leader>p", "\"+p") -- Any | Leader+p
-- Lets you paste from your system clipboard
-- before the cursor's position
vim.keymap.set("", "<leader>P", "\"+P") -- Any | Leader+P

-- Lets you paste over text while retaining the 
-- previously copied text
vim.keymap.set("x", "<leader>vp", "\"_dP") -- Visual | Leader+vp

-- Lets you delete to your system clipboard
vim.keymap.set("n", "<leader>d", "\"+d") -- Normal | Leader+d
-- Lets you delete to your system clipboard
-- in visual mode
vim.keymap.set("x", "<leader>d", "\"+d") -- Visual | Leader+d
-- Lets you Delete the current line to the
-- system clipboard
vim.keymap.set("n", "<leader>dd", "\"+dd") -- Normal | Leader+dd
-- Lets you delete the rest of the line to the
-- right to the system clipboard
vim.keymap.set("n", "<leader>D", "\"+D") -- Normal | Leader+D
-- Lets you delete the entire contents of the 
-- current file
vim.keymap.set("n", "da", "<cmd>lua vim.cmd('%d')<CR>") -- Normal | da
-- Lets you delete the entire contents of the 
-- current file to the system clipboard
vim.keymap.set("n", "<leader>da", "<cmd>lua vim.cmd('%y+ | %d')<CR>") -- Normal | Leader+da

-- Lets you begin a global search and replace
vim.keymap.set("n", "<leader>s", [[:%s/]]) -- Normal | Leader+s
-- Lets you begin a search and replace in the text that is highlighted
vim.keymap.set("x", "<leader>s", [[:s/\%V]]) -- Visual | Leader+s

-- Lets you switch to the next buffer
-- Normal | Leader+l
vim.keymap.set("n", "<leader>l", "<cmd>lua vim.cmd('bnext')<CR>", { silent = true })
-- Lets you switch to the previous buffer
-- Normal | Leader+h
vim.keymap.set("n", "<leader>h", "<cmd>lua vim.cmd('bprev')<CR>", { silent = true })

-- Lets you delete the current buffer
-- Normal | Leader+bd
vim.keymap.set("n", "<leader>bd", "<cmd>lua vim.cmd('bdelete')<CR>", { silent = true})
-- Lets you force delete the current buffer
-- Normal | Leader+bD
vim.keymap.set("n", "<leader>bD", "<cmd>lua vim.cmd('bdelete!')<CR>", { silent = true })

-- Opens a new terminal buffer
vim.keymap.set("n", "<leader>t", "<cmd>lua vim.cmd('term')<CR>")
-- Lets you exit terminal mode
vim.keymap.set("t", "<C-t>", [[<C-\><C-n>]], { noremap = true }) -- Terminal | Control+t
