-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local n = "n"
vim.keymap.set(n, "<leader>dk", function()
  require("dap").continue()
end)

vim.keymap.set(n, "<leader>dl", function()
  require("dap").run_last()
end)

-- add empty lines without leave normal mode
vim.keymap.set("n", "<CR>", "o<Esc>k")
vim.keymap.set("n", "<S-CR>", "O<Esc>j")
