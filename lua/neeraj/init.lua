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
require("neeraj.hlchunk")
require("neeraj.highlight-colors")
require("neeraj.copilot-chat")
-- -- Lua
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

vim.cmd("command! MakeTags !ctags -R .")

require("nvim-web-devicons").setup()

-- oil file explorer
require("oil").setup({
	lsp_file_methods = {
		autosave_changes = true,
	},
	keymaps = {
		["<C-p>"] = {
			function()
				require("telescope.builtin").git_files()
			end,
		},
		["<leader>pp"] = "actions.preview",
		["<leader>ff"] = {

			function()
				require("telescope.builtin").find_files({
					cwd = require("oil").get_current_dir(),
				})
			end,
			mode = "n",
			nowait = true,
			desc = "Find files in the current directory",
		},
	},
})
