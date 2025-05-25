local lsp = {}

lsp.clangd = function(config)
    require('lspconfig').clangd.setup(config)
end

lsp.pyright = function(config)
    require('lspconfig').pyright.setup(config)
end

lsp.gopls = function(config)
    require('lspconfig').gopls.setup(config)
end

lsp.tsserver = function(config)
    require('lspconfig').tsserver.setup(config)
end

return lsp
