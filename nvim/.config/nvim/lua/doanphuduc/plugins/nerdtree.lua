local cmd = vim.cmd
local nnoremap = require('doanphuduc.keymap').nnoremap

-- fzf config -- tricky way to run vim scripts in lua :s
local ok, _ = pcall(
    cmd, 
[[
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
]]
)

nnoremap('<C-b>', ':NERDTreeToggle<CR>')
nnoremap('<C-f>', ':NERDTreeFind<CR>')

