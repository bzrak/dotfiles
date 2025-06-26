
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

- Ensure compatibility with Linux
    - Alacritty have some different settings depending on OS.
- Create install.sh

## Important
- Alacritty specific OS options
```shell
# Linux
ln -sf ~/.config/alacritty/linux.toml ~/.config/alacritty/specific.toml
# Mac
ln -sf ~/.config/alacritty/mac.toml ~/.config/alacritty/specific.toml
```
