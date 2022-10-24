local clangd = {}

clangd.serve = function(config)
    require('lspconfig').clangd.setup(config)
end

return clangd
