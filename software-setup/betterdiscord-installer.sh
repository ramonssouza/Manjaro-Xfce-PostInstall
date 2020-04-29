#!/bin/bash
# Clone betterdiscordctl
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin

# Run betterdiscordctl install
betterdiscordctl install

# Download betterdiscord theme from my gists
# Plugins go into ~/.config/BetterDiscord/plugins/
# Themes go into ~/.config/BetterDiscord/themes/