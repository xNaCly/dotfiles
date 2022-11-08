echo "@running install.sh"
echo "+ reading configuired packages in 'packages.txt'"
packages=`cat $HOME/.config/00_config/packages.txt`
echo "+ detected packages: "
for pkg in $packages
do
    echo "  - $pkg"
done
echo "+ installing packages"
for pkg in $packages
do
    sudo pacman -S $pkg --noconfirm --noprogressbar > /dev/null
done
echo "+ installed"
