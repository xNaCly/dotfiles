echo "@running yay.sh"
echo "+cloning yay"
sudo pacman -S --needed base-devel
sudo pacman -Syyu
git clone https://aur.archlinux.org/yay.git ~/temp_aur
cd ~/temp_aur
echo "+building yay from source"
makepkg -si
echo "+removing temp build directory"
rm -fr ~/temp_aur
