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

The nvim configuration is built on **LazyVim** with the following structure:

### Core Setup
- `init.lua`: Entry point that bootstraps the configuration
- `lua/config/lazy.lua`: Plugin manager setup with language-specific extras
- Enabled language support: TypeScript, Go, JSON, Tailwind
- Enabled extras: ESLint, Prettier formatting

### Plugin System
Custom plugins are in `lua/plugins/`:
- `golang.lua`: Go language support
- `vim-tmux-navigator.lua`: tmux-vim navigation integration with Ctrl-hjkl keybindings

### Key Integrations
- **vim-tmux-navigator**: Seamless navigation between nvim panes and tmux panes using Ctrl-h/j/k/l
- **LazyVim extras**: Pre-configured language servers and tools for TypeScript, Go, and web development

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