import re
import os

def format(n):
    n = n.split(" ")
    return f".LP\n.B\n{n[0].replace('$mod', '$MOD').replace('$browser', '$BROWSER')}:\n.LP\n{' '.join(n[1:])}"

with open("/home/xnacly/.config/i3/config","r") as file:
    contents = file.read()

keybinds = re.findall("(bindsym.+\n)", contents)
keybinds = list(map(lambda x: x.replace("bindsym ", ""), keybinds))
keybinds = "\n".join(map(format, keybinds))
flags = list(map(lambda x: x.replace("set ", "").replace("\n","") ,re.findall("(set \$.+\n)", contents)))
flags = "\n".join(map(format, flags))
mod_key = re.findall("(set \$mod .+)", contents)[0].split(" ")[-1]
browser = re.findall("(set \$browser .+)", contents)[0].split(" ")[-1].replace("\"","")

with open("/home/xnacly/.config/i3/scripts/keybinds.ms", "r") as file:
    template = file.read()

template = template.replace("__FLAGS__", flags.replace("\"","")).replace("__KEYBINDS__", keybinds).replace("$mod", mod_key).replace("$browser", browser)

with open("/home/xnacly/.config/i3/scripts/keybinds_temp.ms", "w") as file:
    file.write(template)

os.system("groff -ms ~/.config/i3/scripts/keybinds_temp.ms -k -T pdf > keybinds_temp.pdf")
