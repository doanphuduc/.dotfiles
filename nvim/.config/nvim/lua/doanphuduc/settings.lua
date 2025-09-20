local g = vim.g
local o = vim.o
local opt = vim.opt
local cmd = vim.cmd

-- Set colorscheme (disable italic text, do not favour)
-- g.dracula_italic = 0
local ok, _ = pcall(cmd, 'colorscheme catppuccin')

-- Leader mapping
g.mapleader = " "

-- Mouse scroll
opt.mouse = "a"

-- Termgui colors
o.termguicolors = true

-- Buffer index & name
o.ruler = true

-- Indent
o.tabstop = 4
o.shiftwidth = 4
o.shiftround = true
o.expandtab = true
o.smartindent = true
-- o.autoindent = true
-- o.cindent = true

-- Wrap line when line too long
o.wrap = true

-- Auto write before running command
o.autowrite = true

-- Limit 100 characters in line
o.textwidth = 80
vim.api.nvim_set_option_value("colorcolumn", "80", {})

o.joinspaces = false

-- Hybrid number
o.number = true
o.relativenumber = true

-- Highlight current line
o.cursorline = true

o.signcolumn = "yes"

-- More natural split behaviour
o.splitbelow = true
o.splitright = true

-- Favorite gui cursor
-- o.guicursor=n-v-c-sm:block,i:block-blinkwait175-blinkoff150-blinkon175,ci-ve:ver25-Cursor,r-cr-o:hor20
local ok, _ = pcall(cmd, 'set guicursor=n-v-c-sm:block,i:block-blinkwait175-blinkoff150-blinkon175,ci-ve:ver25-Cursor,r-cr-o:hor20')

-- Sync clipboard between OS and nvim
o.clipboard = 'unnamedplus'

-- Searching
o.incsearch = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Remember 50 items in command line history
o.history = 50

-- Allow misspelling
local ok, _ = pcall(cmd, 'cnoreabbrev Q q')
local ok, _ = pcall(cmd, 'cnoreabbrev W w')
-- cmd.cnoreabbrev({'Q', 'q'})
-- cmd.cnoreabbrev({'W', 'w'})

-- Fix bugs: Polygot change the tabsize
local ok, _ = pcall(cmd, "let g:polyglot_disabled = ['autoindent']")
local ok, _ = pcall(cmd, [[
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx"
]])

local notify = vim.notify
vim.notify = function(msg, level, opts)
  -- filter out lspconfig deprecation warnings
  if type(msg) == "string" and msg:match("require%(\'lspconfig\'%)") then
    return
  end
  notify(msg, level, opts)
end

