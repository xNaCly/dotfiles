background=`xrdb -query | grep "background" | awk '{print $2}' | tail -n -1`
foreground=`xrdb -query | grep "foreground" | awk '{print $2}' | tail -n -1`
accent=`xrdb -query | grep "color2" | awk '{print $2}' | tail -n -1`
img=`ls -l ~/.config/wallpapers | awk '{ print $9 }' | dmenu -i -l 10 -nb $background -nf $foreground -sb $accent`

rtrn=$?
if test "$rtrn" = "0"; then
  wal -i ~/.config/wallpapers/$img
  python3 ~/.config/i3/scripts/colors.py
else
  exit
fi
