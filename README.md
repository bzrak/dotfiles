
# dotfiles

These configurations files are primarily for MacOS, but may work on Linux (not guaranteed).

- [X] Nvim (LazyVim)
- [X] Tmux
- [X] Alacritty
- [X] Zsh
- [X] starship
- [X] yabai (Mac)
- [X] skhd (Mac)
- [X] sway (Linux)
- [X] zathura (Linux)

## TODO
- Create install.sh


## Installation
```shell
# Symlink zsh configurations
ln dotfiles/.zshrc ~/.zshrc
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
