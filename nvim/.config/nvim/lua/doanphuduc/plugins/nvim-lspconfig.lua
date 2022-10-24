-- CPP LSP
local config = require('doanphuduc.plugins.nvim-lspconfig.config').cpp_config()
local clangd = require('doanphuduc.plugins.nvim-lspconfig.clangd')

clangd.serve(config)

-- Python LSP
