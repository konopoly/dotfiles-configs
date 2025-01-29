-- remap fzf-lua commands
vim.cmd([[command! -nargs=* Files Fzf files <args>]])
vim.cmd([[command! -nargs=* Lines Fzf lines <args>]])
vim.cmd([[command! -nargs=* BLines Fzf blines <args>]])
vim.cmd([[command! -nargs=* Buffers Fzf buffers <args>]])
vim.cmd([[command! -nargs=* Grep Fzf live_grep_resume <args>]])
vim.cmd([[command! -nargs=* GrepResume Fzf buffers <args>]])

return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  grep = { rg_opts = "--hidden --column --line-number --no-heading --color=always --smart-case --glob '!.git/'" },
  config = function()
    require("fzf-lua").setup({})
  end
}
