vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })

vim.keymap.set("x", "<leader>p", '"_dP', { noremap = true })

vim.keymap.set("i", "<C-L>", "<Plug>(copilot-accept-word)")
