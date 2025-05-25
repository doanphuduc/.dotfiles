require("catppuccin").setup({
	flavour = "mocha",
	term_colors = true,
	transparent_background = false,
	no_italic = false,
	no_bold = false,
	styles = {
		comments = { "italic" },
		conditionals = {},
		loops = {},
		functions = { "italic" },
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = { "bold" },
	},
	color_overrides = {
		mocha = {
			base = "#171717", -- background
      surface2 = "#9A9A9A", -- comments
      text = "#F6F6F6",
		},
	},
	highlight_overrides = {
		mocha = function(C)
			return {
				NvimTreeNormal = { bg = C.none },
				CmpBorder = { fg = C.surface2 },
				Pmenu = { bg = C.none },
				NormalFloat = { bg = C.none },
				TelescopeBorder = { link = "FloatBorder" },
			}
		end,
	},
}


-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
