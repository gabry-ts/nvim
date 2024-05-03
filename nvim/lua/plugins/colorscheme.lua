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
}
