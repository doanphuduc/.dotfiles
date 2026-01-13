local nnoremap = require('doanphuduc.keymap').nnoremap
local vnoremap = require('doanphuduc.keymap').vnoremap
local xnoremap = require('doanphuduc.keymap').xnoremap
local vmap = require('doanphuduc.keymap').vmap

-- -- Fix n and N. Keep cursor in center
-- nnoremap('n', 'nzz')
-- nnoremap('N', 'Nzz')

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

vim.keymap.set("n", "<Leader>p", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format buffer" })

vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

local copilot_on = true
vim.api.nvim_create_user_command("CopilotToggle", function()
	if copilot_on then
		vim.cmd("Copilot disable")
	else
		vim.cmd("Copilot enable")
	end
	copilot_on = not copilot_on
end, { nargs = 0 })

vim.keymap.set('n', '<Leader>cq', ":Copilot disable<CR>", { desc = 'Copilot Disable' })
vim.keymap.set('n', '<Leader>cs', ":Copilot enable<CR>", { desc = 'Copilot Enable' })
vim.keymap.set('n', '<Leader>cc', ":CopilotChat<CR>", { desc = 'Copilot Chat' })
vim.keymap.set('v', '<Leader>cc', ":CopilotChat<CR>", { desc = 'Copilot Chat' })
vim.keymap.set('v', '<Leader>ce', ":CopilotChatExplain<CR>", { desc = 'Copilot Chat Explain' })
vim.keymap.set('v', '<Leader>cf', ":CopilotChatFix<CR>", { desc = 'Copilot Chat Fix' })
vim.keymap.set('v', '<Leader>cr', ":CopilotChatReview<CR>", { desc = 'Copilot Chat Review' })
vim.keymap.set('v', '<Leader>co', ":CopilotChatOptimize<CR>", { desc = 'Copilot Chat Optimize' })
vim.keymap.set('v', '<Leader>ct', ":CopilotChatTests<CR>", { desc = 'Copilot Chat Tests' })
vim.keymap.set('v', '<Leader>cm', ":CopilotChatCommit<CR>", { desc = 'Copilot Chat Commit' })

