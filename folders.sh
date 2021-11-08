#!/bin/bash

echo ""
cd $HOME

declare -a list_of_folders=(
  'Code'
  'Personal'
)
for folder in "${list_of_folders[@]}"; do
  echo "Creating /$folder folder"
  mkdir "$folder"
done

cd
