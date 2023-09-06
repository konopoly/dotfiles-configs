-- remap fzf-lua commands
vim.cmd([[command! -nargs=* Fzf FzfLua <args>]])
vim.cmd([[command! -nargs=* Files Fzf files <args>]])
vim.cmd([[command! -nargs=* Lines Fzf lines <args>]])
vim.cmd([[command! -nargs=* BLines Fzf blines <args>]])
vim.cmd([[command! -nargs=* Buffers Fzf buffers <args>]])
vim.cmd([[command! -nargs=* Grep Fzf live_grep_resume <args>]])
vim.cmd([[command! -nargs=* GrepResume Fzf buffers <args>]])

return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
  -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end
}
