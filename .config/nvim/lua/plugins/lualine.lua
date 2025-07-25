return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",

	config = function()
		local theme = function()
			local colors = {
				black = "#151515",
				white = "#ffffff",
			}
			return {
				normal = {
					a = { bg = colors.black, fg = colors.white, gui = "bold" },
				},
			}
		end
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

		local location = function()
			local currentLine = vim.fn.line(".")
			local totalLine = vim.fn.line("$")
			return currentLine .. " of " .. totalLine
		end

		local mode = function()
			return string.upper(string.sub(vim.api.nvim_get_mode().mode, 1, 3))
		end

		require("lualine").setup({
			options = {
				theme = theme(),
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
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
						update_in_insert = true,
					},
				},
				lualine_y = { clients_lsp },
				lualine_z = {
					{ location },
				},
			},
		})
	end,
}
