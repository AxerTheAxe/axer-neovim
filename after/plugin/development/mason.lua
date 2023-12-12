-- This script is used to configure Mason,
-- a package manager for Neovim

-- Function for Mason to communicate with LSP's
local default_setup = function(server)
  require("lspconfig")[server].setup({
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
  })
end

-- Function for Mason's configuration
require('mason').setup({})

-- Function for Mason's lsp configuration
require('mason-lspconfig').setup {
  -- Settings to automatically install
  -- the specified language servers
  ensure_installed = {
    -- Lua
    "lua_ls",
    -- Python
    "pylsp",
    "jedi_language_server",
    -- C/C++
    "clangd",
    "neocmake",
    -- C#
    "csharp_ls",
    -- Java
    "jdtls",
    -- Rust
    "rust_analyzer",
    -- Shell
    "bashls",
    -- Assembly
    "asm_lsp"
  },

  -- Settings for Mason to work with
  -- other modules
  handlers = {
    -- Lets Mason communicate with LSPs
    default_setup,

    -- Settings for 'lua_ls'
    lua_ls = function()
      require("lspconfig").lua_ls.setup {
        -- General settings
        settings = {
          Lua = {
            -- Workspace settings
            workspace = {
              -- Toggle workspace checks
              checkThirdParty = false
            }
          }
        }
      }
    end
  },
  -- Settings for 'bashls'
  require("lspconfig").bashls.setup {
    -- Allowed filetypes
    filetypes = {
      "zsh"
    }
  }
}

-- Function for Mason's tool installation
require("mason-tool-installer").setup {
  -- Settings to automatically isntall
  -- the specified tools
  ensure_installed = {
    -- Linters:
    -- Shell
    "shellcheck"
  }
}
