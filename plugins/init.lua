return {
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = { "clangd" }
    }
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  ["p00f/clangd_extensions.nvim"] = {},
  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.configs.null-ls"
      end,
 },
}
