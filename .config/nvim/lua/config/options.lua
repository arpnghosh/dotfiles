local opt = vim.opt

opt.guifont = "MonoLisa"
opt.wrap = true
opt.conceallevel = 1
opt.cursorline = false
opt.relativenumber = true
opt.hlsearch = false
opt.incsearch = true
opt.scrolloff = 4
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.inccommand = "split"

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.termguicolors = true
opt.swapfile = false
opt.cinoptions:append(":0")
opt.background = "dark"
-- opt.background = "light"
-- opt.colorcolumn = "80"
vim.diagnostic.config({ virtual_text = { current_line = true } })
