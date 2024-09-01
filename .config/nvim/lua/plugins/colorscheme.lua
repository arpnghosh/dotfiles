return {
	{
		"rebelot/kanagawa.nvim",
	},

	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = {
			overrides = {
				Normal = { bg = "#0f0f0f" },
				SignColumn = { bg = "#0f0f0f" },
			},
		},
	},

	{ "nyoom-engineering/oxocarbon.nvim" },

	{ "rose-pine/neovim", name = "rose-pine" },

	{ "neanias/everforest-nvim" },

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	{
		{
			"catppuccin/nvim",
			name = "catppuccin",
			opts = {
				flavour = "mocha",
				transparent_background = true,
				color_overrides = {
					mocha = {
						base = "#11111b",
						mantle = "#11111b",
						crust = "#11111b",
					},
				},
			},
		},
	},
}
