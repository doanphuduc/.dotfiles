local A = vim.api

local yank_group = A.nvim_create_augroup('HighlightYank', {})

-- Prevent continue commenting
A.nvim_create_autocmd('FileType', {
  pattern = '*',
  command = 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'
})

-- Custom filetype
A.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = '*.pconf',
  command = 'set filetype=pconf'
})

-- Highlight yank area
A.nvim_create_autocmd('TextYankPost', {
  group = yank_group,
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end
})

-- A.nvim_create_autocmd('BufRead,BufNewFile', {
--   pattern = '*.js',
--   command = 'set filetype=javascript.jsx'
-- })

A.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = '*.jsx',
  command = 'set filetype=jsx'
})

