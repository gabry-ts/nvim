if vim.g.neovide then
  -- disable all animations
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_length = 0
  vim.g.neovide_cursor_antialiasing = false
  vim.g.neovide_cursor_vfx_mode = ""
  vim.g.neovide_scroll_animation_length = 0
  vim.g.neovide_floating_blur_amount_x = 0
  vim.g.neovide_floating_blur_amount_y = 0
  vim.g.neovide_refresh_rate_idle = 0
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_transparency = 1.0
  vim.g.neovide_floating_shadow = false

  -- keybindings for copy/paste
  vim.g.neovide_input_use_logo = true
  vim.keymap.set("n", "<D-v>", '"+p')
  vim.keymap.set("v", "<D-v>", '"+p')
  vim.keymap.set("i", "<D-v>", "<C-r>+")
  vim.keymap.set("c", "<D-v>", "<C-r>+")
  vim.keymap.set("n", "<D-c>", '"+y')
  vim.keymap.set("v", "<D-c>", '"+y')
end
