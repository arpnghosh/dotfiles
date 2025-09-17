local active_colorscheme = "catppuccin"

if active_colorscheme == "gruvboxbaby" then
  vim.cmd("colorscheme gruvboxbaby")
end

return {
	{ "rose-pine/neovim" },
	{
		"nuvic/flexoki-nvim",
		name = "flexoki",
		enabled = true,
		priority = 1000,
		---@return Options
		opts = function()
			local palette = require("flexoki.palette")
			return {
				styles = {
					italic = true,
				},
				highlight_groups = {
					["@variable"] = { fg = palette.text, italic = false },
					["@parameter"] = { fg = palette.purple_two, italic = false },
					["@variable.parameter"] = { fg = palette.purple_two, italic = false },
					-- normal colorscheme
					StatusLine = { fg = palette.orange_two, bg = palette.overlay },
					StatusLineNC = { bg = palette.overlay },
					QuickFixLine = { bg = palette.highlight_high },
					Winbar = { bg = palette.base },
					WinbarNC = { bg = palette.base },
				},
			}
		end,
		config = function(_, opts)
			require("flexoki").setup(opts)
			if active_colorscheme == "flexoki" then
				vim.cmd("colorscheme flexoki")
			end
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
			if active_colorscheme == "carbonfox" then
				vim.cmd("colorscheme carbonfox")
			end
		end,
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
			if active_colorscheme == "kanagawa" then
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
						base = "#11111b",
						mantle = "#11111b",
					},
				},
				integrations = {
					barbecue = { dim_dirname = true, bold_basename = true, dim_context = false, alt_background = false },
					gitsigns = true,
					markdown = true,
					mason = true,
					native_lsp = { enabled = true, inlay_hints = { background = true } },
					neogit = true,
					blink_cmp = {
						style = "bordered",
					},
					treesitter = true,
					treesitter_context = true,
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
				"let g:gruvbox_material_transparent_background = 1",
				"let g:gruvbox_material_diagnostic_line_highlight = 1",
				"let g:gruvbox_material_diagnostic_virtual_text = 'colored'",
				"let g:gruvbox_material_enable_bold = 0",
				"let g:gruvbox_material_enable_italic = 0",
			}
			for _, cmd in ipairs(cmds) do
				vim.cmd(cmd)
			end
			if active_colorscheme == "gruvbox-material" then
				vim.cmd("colorscheme gruvbox-material")
			end
		end,
	},
}
