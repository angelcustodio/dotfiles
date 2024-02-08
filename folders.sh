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
\cp -f $HOME/dotfiles/configs/dev.warp.Warp-Stable.plist $HOME/Library/Preferences/
