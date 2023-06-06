return {
  { "goolord/alpha-nvim", disable = false },
  { "williamboman/mason.nvim", override_options = {
    ensure_installed = { "clangd", "rust-analyzer" },
  } },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.plugins.configs.null-ls"
        end,
      },
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
    ft = { "rust" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require "custom.plugins.configs.rust-tools"
    end,
  },
  -- {
  --   -- Completion framework:
  --   "hrsh7th/nvim-cmp",
  --   opts = {
  --     completion = {
  --       -- menuone: popup even when there's only one match
  --       -- noinsert: Do not insert text until a selection is made
  --       -- noselect: Do not select, force to select one from the menu
  --       completeopt = "menu,menuone,noinsert",
  --     },
  --   },
  --   config = function()
  --     require "custom.plugins.configs.cmp"
  --   end,
  -- },
  -- LSP completion source:
  -- { "hrsh7th/cmp-nvim-lsp" },
  -- Useful completion sources:
  -- { "hrsh7th/cmp-nvim-lua" },
  -- { "hrsh7th/cmp-nvim-lsp-signature-help" },
  -- { "hrsh7th/cmp-vsnip" },
  -- { "hrsh7th/cmp-path" },
  -- { "hrsh7th/cmp-buffer" },
  -- { "hrsh7th/vim-vsnip" },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = { "lua", "rust", "toml" },
  --     auto_install = true,
  --     highlight = {
  --       enable = true,
  --       additional_vim_regex_highlighting = false,
  --     },
  --     ident = { enable = true },
  --     rainbow = {
  --       enable = true,
  --       extended_mode = true,
  --       max_file_lines = nil,
  --     },
  --   },
  -- },
}
