-- Remember fix some bugs that dracula after plugin override Normal color
-- if has('nvim-0.8')
--   " # Misc
--   hi! link @punctuation.bracket Normal
--   " # Functions
--   hi! link @property Normal
--   " # Variable
--   hi! link @variable Normal
--   " # Text
--   hi! link @text Normal
--   " # Tags
--   hi! link @tag.delimiter Normal
-- endif

local ok, _ = pcall(vim.cmd, [[
  hi! clear @punctuation.bracket
  hi! clear @property
  hi! clear @variable
  hi! clear @text
  hi! clear @tag.delimiter
]])
