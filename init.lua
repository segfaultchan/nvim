require("config.lazy") -- plugin manager lazy.nvim (it is great)

-- nvim configuration --

vim.cmd.colorscheme "carbonfox"

vim.opt.number = true -- number of line
vim.opt.relativenumber = true -- relative numbers

vim.opt.splitbelow = true -- split window
vim.opt.splitright = true -- split window

vim.g.mapleader = " " -- default is '\'

vim.opt.expandtab = true -- spaces instead tab
vim.opt.tabstop = 2 -- 2 spaces is tab
vim.opt.shiftwidth = 2 -- tabstop value

vim.opt.clipboard = "unnamedplus" -- yank to cliboard :)
