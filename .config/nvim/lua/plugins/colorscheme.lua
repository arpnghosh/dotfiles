return {
	{
		"sainnhe/sonokai",
		priority = 1000,
		config = function()
			vim.o.background = "dark"
			vim.cmd("let g:sonokai_style = 'andromeda'")
		end,
	},
	{
		"sainnhe/everforest",
		priority = 1000,
		config = function()
			vim.o.background = "dark"
			vim.cmd("let g:everforest_background= 'hard'")
		end,
	},
	{
		"sainnhe/edge",
		priority = 1000,
		config = function()
			vim.o.background = "dark"
			vim.cmd("let g:egde_style = 'neon'")
		end,
	},
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			vim.o.background = "dark"
			vim.cmd("let g:gruvbox_material_background= 'hard'")
			vim.cmd("let g:gruvbox_material_transparent_background=1")
			vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
			vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='colored'")
			vim.cmd("let g:gruvbox_material_enable_italic=0")
			vim.cmd("let g:gruvbox_material_disable_italic_comment=1")
			vim.cmd([[colorscheme gruvbox-material]])
		end,
	},
}
