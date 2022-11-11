require('lualine').setup({
  options = {
    theme = 'dracula',
    -- section_separators = '',
    -- component_separators = ''
    always_divide_middle = false,
  },
  sections = {
    lualine_a = {{'mode'}},
    lualine_b = {'branch'},
    lualine_c = {{'filename', path = 1}},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  tabline = {
		lualine_a = {
      {
        "buffers",
        right_padding = 2,
        symbols = {
          alternate_file = ""
        },
        mode = 2, -- Show buffer index (not buffer number) to ultilize jumping buffer
        max_length = vim.o.columns - 10 -- 10 spaces for Buffers 
      },
    },
    -- lualine_b = {},
    -- lualine_c = {},

    -- lualine_x = {},
    -- lualine_y = {},
    lualine_y = {{"[[Buffers]]"}},
    -- lualine_z = {{"[[Buffers]]"}},
	},
})
