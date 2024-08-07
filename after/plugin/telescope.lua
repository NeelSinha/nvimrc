local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", function()
	builtin.find_files({ no_ignore = true, hidden = true })
end, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<C-P>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
-- open document symbols
vim.keymap.set("n", "<leader>pds", builtin.lsp_document_symbols)

-- open workspace symbols
vim.keymap.set("n", "<leader>pws", builtin.lsp_workspace_symbols)
