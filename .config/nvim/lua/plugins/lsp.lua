local servers = {
	-- Languages
	"lua_ls",
	"stylua",
	"rust_analyzer",
	"cssls",
	"html",
	"jsonls",
	"gopls",
	"ts_ls",
	"clangd",
	"basedpyright",
	-- Web
	"eslint",
	-- Other
	"dockerls",
}

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = servers,
		})
		vim.lsp.enable(servers)
	end,
}
