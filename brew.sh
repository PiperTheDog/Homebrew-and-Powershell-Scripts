#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Create the Brewfile content directly
cat <<EOF >Brewfile
tap "homebrew/bundle"
tap "homebrew/services"
brew "mysql", restart_service: :changed
brew "nano"
brew "python@3.13"
brew "squashfs"
brew "snap"
brew "tailscale", restart_service: :changed
cask "1password"
cask "aldente"
cask "arc"
cask "betterdisplay"
cask "chatgpt"
cask "discord"
cask "docker"
cask "mac-mouse-fix"
cask "microsoft-auto-update"
cask "microsoft-excel"
cask "microsoft-remote-desktop"
cask "notion"
cask "spotify"
cask "visual-studio-code"
vscode "formulahendry.vscode-mysql"
vscode "ms-mssql.data-workspace-vscode"
vscode "ms-mssql.mssql"
vscode "ms-mssql.sql-bindings-vscode"
vscode "ms-mssql.sql-database-projects-vscode"
EOF

# Run Homebrew Bundle
echo "Installing dependencies from Brewfile..."
brew bundle --file=Brewfile

echo "Setup complete!"
