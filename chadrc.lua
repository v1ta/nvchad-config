-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "everblush",
}

M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

return M
