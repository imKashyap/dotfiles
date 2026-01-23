# Save screenshots to ~/Screenshots
mkdir -p "$HOME/Screenshots"
defaults write com.apple.screencapture location -string "$HOME/Screenshots"

killall Finder || true
killall SystemUIServer || true

echo "==> macOS defaults applied"
