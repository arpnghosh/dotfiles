return {
	{ "rose-pine/neovim" },
	{ "folke/tokyonight.nvim" },
	{
		"neanias/everforest-nvim",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
}
