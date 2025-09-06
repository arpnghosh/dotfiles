vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, { desc = "Open diagnostic [Q]uickfix list" })

-- Helix inspired remaps
vim.keymap.set("n", "gh", "0", { noremap = true, silent = true })
vim.keymap.set("n", "gl", "$", { noremap = true, silent = true })
vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true })

-- bind format to a keymap
vim.api.nvim_create_user_command("FormatBuffer", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

vim.keymap.set({"n", "v"},"<leader>cf", "<cmd>FormatBuffer<cr>", {desc = "Format File"})
