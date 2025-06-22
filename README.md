Here's how you can set up git tracking for your tmux and nvim config files:

## Create a dotfiles repository

First, create a dedicated repository for your configuration files:

```bash
# Create a directory for your dotfiles
mkdir ~/dotfiles
cd ~/dotfiles
git init
```

## Add your config files

### Move files and create symlinks (recommended)

```bash
# Move your config files to the dotfiles repo
mv ~/.tmux.conf ~/dotfiles/
mv ~/.config/nvim ~/dotfiles/nvim

# Create symlinks back to their original locations
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/nvim ~/.config/nvim

# Add to git
git add .
git commit -m "Initial commit: tmux and nvim configs"
```

## Set up remote repository

```bash
# Add a remote repository (GitHub, GitLab, etc.)
git remote add origin https://github.com/yourusername/dotfiles.git
git push -u origin main
```

## Create an install script (optional but helpful)

Create a `install.sh` script in your dotfiles repo:

```bash
#!/bin/bash

# Create symlinks for all config files
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/nvim ~/.config/nvim

echo "Dotfiles installed!"
```

## Workflow for updates

When you make changes to your configs:

```bash
cd ~/dotfiles
git add .
git commit -m "Update nvim keybindings"
git push
```

The symlink approach is generally preferred because your configs stay in sync automatically - any changes you make are immediately reflected in your git repo. This makes it easy to maintain your configurations across multiple machines.
