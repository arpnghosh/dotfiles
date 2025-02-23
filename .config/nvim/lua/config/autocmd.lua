vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("highlight GitSignsChange guibg=NONE")
		vim.cmd("highlight GitSignsAdd guibg=NONE")
		vim.cmd("highlight GitSignsDelete guibg=NONE")
	end,
})
