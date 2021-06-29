# script to read the accent color and apply it to dunst (notification frame)

import json
import re
import os
with open("/home/xnacly/.cache/wal/colors.json","r") as f:
    f = json.loads(f.read()) 
    background = f["special"]["background"]
    foreground = f["special"]["foreground"]
    accent = f["colors"]["color2"]
    

with open("/home/xnacly/.config/dunst/dunstrc", "r") as f:
    content = f.read()

with open("/home/xnacly/.config/dunst/dunstrc", "w") as f:
    content = re.sub(r'frame_color = ".+"',f'frame_color = "{accent}"', content)
    content = re.sub(r'foreground = ".+"',f'foreground = "{foreground}"', content)
    content = re.sub(r'background = ".+"',f'background = "{background}"', content)
    f.write(content)

os.system("killall dunst; notify-send 'restarted dunst with applied color'")
os.system("cp -rv ~/.cache/wal/colors-rofi-dark.rasi ~/.config/rofi/colors-rofi-dark.rasi")
os.system("cho 'element-icon { size: 1.25em; }' >> ~/.config/rofi/colors-rofi-dark.rasi")
