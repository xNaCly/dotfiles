# a script to read the colors from pywal and insert these values into the dunst and i3status config 

import json
import re
import os
from time import sleep as s

with open("/home/xnacly/.cache/wal/colors.json","r") as f:
    f = json.loads(f.read())
    background = f["special"]["background"]
    foreground = f["special"]["foreground"]
    accent = f["colors"]["color2"]
    warning = f["colors"]["color9"]
    text_color1 = f["colors"]["color6"]

with open("/home/xnacly/.config/dunst/dunstrc", "r") as f:
    content = f.read()

with open("/home/xnacly/.config/dunst/dunstrc", "w") as f:
    content = re.sub(r'frame_color = ".+"',f'frame_color = "{accent}"', content)
    content = re.sub(r'foreground = ".+"',f'foreground = "{foreground}"', content)
    content = re.sub(r'background = ".+"',f'background = "{background}"', content)
    f.write(content)

with open("/home/xnacly/.config/i3status/i3status.conf", "r") as f:
    content = f.read()

with open("/home/xnacly/.config/i3status/i3status.conf", "w") as f:
    content = re.sub(r'color_good = ".+"',f'color_good = "{text_color1}"', content)
    content = re.sub(r'color_degraded = ".+"',f'color_degraded = "{warning}"', content)
    content = re.sub(r'color_bad = ".+"',f'color_bad = "{warning}"', content)
    print(content)
    f.write(content)

s(0.25)
os.system("cp -rv ~/.cache/wal/colors-rofi-dark.rasi ~/.config/rofi/colors-rofi-dark.rasi")
os.system("echo 'element-icon { size: 1.25em; }' >> ~/.config/rofi/colors-rofi-dark.rasi")
os.system("i3 reload && i3 restart")
os.system("killall dunst; notify-send 'restarted dunst, rofi, alacritty and i3 with applied colorscheme'")
