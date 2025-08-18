local active_colorscheme = "catppuccin"

return {
	{
		"rose-pine/neovim",
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			local bg0 = "#1d2021"
			require("gruvbox").setup({
				contrast = "hard",
				overrides = {
					GruvboxBg0 = { fg = bg0 },
					SignColumn = { bg = bg0 },
					GruvboxRedSign = { bg = bg0 },
					GruvboxYellowSign = { bg = bg0 },
					GruvboxGreenSign = { bg = bg0 },
					GruvboxAquaSign = { bg = bg0 },
					GruvboxOrangeSign = { bg = bg0 },
					GruvboxPurpleSign = { bg = bg0 },
					GruvboxBlueSign = { bg = bg0 },
					Normal = { bg = bg0 },
				},
			})
			if active_colorscheme == "gruvbox" then
				vim.cmd("colorscheme gruvbox")
			end
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				compile = false,
				undercurl = true,
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { italic = true },
				statementStyle = { bold = true },
				typeStyle = {},
				transparent = false,
				dimInactive = false,
				terminalColors = true,
				colors = {
					palette = {},
					theme = {
						wave = {},
						lotus = {},
						dragon = {},
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
				overrides = function(colors)
					local theme = colors.theme
					return {
						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none" },
						FloatTitle = { bg = "none" },
					}
				end,
				theme = "wave",
				background = {
					dark = "wave",
					light = "lotus",
				},
			})
			if active_colorscheme == "gruvbox" then
				vim.cmd("colorscheme kanagawa")
			end
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
				term_colors = true,
				transparent_background = false,
				float = {
					transparent = true,
					solid = true,
				},
				custom_highlights = function(colors)
					return {
						WinSeparator = {
							fg = colors.surface0,
						},
					}
				end,
				color_overrides = {
					mocha = {
						base = "#000000",
						mantle = "#000000",
					},
				},
				integrations = {
					blink_cmp = {
						style = "bordered",
					},
					gitsigns = true,
					mason = true,
					nvim_surround = true,
					treesitter = true,
					which_key = true,
				},
			})
			if active_colorscheme == "catppuccin" then
				vim.cmd([[colorscheme catppuccin]])
			end
		end,
	},
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			local cmds = {
				"let g:gruvbox_material_background = 'hard'",
				"let g:gruvbox_material_transparent_background = 0",
				"let g:gruvbox_material_diagnostic_line_highlight = 1",
				"let g:gruvbox_material_diagnostic_virtual_text = 'colored'",
				"let g:gruvbox_material_enable_bold = 0",
				"let g:gruvbox_material_enable_italic = 0",
			}
			for _, cmd in ipairs(cmds) do
				vim.cmd(cmd)
			end
			if active_colorscheme == "gruvbox" then
				vim.cmd("colorscheme gruvbox-material")
			end
		end,
	},
}
