local lasso = require('lasso')
lasso.setup {
	-- marks_tracker_path = 'custom/path/to/marks/tracker'
}

-- Mark current file
vim.keymap.set('n', vim.g.mapleader .. 'm', function() lasso.mark_file() end)

-- Go to marks tracker (editable, use `gf` to go to file under cursor)
vim.keymap.set('n', vim.g.mapleader .. 'M', function() lasso.open_marks_tracker() end)

-- Jump to n-th marked file (n-th line of marks tracker)
vim.keymap.set('n', vim.g.mapleader .. '1', function() lasso.open_marked_file(1) end)
vim.keymap.set('n', vim.g.mapleader .. '2', function() lasso.open_marked_file(2) end)
vim.keymap.set('n', vim.g.mapleader .. '3', function() lasso.open_marked_file(3) end)
vim.keymap.set('n', vim.g.mapleader .. '4', function() lasso.open_marked_file(4) end)

-- Create or jump to n-th terminal
vim.keymap.set('n', vim.g.mapleader .. '<F1>', function() lasso.open_terminal(1) end)
vim.keymap.set('n', vim.g.mapleader .. '<F2>', function() lasso.open_terminal(2) end)
vim.keymap.set('n', vim.g.mapleader .. '<F3>', function() lasso.open_terminal(3) end)
vim.keymap.set('n', vim.g.mapleader .. '<F4>', function() lasso.open_terminal(4) end)
