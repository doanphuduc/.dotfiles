require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<Esc>"] = require('telescope.actions').close
      }
      -- n = {
      --   ["<Del>"] = require('telescope.actions').close
      -- }
    },
    prompt_prefix = "❯ ",
    selection_caret = "❯ ",
    sorting_strategy = "ascending",
    color_devicons = true,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    layout_config = {
      prompt_position = "top",
    },
  },
})

-- require("telescope").load_extension("fzf")

local nnoremap = require('doanphuduc.keymap').nnoremap
nnoremap('<Leader>f', function()
  require('telescope.builtin').find_files()
end)
nnoremap('<Leader>g', function()
  require('telescope.builtin').live_grep()
end)
nnoremap('gr', function()
  require('telescope.builtin').lsp_references()
end)
