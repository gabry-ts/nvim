# nvim

Personal Neovim configuration built on [LazyVim](https://www.lazyvim.org/).

## Stack

- **Base**: LazyVim with lazy.nvim plugin manager
- **Fuzzy finder**: fzf
- **File tree**: Neo-tree
- **Colorscheme**: Moonfly (+ Tokyo Night, Catppuccin, Rose Pine, OneDark Pro, Oxocarbon)
- **GUI**: Neovide support with optimized settings

## Plugins

| Category | Plugins |
|----------|---------|
| **AI** | Copilot Chat, Claude Code, Augment Code |
| **Git** | Fugitive, Gitsigns |
| **Debug** | DAP, DAP-UI (full debugger with breakpoints) |
| **Navigation** | Neo-tree, fzf, vim-tmux-navigator, Edgy |
| **Editing** | Surround, Comment, Refactoring |
| **Languages** | Rust, Python, Jupyter, Prisma, Helm, Tailwind, Java, PHP, Ruby, SQL |
| **UI** | Alpha dashboard (custom ASCII art), Huez (colorscheme picker) |
| **Remote** | remote-nvim (SSH development) |
| **Other** | Diagram rendering, Wakatime, Snake game |

## Language Support

TypeScript/JavaScript, Rust, Python, Java, Ruby, PHP, SQL, Elm, Prisma, Helm, Tailwind, TOML, LaTeX

## Key Bindings

| Key | Action |
|-----|--------|
| `<leader>dk` | DAP continue |
| `<leader>dl` | DAP run last |
| `<CR>` | Add empty line below (normal mode) |
| `<S-CR>` | Add empty line above (normal mode) |

Plus all default [LazyVim keymaps](https://www.lazyvim.org/keymaps).

## Install

```bash
# backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# clone
git clone https://github.com/gabry-ts/nvim ~/.config/nvim
```

## Structure

```
init.lua                 # entry point
lua/config/
  lazy.lua               # plugin manager bootstrap
  options.lua            # vim options
  keymaps.lua            # custom keybindings
  autocmds.lua           # autocommands
  neovide.lua            # GUI settings
lua/plugins/             # 27 plugin configs
  copilot-chat.lua       # AI chat
  claudecode.lua         # Claude Code integration
  dap.lua                # debugger
  neo-tree.lua           # file tree
  dashboard.lua          # start screen
  rust-config.lua        # Rust toolchain
  ...
```

## License

[Apache-2.0](./LICENSE)
