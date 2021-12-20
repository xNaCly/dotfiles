#██╗  ██╗███╗   ██╗ █████╗  ██████╗██╗  ██╗   ██╗███████╗    ███████╗██╗███████╗██╗  ██╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
#╚██╗██╔╝████╗  ██║██╔══██╗██╔════╝██║  ╚██╗ ██╔╝██╔════╝    ██╔════╝██║██╔════╝██║  ██║    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
# ╚███╔╝ ██╔██╗ ██║███████║██║     ██║   ╚████╔╝ ███████╗    █████╗  ██║███████╗███████║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
# ██╔██╗ ██║╚██╗██║██╔══██║██║     ██║    ╚██╔╝  ╚════██║    ██╔══╝  ██║╚════██║██╔══██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
#██╔╝ ██╗██║ ╚████║██║  ██║╚██████╗███████╗██║   ███████║    ██║     ██║███████║██║  ██║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
#╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝╚══════╝╚═╝   ╚══════╝    ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 
# xnacly's fish config
# https://github.com/xnacly

### set configs ###
set EDITOR "nvim"

### Path extras ###
export PATH="/home/$USER/Applications:$PATH"

### aliases ###

# make double excl work
function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

alias gotop="gotop -s"

# rss feed reader
alias nb="newsboat"

# simple shutdown
alias s="shutdown -h now"

# extended shutdown
alias ss="shutdown"

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias cd..="cd .."

# vim
alias vim="nvim"

# ls
alias l="ls -la"
alias la="ls -la"
alias tree="exa --tree --level=4 --icons --git"

# github
alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gps="git push"
alias gpl="git pull"

# node
alias ns="npm start"

# pfetch
export PF_INFO="ascii title os host kernel uptime pkgs memory"
# export PF_ASCII="arch"

# config
alias fishconf="nvim ~/.config/fish/conf.d/omf.fish"
# change wallpaper
alias wallpaper="sh ~/.config/i3/scripts/select.sh"

### exec on start ###

function fish_greeting
	#pfetch
end

cat ~/.cache/wal/sequences
wal -q -n -R
clear

fish_vi_key_bindings
