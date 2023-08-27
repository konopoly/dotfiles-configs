vim.wo.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

-- remap fzf-lua commands to 
vim.cmd([[command! -nargs=* Fzf FzfLua <args>]])
vim.cmd([[command! -nargs=* Files Fzf files <args>]])
vim.cmd([[command! -nargs=* Lines Fzf lines <args>]])
vim.cmd([[command! -nargs=* Buffers Fzf buffers <args>]])
vim.cmd([[command! -nargs=* Grep Fzf live_grep_resume <args>]])
vim.cmd([[command! -nargs=* GrepResume Fzf buffers <args>]])

--bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "folke/which-key.nvim",
  "folke/neodev.nvim",
  "https://github.com/scrooloose/nerdtree.git",
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({})
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  "pangloss/vim-javascript",
  "maxmellon/vim-jsx-pretty"
})

