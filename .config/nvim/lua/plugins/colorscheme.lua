return {
	{
		"rebelot/kanagawa.nvim",
	},

	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		--    		opts = {
		--			overrides = {
		--				Normal = { bg = "#282828" },
		--				SignColumn = { bg = "#282828" },
		--			},
		--		},
	},

	{ "nyoom-engineering/oxocarbon.nvim" },

	{ "rose-pine/neovim", name = "rose-pine" },

	{ "neanias/everforest-nvim" },

	{ "gbprod/nord.nvim" },

	{ "baliestri/aura-theme" },

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
				color_overrides = {
					mocha = {
						base = "#000000",
						mantle = "#000000",
						crust = "#000000",
					},
				},
			},
		},
	},
}
