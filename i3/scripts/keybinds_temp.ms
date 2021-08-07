.fam H

.TL
xnacly's i3 config

.NH 1
Flags & Configs:

.LP
.B
$BROWSER:
.LP
firefox
.LP
.B
$wallpaper_path:
.LP
~/.config/wallpapers
.LP
.B
$font:
.LP
TerminessTTF NerdFont 
.LP
.B
$font_size:
.LP
12
.LP
.B
$gaps:
.LP
10
.LP
.B
$MOD:
.LP
Mod4
.LP
.B
$refresh_i3status:
.LP
killall -SIGUSR1 i3status
.LP
.B
$ws1:
.LP
1:WWW
.LP
.B
$ws2:
.LP
2:CODE
.LP
.B
$ws3:
.LP
3:DISCORD
.LP
.B
$ws4:
.LP
4:SPOTIFY
.LP
.B
$ws5:
.LP
5:UTIL
.LP
.B
$ws6:
.LP
6
.LP
.B
$ws7:
.LP
7
.LP
.B
$ws8:
.LP
8
.LP
.B
$ws9:
.LP
9
.LP
.B
$ws10:
.LP
10

.NH 2
Keybinds:

.LP
.B
$MOD+c:
.LP
exec "alacritty --working-directory=.config/i3/"

.LP
.B
$MOD+g:
.LP
exec "python3 ~/.config/i3/scripts/keybinds.py && zathura ~/.config/i3/scripts/keybinds_temp.pdf"

.LP
.B
$MOD+b:
.LP
exec firefox 

.LP
.B
$MOD+s:
.LP
exec "gnome-control-center"

.LP
.B
$MOD+shift+s:
.LP
exec "flameshot gui"

.LP
.B
$MOD+e:
.LP
exec "thunar"

.LP
.B
$MOD+w:
.LP
exec "sh ~/.config/i3/scripts/select.sh"

.LP
.B
XF86AudioPlay:
.LP
exec playerctl play-pause

.LP
.B
XF86AudioNext:
.LP
exec playerctl next

.LP
.B
Print:
.LP
exec "flameshot full -c"

.LP
.B
$MOD+n:
.LP
exec "nm-connection-editor"

.LP
.B
$MOD+d:
.LP
exec "sh ~/.config/i3/scripts/rofi.sh" 

.LP
.B
XF86AudioRaiseVolume:
.LP
exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status

.LP
.B
XF86AudioLowerVolume:
.LP
exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status

.LP
.B
XF86AudioMute:
.LP
exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status

.LP
.B
XF86AudioMicMute:
.LP
exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

.LP
.B
$MOD+Return:
.LP
exec alacritty

.LP
.B
$MOD+Shift+q:
.LP
kill

.LP
.B
$MOD+h:
.LP
focus left

.LP
.B
$MOD+j:
.LP
focus down

.LP
.B
$MOD+k:
.LP
focus up

.LP
.B
$MOD+l:
.LP
focus right

.LP
.B
$MOD+Shift+h:
.LP
move left

.LP
.B
$MOD+Shift+j:
.LP
move down

.LP
.B
$MOD+Shift+k:
.LP
move up

.LP
.B
$MOD+Shift+l:
.LP
move right

.LP
.B
$MOD+v:
.LP
split v

.LP
.B
$MOD+f:
.LP
fullscreen toggle

.LP
.B
$MOD+u:
.LP
layout toggle split

.LP
.B
$MOD+Shift+space:
.LP
floating toggle

.LP
.B
$MOD+1:
.LP
workspace number $ws1

.LP
.B
$MOD+2:
.LP
workspace number $ws2

.LP
.B
$MOD+3:
.LP
workspace number $ws3

.LP
.B
$MOD+4:
.LP
workspace number $ws4

.LP
.B
$MOD+5:
.LP
workspace number $ws5

.LP
.B
$MOD+6:
.LP
workspace number $ws6

.LP
.B
$MOD+7:
.LP
workspace number $ws7

.LP
.B
$MOD+8:
.LP
workspace number $ws8

.LP
.B
$MOD+9:
.LP
workspace number $ws9

.LP
.B
$MOD+0:
.LP
workspace number $ws10

.LP
.B
$MOD+Shift+1:
.LP
move container to workspace number $ws1

.LP
.B
$MOD+Shift+2:
.LP
move container to workspace number $ws2

.LP
.B
$MOD+Shift+3:
.LP
move container to workspace number $ws3

.LP
.B
$MOD+Shift+4:
.LP
move container to workspace number $ws4

.LP
.B
$MOD+Shift+5:
.LP
move container to workspace number $ws5

.LP
.B
$MOD+Shift+6:
.LP
move container to workspace number $ws6

.LP
.B
$MOD+Shift+7:
.LP
move container to workspace number $ws7

.LP
.B
$MOD+Shift+8:
.LP
move container to workspace number $ws8

.LP
.B
$MOD+Shift+9:
.LP
move container to workspace number $ws9

.LP
.B
$MOD+Shift+0:
.LP
move container to workspace number $ws10

.LP
.B
$MOD+Shift+c:
.LP
reload

.LP
.B
$MOD+Shift+r:
.LP
restart

.LP
.B
$MOD+Shift+e:
.LP
exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

.LP
.B
h:
.LP
resize shrink width 10 px or 10 ppt

.LP
.B
j:
.LP
resize grow height 10 px or 10 ppt

.LP
.B
k:
.LP
resize shrink height 10 px or 10 ppt

.LP
.B
l:
.LP
resize grow width 10 px or 10 ppt

.LP
.B
Return:
.LP
mode "default"

.LP
.B
Escape:
.LP
mode "default"

.LP
.B
$MOD+r:
.LP
mode "default"

.LP
.B
$MOD+r:
.LP
mode "resize"

