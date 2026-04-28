-- Re-run :TSUpdate whenever nvim-treesitter is installed or updated, mirroring
-- the previous `build = ":TSUpdate"` lazy.nvim hook.
vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "nvim-treesitter" and (kind == "install" or kind == "update") then
			if not ev.data.active then
				vim.cmd.packadd("nvim-treesitter")
			end
			vim.cmd("TSUpdate")
		end
	end,
})

vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "master" },
})

---@diagnostic disable-next-line: missing-fields
require("nvim-treesitter.configs").setup({
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
})
