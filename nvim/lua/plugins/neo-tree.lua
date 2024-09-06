return {
  "nvim-neo-tree/neo-tree.nvim",
  optional = true,
  opts = function(_, opts)
    opts.open_files_do_not_replace_types = opts.open_files_do_not_replace_types
      or { "terminal", "Trouble", "qf", "Outline", "trouble" }
    table.insert(opts.open_files_do_not_replace_types, "edgy")

    opts.event_handlers = opts.event_handlers or {}
    table.insert(opts.event_handlers, {
      event = "neo_tree_buffer_enter",
      handler = function()
        vim.opt_local.relativenumber = true
      end,
    })
  end,
}
