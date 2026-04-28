vim.pack.add({ "https://github.com/mrjones2014/smart-splits.nvim" })

local smart_splits = require("smart-splits")

vim.keymap.set("n", "<C-h>", smart_splits.move_cursor_left)
vim.keymap.set("n", "<C-j>", smart_splits.move_cursor_down)
vim.keymap.set("n", "<C-k>", smart_splits.move_cursor_up)
vim.keymap.set("n", "<C-l>", smart_splits.move_cursor_right)
vim.keymap.set("n", "<C-c>", "<C-w>c")

vim.keymap.set("n", "<A-h>", smart_splits.resize_left)
vim.keymap.set("n", "<A-j>", smart_splits.resize_down)
vim.keymap.set("n", "<A-k>", smart_splits.resize_up)
vim.keymap.set("n", "<A-l>", smart_splits.resize_right)
