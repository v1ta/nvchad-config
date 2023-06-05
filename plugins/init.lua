return {
  { "goolord/alpha-nvim", disable = false },
  { "williamboman/mason.nvim", override_options = {
    ensure_installed = { "clangd" },
  } },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.plugins.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  { "p00f/clangd_extensions.nvim" },
  { "Pocco81/auto-save.nvim" },
  {
    "mfussenegger/nvim-dap",
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.nvim-dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    after = "nvim-dap",
    config = function()
      require "custom.plugins.configs.nvim-dap-gui"
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require "custom.plugins.configs.rust-tools"
    end,
  },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/vim-vsnip" },
}
