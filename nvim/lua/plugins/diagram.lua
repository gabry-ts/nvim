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

    -- Aggiungi al menu which-key
    local wk = require("which-key")
    wk.register({
      k = {
        name = "Venn",
        v = { "<cmd>lua Toggle_venn()<CR>", "Toggle Venn" },
        J = { "<C-v>j:VBox<CR>", "Draw Down" },
        K = { "<C-v>k:VBox<CR>", "Draw Up" },
        L = { "<C-v>l:VBox<CR>", "Draw Right" },
        H = { "<C-v>h:VBox<CR>", "Draw Left" },
      },
    }, { prefix = "<leader>" })

    -- Aggiungi la mappatura per la modalità visuale
    wk.register({
      f = { ":VBox<CR>", "Draw Box" },
    }, { mode = "v", prefix = "<leader>v" })
  end,
}
