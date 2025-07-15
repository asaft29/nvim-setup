-- configs/go.lua
local M = {}

function M.setup()
  local lspconfig = require('lspconfig')

  lspconfig.gopls.setup({
    on_attach = function(client, bufnr)
      -- Your on_attach code here if any
    end,
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  })
end

return M

