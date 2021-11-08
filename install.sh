#!/bin/bash

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo ""
echo "> Command Line Tools"
xcode-select --install
xcode-select -s /Library/Developer/CommandLineTools

echo "> Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "> Apps installation"
declare -a list_of_apps=(
  'atom'
  'coconutbattery'
  'firefox'
  'google-chrome'
  'gpg-suite'
  'iterm'
  'karabiner-elements'
  'meetingbar'
  'rectangle'
  'slack'
  'spotify'
  'typora'
  'zoom'
)
for app in "${list_of_apps[@]}"; do
  brew install "$app"
done

echo "> Packages installation"
declare -a list_of_packages=(
  'autojump'
  'awscli'
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

echo ""
echo "DONE! All apps and packages are installed!"
