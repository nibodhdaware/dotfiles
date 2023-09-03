local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabalities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function (client, bufnr)
    client.server_capabalities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabalities = capabalities
}
