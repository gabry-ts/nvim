return {
  { "loctvl842/monokai-pro.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "nyoom-engineering/oxocarbon.nvim",
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  { "projekt0n/github-nvim-theme" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },
  {

    "LazyVim/LazyVim",
    opts = {
      colorscheme = "moonfly",
    },
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
}
