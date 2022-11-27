local M = {}

M.nvterm = {
  t = {
    -- toggle in terminal mode
    ["<A-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
    ["<ESC><ESC>"] = { "<C-\\><C-n>", "go to normal mode in terminal" },
  },

  n = {
    -- toggle in normal mode
    ["<A-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },
}

M.general = {
  n = {
    ["<S-h>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto next buffer",
    },
    ["<S-l>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
    ["<leader>y"] = { '"*y', "yank to system clipboard" },
    ["<leader>p"] = { '"*p', "paste from system clipboard" },
    ["<C-Up>"] = { "<cmd> :resize -2<CR>", "grow window size up" },
    ["<C-Down>"] = { "<cmd> :resize +2<CR>", "grow window size down" },
    ["<C-Left>"] = { "<cmd> :vertical resize -2<CR>", "grow window size left" },
    ["<C-Right>"] = { "<cmd> :vertical resize +2<CR>", "grow window size right" },
  },
  v = {
    ["<leader>y"] = { '"*y', "yank to system clipboard" },
    ["<leader>p"] = { '"*p', "paste from system clipboard" },
  },
}

M.dap = {
  n = {
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
    },
    ["<leader>dg"] = {
      function()
        require("dapui").toggle()
      end,
    },
    ["<leader>s"] = {
      function()
        require("dap").step_over()
      end,
    },
    ["<leader>si"] = {
      function()
        require("dap").step_into()
      end,
    },
    ["<leader>so"] = {
      function()
        require("dap").step_out()
      end,
    },
  },
}

return M
