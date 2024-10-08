#!/bin/bash

echo ""
echo "> Command Line Tools"
xcode-select --install
xcode-select -s /Library/Developer/CommandLineTools

echo "> Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "> Checking Homebrew"
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "> Apps installation"
declare -a list_of_apps=(
  'caffeine'
  'coconutbattery'
  'elgato-wave-link'
  'google-chrome'
  'gpg-suite'
  'insomnia'
  'karabiner-elements'
  'meetingbar'
  'rectangle'
  'slack'
  'spotify'
  'topnotch'
  'vanilla'
  'visual-studio-code'
  'warp'
)
for app in "${list_of_apps[@]}"; do
  brew install --cask "$app"
done

echo "> Packages installation"
declare -a list_of_packages=(
  'autojump'
  'awscli'
  'bash-completion'
  'git'
  'htop'
  'kubectx'
  'kubernetes-cli'
  'nvm'
  'pyenv'
  'rbenv'
  'wget'
)
for package in "${list_of_packages[@]}"; do
  brew install "$package"
done

echo "> Install Node 20.17"
nvm install 20.17
nvm alias default 20.17

echo "> Install Python 3.10"
pyenv install 3.10
pyenv global 3.10

echo ""
echo "DONE! All apps and packages are installed!"
