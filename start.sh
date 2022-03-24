#!/bin/bash

echo ""
echo "Hello! Let's configure your device and install all apps/packages you need"
echo "Please, enter your admin password:"
sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

chmod 755 ./keys.sh
chmod 755 ./folders.sh
chmod 755 ./install.sh
chmod 755 ./config.sh

if [ -f ./ssh/id_rsa -a -f ./ssh/id_rsa.pub ]; then
    echo ""
    echo "Now, let's register your ssh keys..."
    source ./keys.sh
fi

echo ""
echo "Now, let's create some folders and move config files..."
source ./folders.sh

echo ""
echo "Now, let's install apps and packages, it can take a while..."
source ./install.sh

echo ""
echo "Now, let's configure your system..."
source ./config.sh

echo ""
echo "That's it!"
echo "Your device will be rebooted in 1 minute"
sudo shutdown -r +1
