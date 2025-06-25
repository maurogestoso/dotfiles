# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Structure

This is a personal dotfiles repository containing configuration files for development tools:

- **nvim/**: Neovim configuration using LazyVim as the base
- **.tmux.conf**: tmux configuration with custom theming and plugins
- **install.sh**: Installation script to create symlinks

## Installation and Deployment

Run the installation script to set up symlinks:
```bash
./install.sh
```

This creates symlinks from the dotfiles to their expected locations:
- `~/dotfiles/.tmux.conf` → `~/.tmux.conf`
- `~/dotfiles/nvim` → `~/.config/nvim`

## Neovim Configuration Architecture

The repository contains two Neovim configurations:

### Current Configuration (`nvim/`)
**From-scratch setup** using Lazy.nvim plugin manager:
- `init.lua`: Entry point that bootstraps Lazy.nvim
- `lua/vim-options.lua`: Basic Vim settings and leader key configuration
- `lua/plugins/`: Individual plugin configurations
  - `catppuccin.lua`: Colorscheme
  - `telescope.lua`: Fuzzy finder with keybindings
  - `treesitter.lua`: Syntax highlighting
  - `neotree.lua`: File explorer (Ctrl-n toggle)
  - `lualine.lua`: Status line
  - `lsp-config.lua`: LSP setup with Mason (currently Lua LSP only)

### Backup Configuration (`nvim.bak/`)
**LazyVim-based** with extensive features:
- Full LazyVim distribution with language extras
- Enabled language support: TypeScript, Go, JSON, Tailwind
- Enabled extras: ESLint, Prettier formatting
- `vim-tmux-navigator.lua`: tmux-vim navigation integration with Ctrl-hjkl keybindings

### Key Integrations
- **tmux-vim navigation**: Seamless pane navigation using Ctrl-h/j/k/l (available in backup config)
- **Catppuccin theming**: Consistent theme across nvim and tmux
- **Telescope**: Fuzzy finder with leader-based keybindings

## tmux Configuration

The tmux setup includes:
- **Prefix key**: Ctrl-s (instead of default Ctrl-b)
- **Theme**: Catppuccin macchiato with custom status bar
- **Navigation**: vim-style pane navigation (h/j/k/l) that integrates with nvim via vim-tmux-navigator
- **Plugins**: TPM, vim-tmux-navigator, online-status, battery, catppuccin theme

## Development Workflow

Since this is a dotfiles repository, typical development involves:
1. Making changes to configuration files
2. Testing changes locally
3. Committing and pushing to maintain version control across machines

The symlink approach ensures changes are immediately reflected without needing to reinstall.