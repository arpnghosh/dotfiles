return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "ruby" },
		},
		indent = { enable = true, disable = { "ruby" } },
		ensure_installed = {
			"bash",
			"c",
			"javascript",
			"html",
			"lua",
			"luadoc",
			"markdown",
			"typescript",
			"tsx",
			"go",
		},
		auto_install = true,
	},
	config = function(_, opts)
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup(opts)
	end,
}
