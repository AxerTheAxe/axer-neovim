-- This script is used to configure LuaLine, a status line for Neovim 

-- Function for LuaLine's configuration
require('lualine').setup {
  -- General options 
  options = {
    -- Sets LuaLine's theme
    --theme = rosePineMoon,
    section_separators = {}
  },

  -- Section options
  sections = {
    -- Section a
    lualine_a = {'mode'},
    -- Section b
    lualine_b = {"", '', ''},
    -- Section c
    lualine_c = {'filename', "diagnostics"},
    -- Section x
    lualine_x = {'', '', ''},
    -- Section y
    lualine_y = {'progress'},
    -- Section z
    lualine_z = {'location'}
  },
}
