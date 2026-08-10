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
  'another-redis-desktop-manager'
  'caffeine'
  'coconutbattery'
  'elgato-wave-link'
  'finicky'
  'google-chrome'
  'gpg-suite'
  'meetingbar'
  'openlens'
  'orbstack'
  'rectangle'
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
  'nvm'
  'pyenv'
  'rbenv'
  'redis'
  's3cmd'
  'telnet'
  'wget'
)
for package in "${list_of_packages[@]}"; do
  brew install "$package"
done

echo "> Install Deno"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/justjavac/dvm/main/install.sh)"
dvm install 2.9.5
dvm use 2.9.5

echo "> Install Node 26"
nvm install 26
nvm use 26

echo "> Install Python 3"
pyenv install 3
pyenv global 3

echo "> Install Ruby 4"
rbenv install 4
rbenv global 4

echo ""
echo "DONE! All apps and packages are installed!"
