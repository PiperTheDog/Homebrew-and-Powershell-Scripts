#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to the path to ensure that it is available to use 
eval "$(/opt/homebrew/bin/brew shellenv)"

# Run Homebrew Bundle
echo "Installing dependencies from Brewfile..."
brew bundle --file=Brewfile

echo "Setup complete!"
