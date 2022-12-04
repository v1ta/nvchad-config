return {
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = { "clangd" },
    },
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
  ["Pocco81/auto-save.nvim"] = {},
  ["mfussenegger/nvim-dap"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.nvim-dap"
    end,
  },
  ["rcarriga/nvim-dap-ui"] = {
    after = "nvim-dap",
    config = function()
      require "custom.plugins.configs.nvim-dap-gui"
    end,
  },
  ["kevinhwang91/promise-async"] = {
    after = "nvim-lspconfig"
  },
  ["kevinhwang91/nvim-ufo"] = {
    after = "promise-async",
    config = function()
      require "custom.plugins.configs.nvim-ufo"
    end,
  },
}
