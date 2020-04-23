#!/bin/bash
echo Updating Kernel
mhwd-kernel -i linux56 > /dev/null 2>&1
echo Updating graphics drivers
mhwd -a pci nonfree 0300 > /dev/null 2>&1
echo Updating all pacman packages
pacman -Syu > /dev/null 2>&1
echo Installing pacaur, lightdm, lightdm webkit and lightdm settings
pacman -S --noconfirm pacaur lightdm lightdm-webkit2-greeter lightdm-settings > /dev/null 2>&1
echo Disable lightdm service
systemctl disable lightdm.service > /dev/null 2>&1
echo Re-enable lightdm service
systemctl enable lightdm.service --force > /dev/null 2>&1
