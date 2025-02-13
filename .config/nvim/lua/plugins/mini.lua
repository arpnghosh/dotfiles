return {
	{
		"echasnovski/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		{
			"echasnovski/mini.pairs",
			version = false,
			config = function()
				require("mini.pairs").setup()
			end,
		},
	},
}
