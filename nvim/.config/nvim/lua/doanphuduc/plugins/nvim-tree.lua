local g = vim.g
local nnoremap = require('doanphuduc.keymap').nnoremap

g.nvim_tree_refresh_wait = 500

require('nvim-tree').setup({
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
