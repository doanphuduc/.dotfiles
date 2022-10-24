local opt_local = vim.opt_local

opt_local.cindent = true
opt_local.wrap = false
opt_local.expandtab = true
opt_local.cinkeys:remove({':'})
opt_local.cino:append({'g1', 'h1', 'j1', '(0', 'ws', 'Ws'})

-- Comment chars
opt_local.commentstring = "// %s"

-- Enable LSP
local config = require('doanphuduc.plugins.nvim-lspconfig.config').cpp_config()
local clangd = require('doanphuduc.plugins.nvim-lspconfig.clangd')

-- Idk why I have to call serve two times to make it works :(((
clangd.serve(config)
clangd.serve(config)
