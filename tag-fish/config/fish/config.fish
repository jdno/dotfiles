# Load executables in Brew's sbin directory
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Neovim for the win
set -Ux EDITOR nvim

# Ruby
status --is-interactive; and source (rbenv init -|psub)

# Rust
source $HOME/.cargo/env
