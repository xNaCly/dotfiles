img=`ls -l ~/.config/wallpapers | awk '{ print $9 }' | dmenu -l 5`
wal -i ~/.config/wallpapers/$img
python3 ~/.config/i3/scripts/colors.py
