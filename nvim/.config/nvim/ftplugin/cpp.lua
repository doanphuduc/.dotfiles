local opt_local = vim.opt_local

-- opt_local.cindent = true
-- opt_local.wrap = false
-- opt_local.expandtab = true
-- opt_local.cinkeys:remove({':'})
-- opt_local.cino:append({'g1', 'h1', 'j1', '(0', 'ws', 'Ws'})

-- Comment chars
opt_local.commentstring = "// %s"

-- Disable lsp diagnotics
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
-- vim.lsp.inlay_hint.enable(true)
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 2,
    format = function(diagnostic)
      return diagnostic.message  -- or customize with severity prefix
    end,
  },
})

