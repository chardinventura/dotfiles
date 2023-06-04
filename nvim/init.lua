-- Commands
vim.cmd[[colorscheme dracula]]

vim.cmd[[
	highlight CocWarningSign ctermfg=190
	highlight CocUnusedHighlight ctermfg=190
	highlight CocErrorSign ctermfg=196
	highlight CocErrorHighlight ctermfg=196
]]

-- Variables
vim.g.mapleader = ' '
vim.g.maplocalleader = ','
vim.g.nowrap = true

vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true
vim.opt.undofile = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showcmd = true
vim.opt.showmode = false

-- Load mappings
require('mappings')

-- Load plugins
require('plugins')
