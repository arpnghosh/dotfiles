-- UX
vim.opt.number = true
vim.opt.wrap = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.inccommand = "split"
vim.opt.swapfile = false
vim.opt.undofile = true

-- UI settings
vim.opt.background = "dark"
vim.opt.cursorline = true
vim.opt.guifont = "Iosekva Term"
vim.opt.termguicolors = true
vim.opt.winborder = "rounded"
vim.cmd("colorscheme gruvboxbaby")

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indent settings
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2

vim.diagnostic.config({
	virtual_text = { current_line = true },
	float = { border = "rounded" },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.INFO] = " ",
		},
	},
})
