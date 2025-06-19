return {
  -- {
  --   "folke/snacks.nvim",
  --   priority = 1000,
  --   lazy = false,
  --   ---@type snacks.Config
  --   opts = {
  --     -- your configuration comes here
  --     -- or leave it empty to use the default settings
  --     -- refer to the configuration section below
  --     bigfile = { enabled = true },
  --     dashboard = { enabled = true },
  --     explorer = { enabled = true },
  --     indent = { enabled = true },
  --     input = { enabled = true },
  --     picker = { enabled = true },
  --     notifier = { enabled = true },
  --     quickfile = { enabled = true },
  --     scope = { enabled = true },
  --     scroll = { enabled = true },
  --     statuscolumn = { enabled = true },
  --     words = { enabled = true },
  --   },
  -- },
  {
    "coder/claudecode.nvim",
    dependencies = {
      "folke/snacks.nvim", -- Optional for enhanced terminal
    },
    opts = {
      -- Server options
      port_range = { min = 10000, max = 65535 },
      auto_start = true,
      log_level = "info",

      -- Terminal options
      terminal = {
        split_side = "right",
        split_width_percentage = 0.3,
        provider = "snacks", -- or "native"
      },

      -- Diff options
      diff_opts = {
        auto_close_on_accept = true,
        vertical_split = true,
      },
    },
    config = true,
    keys = {
      { "<leader>jc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>js", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      { "<leader>jo", "<cmd>ClaudeCodeOpen<cr>", desc = "Open Claude" },
      { "<leader>jx", "<cmd>ClaudeCodeClose<cr>", desc = "Close Claude" },
    },
  },
}
