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
