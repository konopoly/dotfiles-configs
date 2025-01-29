vim.wo.relativenumber = true
--vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.wo.wrap = false
vim.g.mapleader = ' '

vim.g.skip_ts_context_commentstring_module = true

-- load lazy.nvim
require("config.lazy")
