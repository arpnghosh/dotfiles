return {
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			require("tokyonight").setup({
				-- vim.cmd([[colorscheme tokyonight-night]]),
			})
		end,
	},
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			-- custom options here
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
			-- vim.cmd([[colorscheme tokyodark]])
		end,
	},
	{
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({
				transparent = false,
				style = {
					comments = "none",
					strings = "none",
					keyword_return = "none",
				},
			})
			-- vim.cmd([[colorscheme vague]])
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		config = function()
			-- vim.cmd([[colorscheme oxocarbon]])
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				floavour = "mocha",
				no_italic = true,
				transparent_background = false,
				custom_highlights = function(colors)
					return {
						WinSeparator = {
							fg = colors.surface0,
						},
					}
				end,
				color_overrides = {
					mocha = {
						base = "#11111b",
						mantle = "#11111b",
						-- base = "#000000",
						-- mantle = "#000000",
					},
				},
				integrations = {
					gitsigns = true,
					mason = true,
					treesitter = true,
				},
			})
			vim.cmd([[colorscheme catppuccin-mocha]])
		end,
	},
	{
		"sainnhe/gruvbox-material",
		config = function()
			-- vim.o.background = "dark"
			vim.cmd("let g:gruvbox_material_background= 'hard'")
			vim.cmd("let g:gruvbox_material_transparent_background = 0")
			vim.cmd("let g:gruvbox_material_disable_italic_comment = 1")
			vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
			vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='colored'")
			vim.cmd("let g:gruvbox_material_enable_bold=0")
			vim.cmd("let g:gruvbox_material_enable_italic=0")
			-- vim.cmd([[colorscheme gruvbox-material]])
		end,
	},
	{
		"sainnhe/sonokai",
		config = function()
			-- vim.cmd("let g:sonokai_style='default'")
			-- vim.cmd([[colorscheme sonokai]])
		end,
	},
}
