-- netrw
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", vim.cmd.Ex)
-- Escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kk', '<ESC>', {noremap = true, silent = true})
-- Move blocks of code
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
-- Comment blocks
vim.keymap.set('v', 'gc', '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')
