return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",

	config = function()
		local clients_lsp = function()
			local clients = vim.lsp.get_clients()
			if next(clients) == nil then
				return ""
			end
			local c = {}
			for _, client in pairs(clients) do
				table.insert(c, client.name)
			end
			return table.concat(c, "|")
		end

		local showLines = function()
			local currentLine = vim.fn.line(".")
			local totalLine = vim.fn.line("$")
			return currentLine .. ":" .. totalLine
		end

		local mode = function()
			return string.upper(string.sub(vim.api.nvim_get_mode().mode, 1, 1))
		end

		require("lualine").setup({
			options = {
				theme = "auto",
				icons_enabled = false,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { mode },
				lualine_b = { "filename" },
				lualine_c = {
					{
						"branch",
					},
					{
						"diff",
						symbols = { added = "+", modified = "~", removed = "-" },
						colored = false,
					},
				},
				lualine_x = {
					{
						"diagnostics",
						symbols = { error = " ", warn = "  ", info = "  ", hint = " " },
						update_in_insert = true,
					},
				},
				lualine_y = { clients_lsp },
				lualine_z = { showLines },
			},
		})
	end,
}
