vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")

vim.keymap.set({"n", "v"}, "<space>", "<Nop>", {silent = true})

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.keymap.set('n', '<leader>n', ':bnext<CR>')
vim.keymap.set('n', '<leader>p', ':bprev<CR>')

vim.opt.number = true
vim.opt.relativenumber = true
