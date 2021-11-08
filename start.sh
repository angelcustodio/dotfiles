#!/bin/bash

echo ""
echo "Hello! Let's configure your device and install all apps/packages you need."
echo "Please, enter your admin password:"
sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

chmod 755 ./config.sh
chmod 755 ./install.sh

echo ""
echo "Now, let's install apps and packages, it can take a while..."
source ./install.sh

echo ""
echo "Now, let's configure your system..."
source ./config.sh

echo ""
echo "Now, let's create a couple of folders..."
cd $HOME && mkdir {Code,Personal}

echo ""
echo "Now, let's restart some services..."
killall Dock
killall Finder

echo ""
echo "That's it!"
echo "Your device will be rebooted in 1 minute"
sudo shutdown -r +1
