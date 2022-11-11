require('lualine').setup({
  options = {
    theme = 'dracula',
    -- section_separators = '',
    -- component_separators = ''
  },
  tabline = {
		lualine_a = {{"buffers", right_padding = 2, symbols = {alternate_file = ""},},},
    lualine_z = {{"[[Buffers]]"}},
	},
})
