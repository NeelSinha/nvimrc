-- nnoremap <silent> <leader>F :FormatWrite<CR>
-- this in lua
vim.api.nvim_set_keymap("n", "<leader>f", ":Format<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>F", ":FormatWrite<CR>", { noremap = true, silent = true })

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
