-- This script is used to configure Rosepine

-- Variable for background color in hex
local base = "#141122"

-- Function for Rosepine's configuration
require("rose-pine").setup {
  -- Lets you change color groups for Rosepine
  groups  = { 
    -- Changes Neovim's background color
    background = base,
    -- Changes Neovim's background color for some windows
    panel_nc = base
  },
  
  -- Theme variant
  variant = "moon",
  
  -- Lets you change highlight groups with Rosepine colors
  highlight_groups = {
    -- Changes the color of the cursor line highlight
    CursorLine = { bg = "foam", blend = 10 },
    
    -- Changes the general background color of the bufferline
    BufferLineFill = { bg = "surface"},
    -- Changes the background color of the space between buffers
    BufferLineSeparator = { fg = "surface" },
    -- Changes the background color of the space between the selected 
    -- buffer
    BufferLineSeparatorSelected = { fg = "surface" },
    -- Changes the background color of the space between buffers when no 
    -- buffers are selected
    BufferLineSeparatorVisible = { fg = "surface" },

    -- Changes the text color for out of focus buffers
    BufferLineBackground = { fg = "iris" },
    -- Changes the text color for the focused buffer
    BufferLineBufferSelected = { fg = "foam" },
    -- Changes the color of the close button for out of focus buffers
    BufferLineCloseButton= { fg = "love" },
    -- Changes the color of the close button for the focused buffer
    BufferLineCloseButtonSelected= { fg = "love" },

    -- Changes the color of the space between tabpages
    BufferLineTabSeparator = { fg = "surface" },
    -- Changes the color of the space between the selected tabpage
    BufferLineTabSeparatorSelected = { fg = "surface" },

    -- Changes the text color for out of focus tabpages
    BufferLineTab = { fg = "iris" },
    -- Changes the text color for the focused tabpage
    BufferLineTabSelected = { fg = "foam" },
    -- Changes the color of the close button for tabpages
    BufferLineTabClose = { fg = "love" }
  }
}

-- Tells Neovim to use Rosepine as it's colorscheme
vim.cmd("colorscheme rose-pine")
