local g = vim.g
local nnoremap = require('doanphuduc.keymap').nnoremap

g.nvim_tree_refresh_wait = 500

require('nvim-tree').setup({
  -- open_on_setup = true,
  diagnostics = {
    enable = true,
  },
  view = {
    width = 30,
    side = 'left',
  },
  filters = {
    custom = { '.git$', 'node_modules$', '^target$' },
  },
  git = {
    ignore = false,
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  renderer = {
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = false,
      },
      glyphs = {
        default = '',
        git = {
          unstaged = '~',
          staged = '+',
          unmerged = '!',
          renamed = '≈',
          untracked = '?',
          deleted = '-',
        },
      },
    },
    indent_markers = {
      enable = true,
    },
  },
})

nnoremap('<C-b>', ':NvimTreeToggle<CR>')
nnoremap('<C-f>', ':NvimTreeFindFile<CR>')

local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
