return {
  -- add gruvbox
  { "loctvl842/monokai-pro.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro-machine",
    },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
}
