local nnoremap = require('doanphuduc.keymap').nnoremap
local vnoremap = require('doanphuduc.keymap').vnoremap
local xnoremap = require('doanphuduc.keymap').xnoremap
local vmap = require('doanphuduc.keymap').vmap

-- Fix n and N. Keep cursor in center
nnoremap('n', 'nzz')
nnoremap('N', 'Nzz')

-- Keep center when join lines
nnoremap('J', 'mzJ`z')

-- Leader -o/O insert blank line below/above
nnoremap('<Leader>o', 'o<ESC>')
nnoremap('<Leader>O', 'O<ESC>')

-- Move to the next/previous buffer, save if possible
nnoremap('<Tab>', ':bn<CR>')
nnoremap('<S-Tab>', ':bp<CR>')

-- Split behaviour
nnoremap('<Leader>\\', ':vsplit<CR>')
nnoremap('<Leader>-', ':split<CR>')

-- Move lines up and down in NORMAL, VISUAL
nnoremap('<C-j>', ':move .+1<CR>')
nnoremap('<C-k>', ':move .-2<CR>')
vnoremap('<C-j>', ":move '>+1<CR>gv=gv")
vnoremap('<C-k>', ":move '<-2<CR>gv=gv")

-- Shorter movement between windows
nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-j>', '<C-w>j')
nnoremap('<C-k>', '<C-w>k')
nnoremap('<C-l>', '<C-w>l')

-- Move up and down 10 lines with C-d and C-u
nnoremap('<C-u>', '10kzz')
nnoremap('<C-d>', '10jzz')

-- Resize windows
nnoremap('<', ':vertical resize -5<CR>')
nnoremap('>', ':vertical resize +5<CR>')
nnoremap('+', ':resize -5<CR>')
nnoremap('_', ':resize +5<CR>')

-- Buffer killer
nnoremap('Q', ':BD<CR>')

-- Make Y behave same as C, D
nnoremap('Y', 'y$')

-- Delete and paste
xnoremap('<Leader>p', '"_dP')

-- Remove highlight with two Escape
nnoremap('<Esc><Esc>', ':<C-u>nohlsearch<CR>', { silent = false } )

-- Use tab to indent block
vmap('<Tab>', '>gv')
vmap('<S-Tab>', '<gv')

nnoremap('\\', ":<C-u> lua require('doanphuduc.misc').JumpBuffer(vim.v.count)<CR>")

-- nnoremap('<C-w>', ':!rsync -av ../rdma-examples/ pduc@ny5-dtllab01.dtl:/home/pduc/workspace/rdma-examples<CR>', { silent = false })

-- vim.cmd('command! S !rsync -av ../rdma-examples/ pduc@ny5-dtllab01.dtl:/home/pduc/workspace/rdma-examples')

