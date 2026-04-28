vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

require("conform").setup({
	notify_on_error = false,
	formatters_by_ft = {
		c = { "clang-format" },
		cpp = { "clang-format" },
		lua = { "stylua" },
		json = { "jq" },
		jsonc = { "jq" },
		python = { "black" },
		go = { "gofumpt" },
		html = { "biome" },
		css = { "biome" },
		javascript = { "biome" },
		typescript = { "biome" },
		typescriptreact = { "biome" },
		rust = { "rustfmt" },
	},
})
