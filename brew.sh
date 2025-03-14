#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install the requred 

# Add Homebrew to the path to ensure that it is available to use 
echo >> "$HOME/.zprofile"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
eval "$(/opt/homebrew/bin/brew shellenv)"

#Install thecorrect brewfile from github to your working directory
echo "The script might prompt for your password. This is only to ensure that you have the required permissions"
sudo curl -o Brewfile https://raw.githubusercontent.com/PiperTheDog/Homebrew-and-Powershell-Scripts/main/Brewfile
#Install All Apps contained in the brewfile
brew bundle --file=Brewfile
