#!/bin/bash

echo ""

echo "> Creating ssh keys folder"
mkdir -p "$HOME/.ssh"

echo "> Moving ssh keys files"
\cp -a $HOME/dotfiles/ssh/. $HOME/.ssh

echo "> Apply right permissions"
chmod 700 $HOME/.ssh
chmod 600 $HOME/.ssh/id_rsa
chmod 644 $HOME/.ssh/id_rsa.pub

echo "> Add keys to registry"
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_rsa