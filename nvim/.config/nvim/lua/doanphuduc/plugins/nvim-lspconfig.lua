local lsp = require('doanphuduc.plugins.nvim-lspconfig.lsp')
-- CPP LSP (clangd)
local cpp_config = require('doanphuduc.plugins.nvim-lspconfig.config').cpp_config()
local clangd = lsp.clangd

clangd(cpp_config)

-- Python LSP (pyright)
local python_config = require('doanphuduc.plugins.nvim-lspconfig.config').python_config()
local pyright = lsp.pyright

pyright(python_config)

-- Go LSP (gopls)
local go_config = require('doanphuduc.plugins.nvim-lspconfig.config').go_config()
local gopls = lsp.gopls

gopls(go_config)

-- TS LSP (js)
local tsserver_config = require('doanphuduc.plugins.nvim-lspconfig.config').tsserver_config()
local tsserver = lsp.tsserver

tsserver(tsserver_config)

