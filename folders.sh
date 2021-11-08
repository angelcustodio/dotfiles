#!/bin/bash

echo ""
cd $HOME

declare -a list_of_folders=(
  'Code'
  'Personal'
)
for folder in "${list_of_folders[@]}"; do
  echo "> Creating /$folder folder"
  mkdir "$folder"
done

cd

echo "> Move bash profile file"
\cp ./files/.bash_profile $HOME/.bash_profile

echo "> Move karabiner profile file"
\cp ./files/karabiner.json $HOME/.config/karabiner/karabiner.json

echo "> Move iterm profile file"
mkdir .config/iterm2/config
cp ./files/com.googlecode.iterm2.plist $HOME/.config/iterm2/config/com.googlecode.iterm2.plist
