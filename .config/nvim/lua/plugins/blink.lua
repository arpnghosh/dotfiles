vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("*") },
})

require("blink.cmp").setup({
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
	},
	sources = {
		default = { "lsp", "buffer", "path" },
	},
	completion = {
		menu = {
			winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
			border = "rounded",
			draw = {
				columns = {
					{ "kind_icon" },
					{ "label", "label_description", gap = 1 },
				},
			},
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 0,
			window = { border = "rounded" },
		},
	},
	signature = { window = { border = "rounded" } },
})
