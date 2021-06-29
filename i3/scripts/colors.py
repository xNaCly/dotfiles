# script to read the accent color and apply it to dunst (notification frame)

import json
import re
import os
with open("/home/xnacly/.cache/wal/colors.json","r") as f:
    color = json.loads(f.read())["colors"]["color2"]

with open("/home/xnacly/.config/dunst/dunstrc", "r") as f:
    content = f.read()

with open("/home/xnacly/.config/dunst/dunstrc", "w") as f:
    content = re.sub(r'frame_color = ".+"',f'frame_color = "{color}"', content)
    f.write(content)

os.system("killall dunst; notify-send 'restarted dunst with applied color'")
