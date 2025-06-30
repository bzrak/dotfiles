# dotfiles

These configurations files are primarily for MacOS, but may work on Linux (not guaranteed).

- [x] Nvim (LazyVim)
- [x] Tmux
- [x] Alacritty
- [x] Zsh
- [x] starship
- [x] yabai (Mac)
- [x] skhd (Mac)
- [x] sway (Linux)
- [x] zathura (Linux)

## TODO

- install.sh
    - [X] nvim

## Installation

```shell
# Symlink zsh configurations
ln dotfiles/.zshrc ~/.zshrc
ln .zlogin ~/.zlogin
ln dotfiles/.oh-my.zsh/custom/aliases.zsh ~/.oh-my.zsh/custom/aliases.zsh
# Stow: Inside the repo dotfiles/
stow --target=$HOME/.config .config
# From inside ~/.config/ remove any unneeded folder (e.g. yabai/ when in Linux)

# Alacritty OS specific settings
# Linux
ln -sf ~/.config/alacritty/linux.toml ~/.config/alacritty/specific.toml
# Mac
ln -sf ~/.config/alacritty/mac.toml ~/.config/alacritty/specific.toml
```
