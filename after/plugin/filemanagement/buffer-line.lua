-- This script is used to configure the Bufferline tabs plugin

-- Function for Bufferline's configuration
require('bufferline').setup {
  -- General options
  options = {
    -- Changes the style of each tab
    separator_style = "slant",
    -- Changes the close icon for the tabline
    close_icon = '󰅖',

    -- Lets you add behaviour when hovering over buffers
    hover = {
      -- Enables hover events
      enabled = true,
      -- Delay between hover events in milliseconds
      delay = 0,
      -- Lets you change what is shown on hover
      reveal = { "close" }
    }
  }
}

-- Lets you delete the current buffer
vim.keymap.set("n", "<leader>d", ":bdelete<CR>", { silent = true }) -- Normal | Control+d
-- Lets you force delete the current buffer, even if it has unsaved changes
vim.keymap.set("n", "<leader>D", ":bdelete!<CR>", { silent = true }) -- Normal | Control+D
-- Lets you focus the next buffer to the left
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", { silent = true }) -- Normal | Control+l
-- Lets you focus the next buffer to the right
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", { silent = true }) -- Normal | Control+h
-- Lets you reorder the current buffer one to the right
vim.keymap.set("n", "<C-w>", ":BufferLineMoveNext<CR>", { silent = true }) -- Normal | Control+w
-- Lets you reorder the current buffer one to the left
vim.keymap.set("n", "<C-b>", ":BufferLineMovePrev<CR>", { silent = true }) -- Normal | Control+b
