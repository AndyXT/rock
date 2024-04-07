vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>sf', '<cmd>Files<CR>')
vim.keymap.set('n', '<leader>sg', '<cmd>Rg<CR>')
-- vim.keymap.set('n', '<leader>sw', [[<cmd>Rg <C-R>=expand('<cword>')<CR><CR>]])
vim.cmd([[
nnoremap <Leader>sw :Rg <C-r>=expand('<cword>')<CR><CR>
]])
vim.keymap.set('n', '<leader>sb', '<cmd>Buffers<CR>')
