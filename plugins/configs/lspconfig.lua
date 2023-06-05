local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

local lsp_core = require "plugins.configs.lspconfig"
local clangd_capabilities = lsp_core.capabilities
clangd_capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

require("clangd_extensions").setup {
  server = {
    on_attach = lsp_core.on_attach,
    capabilities = clangd_capabilities,
  },
}



-- lspconfig.cmake.setup {
--   on_attach = lsp_core.on_attach,
--   capabilities = lsp_core.capabilities,
-- }
--
-- lspconfig.bashls.setup {
--   on_attach = lsp_core.on_attach,
--   capabilities = lsp_core.capabilities,
-- }
