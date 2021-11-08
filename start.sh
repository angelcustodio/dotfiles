#!/bin/bash

echo ""
echo "Hello! Let's configure your device and install all apps/packages you need."
echo "First, put your admin credentials:"
sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

chmod +x config.sh
chmod +x install.sh

echo ""
echo "Now, let's install apps and packages, it can take a while..."
/bin/bash install.sh

echo ""
echo "Now, let's configure your system..."
/bin/bash config.sh

echo ""
echo "Now, let's restart some services..."
killall Dock
killall Finder

echo ""
echo "That's it!"
echo "Your device will be rebooted in 1 minute"
shutdown -r +1
