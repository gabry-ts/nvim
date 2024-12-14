return {
  "jbyuki/venn.nvim",
  config = function()
    -- venn.nvim: enable or disable keymappings
    function _G.Toggle_venn()
      local venn_enabled = vim.inspect(vim.b.venn_enabled)
      if venn_enabled == "nil" then
        vim.b.venn_enabled = true
        vim.cmd([[setlocal ve=all]])
        -- draw a line on HJKL keystokes
        vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
        -- draw a box by pressing "f" with visual selection
        vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true })
      else
        vim.cmd([[setlocal ve=]])
        vim.api.nvim_buf_del_keymap(0, "n", "J")
        vim.api.nvim_buf_del_keymap(0, "n", "K")
        vim.api.nvim_buf_del_keymap(0, "n", "L")
        vim.api.nvim_buf_del_keymap(0, "n", "H")
        vim.api.nvim_buf_del_keymap(0, "v", "f")
        vim.b.venn_enabled = nil
      end
    end

    local wk = require("which-key")
    wk.setup()
    wk.add({
      { "<leader>k", desc = "Venn" },
      { "<leader>kH", "<C-v>h:VBox<CR>", desc = "Draw Left" },
      { "<leader>kJ", "<C-v>j:VBox<CR>", desc = "Draw Down" },
      { "<leader>kK", "<C-v>k:VBox<CR>", desc = "Draw Up" },
      { "<leader>kL", "<C-v>l:VBox<CR>", desc = "Draw Right" },
      { "<leader>kv", "<cmd>lua Toggle_venn()<CR>", desc = "Toggle Venn" },
    })

    wk.add({
      { "<leader>vf", ":VBox<CR>", desc = "Draw Box", mode = "v" },
    })
  end,
}
