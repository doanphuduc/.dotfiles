-- CPP LSP (clangd)
_cpp_config = {
  cmd = require('devcontainers').lsp_cmd({ 'clangd', '--compile-commands-dir=build', "--log=verbose" }) or { "clangd" }
}
local cpp_config = require('doanphuduc.plugins.nvim-lspconfig.config').cpp_config(_cpp_config)

vim.lsp.config('clangd', cpp_config)
vim.lsp.enable('clangd')
-- clangd(cpp_config)

-- Python LSP (pyright)
local python_config = require('doanphuduc.plugins.nvim-lspconfig.config').python_config()

vim.lsp.config('pyright', python_config)
vim.lsp.enable('pyright')

-- Go LSP (gopls)
local go_config = require('doanphuduc.plugins.nvim-lspconfig.config').go_config()
vim.lsp.config('gopls', go_config)
vim.lsp.enable('gopls')

-- gopls(go_config)

-- -- TS LSP (js)
-- local tsserver_config = require('doanphuduc.plugins.nvim-lspconfig.config').tsserver_config()
-- local tsserver = lsp.tsserver

-- tsserver(tsserver_config)
