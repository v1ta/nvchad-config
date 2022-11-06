local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- C++
  b.formatting.clang_format,

  -- Cmake
  b.formatting.cmake_format,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = false,
  sources = sources,
  on_init = function(new_client, _)
    new_client.offset_encoding = 'utf-16'
  end,
}
