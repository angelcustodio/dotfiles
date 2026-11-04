#!/bin/bash

echo ""
echo "> Set bash as default"

BREW_BASH="/opt/homebrew/bin/bash"
SYS_BASH="/bin/bash"

echo "$BREW_BASH" | sudo tee -a /etc/shells > /dev/null

if [ -x "$BREW_BASH" ]; then
  chsh -s "$BREW_BASH" || chsh -s "$SYS_BASH"
else
  chsh -s "$SYS_BASH"
fi

echo ""
echo "DONE! Your shell is now configured!"
