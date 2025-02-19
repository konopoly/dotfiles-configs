return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.barbar_auto_setup = false
    vim.g.barbar_plugin_persist = 1 -- Enable per-window buffer lists

    require("barbar").setup({
      animation = true,
      auto_hide = false,
      tabpages = true,
      icons = {
        button = "󰖭",
        inactive = { button = "󰖭" },
      },
    })

    -- Example keymaps (optional)
    local map = vim.api.nvim_set_keymap
    opts = { noremap = true, silent = true }
    map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
    map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
    map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
    map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
  end
}
