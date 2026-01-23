# Dotfiles

Dotfiles managed using **bare git repo** technique.

This repo manages my dotfiles using the **bare git repo** technique:
- Dotfiles stay in their real locations (e.g. `~/.zshrc`, `~/.tmux.conf`)
- No symlinks required
- Easy to maintain across multiple machines


## How it works

- The git repository lives here: `~/.dotfiles` (bare repository)

- The working tree is my home directory: `~`

So files tracked by git are actually stored where they naturally belong.

## Install on new machine

### 1) Clone bare repo
```bash
git clone --bare git@github.com:imKashyap/dotfiles.git ~/.dotfiles
```



