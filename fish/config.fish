if status is-interactive
    # Iniciar tmux automáticamente en Ghostty (sin anidar dentro de otro tmux)
    if test "$TERM_PROGRAM" = ghostty; and not set -q TMUX; and test -x /opt/homebrew/bin/tmux
        exec /opt/homebrew/bin/tmux new-session -A -s Config
    end

    # Commands to run in interactive sessions can go here
    /opt/homebrew/bin/neofetch
end

set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH (brew --prefix)/bin (brew --prefix)/sbin $PATH

starship init fish | source

# Added by Windsurf
fish_add_path /Users/almagro/.codeium/windsurf/bin

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/almagro/.ghcup/bin $PATH # ghcup-env
# Added by Antigravity
fish_add_path /Users/almagro/.antigravity/antigravity/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/almagro/google-cloud-sdk/path.fish.inc' ]; . '/Users/almagro/google-cloud-sdk/path.fish.inc'; end

# Added by Antigravity IDE
fish_add_path /Users/almagro/.antigravity-ide/antigravity-ide/bin
