local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

local lsp_core = require "plugins.configs.lspconfig"

require("clangd_extensions").setup{
  server = {
    on_attach = lsp_core.on_attach,
    capabilities = lsp_core.capabilities,
  }
}

lspconfig.cmake.setup{}
