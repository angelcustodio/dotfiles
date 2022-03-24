#!/bin/bash

echo ""

declare -a list_of_folders=(
  'Code'
  'Personal'
)
for folder in "${list_of_folders[@]}"; do
  echo "> Creating /$folder folder"
  mkdir -p "$HOME/$folder"
done

echo "> Move config files to their folder"
\cp -a $HOME/dotfiles/files/. $HOME/
\cp -f $HOME/dotfiles/config/iterm2/com.googlecode.iterm2.plist $HOME/Library/Preferences/
