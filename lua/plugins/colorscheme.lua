return {
  -- Add your favorite colorscheme here
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- Disable catppuccin if it's being loaded from elsewhere
  { "catppuccin/nvim", name = "catppuccin", enabled = false },
  -- Configure LazyVim to load it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
