return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },

	config = function()
		require("oil").setup({
			default_file_explorer = true,
			delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},

			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
		})
	end,
}
