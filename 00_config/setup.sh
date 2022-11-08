#!/bin/bash
echo "+ dotfiles mini - running setup.sh"
echo ""
chmod +x ./install.sh
./install.sh
echo ""
chmod +x ./config.sh
./config.sh
echo ""
chmod +x ./yay.sh
./yay.sh
