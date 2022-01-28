echo "Installing specified packages"
packages=`cat ~/.config/install_scripts/packages.txt`
for package in $packages
do 
  sudo pacman -S $package --noconfirm
done
echo "Installed all packages specified in '~/.config/install_scripts/packages.txt"

echo "Moving Fonts"
mkdir ~/.local/share/fonts/
cp -rv ~/.config/fonts/* ~/.local/share/fonts/

echo "Running Post install script"
sudo pip install pywal;
wal -t -s -i $HOME/.config/wallpapers/unicat.png
