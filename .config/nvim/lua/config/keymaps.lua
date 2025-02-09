vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

--vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
--vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
--vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
--vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Helix inspired remaps
vim.keymap.set("n", "gh", "0", { noremap = true, silent = true })
vim.keymap.set("n", "gl", "$", { noremap = true, silent = true })
vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true })

-- vim.keymap.set("n", "<leader>th", "<CMD>Telescope colorscheme<CR>", { desc = "colorschemes" })

-- escape remap
-- vim.keymap.set("i", "kk", "<Esc>", { desc = "go to normal mode from insert mode" })
-- vim.keymap.set("v", "kk", "<Esc>", { desc = "go to normal mode from visual mode" })

-- vim.keymap.set("n", "gd", ":vsplit | lua vim.lsp.buf.defination()<CR>")
