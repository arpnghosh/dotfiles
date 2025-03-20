return {
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				compile = false, -- enable compiling the colorscheme
				undercurl = true, -- enable undercurls
				commentStyle = { italic = false },
				functionStyle = {},
				keywordStyle = { italic = false },
				statementStyle = { bold = false },
				typeStyle = {},
				transparent = false, -- do not set background color
				dimInactive = false, -- dim inactive window `:h hl-NormalNC`
				terminalColors = true,
				overrides = function(colors) -- add/modify highlights
					return {}
				end,
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
				theme = "wave", -- Load "wave" theme
				background = {
					dark = "wave",
					light = "lotus",
				},
			})
			if vim.o.background == "dark" then
				vim.cmd([[colorscheme kanagawa]])
			else
				vim.cmd([[colorscheme catppuccin-latte]])
			end
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				floavour = "latte",
				no_italic = false,
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
						red = "#e55f86",
						green = "#00D787",
						peach = "#EBFF71",
						blue = "#50a4e7",
						mauve = "#9076e7",
						sky = "#50e6e6",
						pink = "#e781d6",

						maroon = "#d15577",
						teal = "#43c383",
						yellow = "#d8e77b",
						lavender = "#4886c8",
						flamingo = "#8861dd",
						sapphire = "#43c3c3",
						rosewater = "#d76dc5",

						text = "#e7e7e7",
						subtext1 = "#dbdbdb",
						subtext2 = "#cacaca",

						overlay2 = "#b2b5b3",
						overlay1 = "#a8aba9",
						overlay0 = "#9ea19f",

						surface2 = "#353331",
						surface1 = "#2f2e2d",
						surface0 = "#2c2a2a",

						base = "#171717",
						mantle = "#111111",
						crust = "#0a0a0a",
					},
				},
				integrations = {
					gitsigns = true,
					mason = true,
					treesitter = true,
				},
			})
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
}
