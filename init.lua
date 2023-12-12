-- This script is sourced automatically upon launching neovim
-- and is used to source other configuration files

-- Source built-in settings
require("settings")

-- Source built-in bindings
require("bindings")

-- Source plugins from Lazy
require("lazy-plugins")
