# Almagro's Dotfiles

This repository contains my personal dotfiles and configurations for my development environment on macOS.

## Contents

This repository includes configuration files for the following tools:

- **[Neovim](nvim/)**: Configuration using Lua and the `lazy.nvim` plugin manager.
- **[Ghostty](ghostty/)**: Configuration for the Ghostty terminal emulator, using JetBrains Mono and configured to integrate with the Fish shell.
- **[Neofetch](neofetch/)**: Custom configuration for Neofetch system information.

## Structure

```text
dotfiles/
├── ghostty/
│   └── config            # Ghostty terminal settings
├── neofetch/
│   └── config.conf       # Neofetch settings
└── nvim/                 # Neovim configuration
    ├── init.lua          # Main entry point
    ├── lazy-lock.json    # Lazy.nvim lockfile
    └── lua/
        ├── core/         # Core Neovim options and lazy init
        └── plugins/      # Plugin configurations
```

## Installation

To use these dotfiles, you can clone the repository and create symlinks to the respective configuration directories in your `~/.config` folder:

```bash
git clone https://github.com/almagro/dotfiles.git ~/Documents/dotfiles

# Neovim
ln -s ~/Documents/dotfiles/nvim ~/.config/nvim

# Ghostty
ln -s ~/Documents/dotfiles/ghostty ~/.config/ghostty

# Neofetch
ln -s ~/Documents/dotfiles/neofetch ~/.config/neofetch
```

*(Note: Adjust the target paths if your system setup differs.)*
