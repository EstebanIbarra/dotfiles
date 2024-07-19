# Dotfiles

This is a personal repo containing my dotfiles, feel free to use it if you want to.

## Requirements

- [ZSH](https://www.zsh.org)
- [Oh-my-zsh](https://ohmyz.sh)
- [GNU stow](https://www.gnu.org/software/stow)
- [Eza](https://github.com/eza-community/eza)
- [Neovim](https://neovim.io)
- [Neofetch](https://github.com/dylanaraps/neofetch)
- [Fortune](https://www.ibiblio.org/pub/linux/games/amusements/fortune/!INDEX.html)
- [Cowsay](https://github.com/tnalpgge/rank-amateur-cowsay)

## Instructions

1. Clone this repo on your ```$HOME/<dirname>``` directory.[^1] [^2]
2. ```cd``` into the repo's directory.
3. Run ```stow .```
4. Enjoy.

[^1]: If you want to use also my configs for [Neovim](https://neovim.io) and [Alacritty]() you need to clone the repo with the ```--recursive``` flag.
[^2]: If you need to set sensitive data in your config, you can create a ```.env``` file in the ```.config/shell``` directory.
