require("mini.basics").setup()
require("mini.ai").setup()
require("mini.move").setup()
require("mini.diff").setup()
require("mini.files").setup()
require("mini.comment").setup()
require("mini.statusline").setup()
require("mini.starter").setup()
require("mini.sessions").setup()
require("mini.pairs").setup()
require("mini.indentscope").setup()
require("mini.tabline").setup()
require("mini.bracketed").setup()

vim.keymap.set('n', '<leader>.', function() MiniFiles.open(vim.api.nvim_buf_get_name(0), false) end, { desc = "files CWD"})
vim.keymap.set('n', '<leader>gd', function() MiniDiff.toggle_overlay(0) end, { desc = "toggle Git Diff Overlay"})