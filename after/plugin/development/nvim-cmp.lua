-- This script is used to configure NvimCmp,
-- an auto-completion plugin for NeoVim

-- Variable for NvimCmp
local cmp = require("cmp")

-- Function for NvimCmp's configuration
---@diagnostic disable-next-line: missing-fields
cmp.setup {
  sources = {
    { name = 'nvim_lsp' },
  },

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },

  -- Bindings for NvimCmp
  mapping = cmp.mapping.preset.insert({
    -- Select the next completion down
    -- Insert | Control+j
    ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    -- Select the next completion up
    -- Insert | Control+k
    ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),

    -- Confirm the selected completion,
    -- or the first if none are selected
    ["<S-CR>"] = cmp.mapping.confirm({ select = true }), -- Insert | Shift+Enter
    -- Scoll up in the completion's
    -- documentation
    ["<C-u>"] = cmp.mapping.scroll_docs(-4), -- Insert | Control+u
    -- Scoll down in the completion's
    -- documentation
    ["<C-d>"] = cmp.mapping.scroll_docs(4) -- Insert | Control+d
  }),
}
