#!/usr/bin/env bash
set -euo pipefail

echo "==> Bootstrap: installing Homebrew (if needed)"
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "==> Installing Brew bundle"
brew bundle --file "$HOME/Brewfile"

echo "==> Installing TPM (tmux plugin manager)"
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

echo "==> Done. Start tmux and press: Ctrl-b + I (Shift i) to install tmux plugins."

