require("neeraj.remap")
require("neeraj.plug")
require("neeraj.treeSitter")
print("hello from neeraj")
require("neeraj.lsp")
require("neeraj.lasso")
require("neeraj.comment")
require("neeraj.formatter")
require("neeraj.linter")
require("neeraj.surround")
-- Lua
require("onedark").setup({
	style = "dark",
})
require("onedark").load()
-- Enable line numbers
require("neeraj.linter")
vim.cmd("set number")

-- Enable relative line numbers
vim.cmd("set relativenumber")

-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	-- show all files
	filters = {
		dotfiles = false,
		git_ignored = false,
	},
})
require("nvim-web-devicons").setup()
