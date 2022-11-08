echo "Installing specified packages"
packages=`cat $HOME/.config/install_scripts/packages.txt`
for package in $packages
do 
  sudo pacman -S $package --noconfirm
done
echo "Installed all packages specified in '$HOME/.config/install_scripts/packages.txt"

echo "Moving Fonts"
mkdir -p $HOME/.local/share/fonts/
cp -rv $HOME/.config/fonts/* $HOME/.local/share/fonts/
