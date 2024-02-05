local M = {}

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local opts = { noremap = true, silent = true }

  buf_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<Leader>rn', ':lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<Leader>ws', ':lua vim.lsp.buf.workspace_symbol()<CR>', opts)
end

local base_config = function(_config)
  return vim.tbl_deep_extend("force", {
      on_attach = on_attach,
      capabilities = require("cmp_nvim_lsp").default_capabilities()
  }, _config or {})
end

local cpp_config = function(_config)
  return base_config(_config)
end

local python_config = function(_config)
  return base_config(_config)
end

local go_config = function(_config)
  return base_config(_config)
end

local ts_config = function(_config)
  return base_config(_config)
end

M.cpp_config = cpp_config
M.python_config = python_config
M.go_config = go_config
M.ts_config = ts_config

return M
