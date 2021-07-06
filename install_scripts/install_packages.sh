packages=`cat ~/.config/install_scripts/packages.txt`
for package in $packages
do 
  sudo pacman -S $package
done
yay -S lxapperance 
sudo python3 -m pip install pywal || sudo pip install pywal;
echo "installed all packages specified in '~/.config/install_scripts/packages.txt' + pywal & lxapperance"
