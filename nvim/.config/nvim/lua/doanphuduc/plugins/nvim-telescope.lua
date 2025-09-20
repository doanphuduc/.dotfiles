local builtin = require('telescope.builtin')
local actions = require("telescope.actions")
vim.keymap.set('n', '<Leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<Leader>g', builtin.live_grep, { desc = 'Telescope live grep' })

require("telescope").setup({
  defaults = {
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
    mappings = {
      i = {
        ["<Esc>"] = actions.close
      },
    },
  },
})


