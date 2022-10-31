local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

lspconfig.clangd.setup{}

lspconfig.cmake.setup{}
