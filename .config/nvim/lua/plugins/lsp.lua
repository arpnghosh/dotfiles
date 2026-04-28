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

vim.pack.add({
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/neovim/nvim-lspconfig",
})

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = servers,
})
vim.lsp.enable(servers)
