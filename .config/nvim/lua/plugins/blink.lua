return {
	"saghen/blink.cmp",
	version = "*",
	opts = {
		completion = {
			menu = {
				border = "rounded",
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{
							"kind_icon",
							"kind",
						},
					},
				},
			},
			documentation = {
				auto_show = true,
				window = {
					border = "rounded",
				},
			},
		},
	},
}
