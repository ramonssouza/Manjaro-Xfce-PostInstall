#!/bin/bash
echo Installing VS Code, Aether lightdm theme, betterdiscord dotnet sdk preview, dotnet runtime preview, google chrome
pacaur -S --noconfirm visual-studio-code-bin lightdm-webkit-theme-aether betterdiscord dotnet-sdk-preview dotnet-runtime-preview google-chrome

echo Copying config files
sudo cp lightdm.conf /etc/lightdm/
sudo cp xorg.conf /etc/X11/