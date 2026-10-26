# Almagro's Dotfiles

This repository contains my personal dotfiles and configurations for my development environment on macOS.

## Contents

This repository includes configuration files for the following tools:

- **[Neovim](nvim/)**: Configuration using Lua and the `lazy.nvim` plugin manager.
- **[Ghostty](ghostty/)**: Configuration for the Ghostty terminal emulator, using JetBrains Mono, a custom black/white/blue color theme, and configured to integrate with the Fish shell. `cmd+t` and `cmd+shift+[` / `cmd+shift+]` are mapped to tmux windows.
- **[Fish](fish/)**: Fish shell configuration. Starts tmux automatically when opened inside Ghostty, loads Starship and Neofetch, and uses custom syntax colors matching the Ghostty palette.
- **[tmux](tmux/)**: Terminal multiplexer with a powerline-style status bar (session, windows, date/time and weather) using the same colors as Ghostty.
- **[Neofetch](neofetch/)**: Custom configuration for Neofetch system information.

## Structure

```text
dotfiles/
├── ghostty/
│   └── config            # Ghostty terminal settings
├── fish/
│   ├── config.fish       # Main Fish config (auto-start tmux in Ghostty)
│   ├── fish_variables    # Universal variables (syntax colors)
│   ├── conf.d/           # Oh My Fish and rustup loaders
│   └── completions/      # Extra completions
├── tmux/
│   ├── status.conf       # Powerline-style status bar and colors
│   └── weather.sh        # Weather widget (wttr.in, cached for 15 min)
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

# Fish
ln -s ~/Documents/dotfiles/fish ~/.config/fish

# tmux
ln -s ~/Documents/dotfiles/tmux ~/.config/tmux

# Neofetch
ln -s ~/Documents/dotfiles/neofetch ~/.config/neofetch
```

### tmux

Install tmux with Homebrew and load the status bar from your `~/.tmux.conf`:

```bash
brew install tmux
echo 'source-file ~/.config/tmux/status.conf' >> ~/.tmux.conf
```

The prefix is `Ctrl-a`. Ghostty already provides Nerd Font symbols for the powerline separators, so no extra font is required. The weather widget uses your IP location; edit `tmux/weather.sh` (`wttr.in/<city>`) to fix a city.

*(Note: Adjust the target paths if your system setup differs.)*
