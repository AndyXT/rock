 local rocks_config = {
     rocks_path = "/home/atreto/.local/share/rock/rocks",
     luarocks_binary = "/home/atreto/.local/share/rock/rocks/bin/luarocks",
 }

 vim.g.rocks_nvim = rocks_config

 local luarocks_path = {
     vim.fs.joinpath(rocks_config.rocks_path, "share", "lua", "5.1", "?.lua"),
     vim.fs.joinpath(rocks_config.rocks_path, "share", "lua", "5.1", "?", "init.lua"),
 }
 package.path = package.path .. ";" .. table.concat(luarocks_path, ";")

 local luarocks_cpath = {
     vim.fs.joinpath(rocks_config.rocks_path, "lib", "lua", "5.1", "?.so"),
     vim.fs.joinpath(rocks_config.rocks_path, "lib64", "lua", "5.1", "?.so"),
 }
 package.cpath = package.cpath .. ";" .. table.concat(luarocks_cpath, ";")

 vim.opt.runtimepath:append(vim.fs.joinpath(rocks_config.rocks_path, "lib", "luarocks", "rocks-5.1", "rocks.nvim", "*"))

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.clipboard = 'unnamedplus'

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") ..  "/.vim/undodir"
vim.opt.undofile = true

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
