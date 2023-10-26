# !/bin/bash
img="`mktemp -d`/screen.png"
scrot --file $img
convert -blur 50x5 $img $img
i3lock -i $img
rm -fr $img

