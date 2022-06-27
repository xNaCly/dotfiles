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
export PATH="/home/$USER/.cargo/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-1.17.0-openjdk-amd64"

### aliases ###

# make double excl work
function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end


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
alias ls="exa"
alias l="exa"
alias la="exa"
alias tree="exa --tree --level=4 --icons --git"

# github
alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gps="git push"
alias gpl="git pull"

# node
alias ns="npm start"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.config"
export WAKATIME_HOME="$HOME/.config"

# config
alias fishconf="nvim ~/.config/fish/conf.d/omf.fish"
# change wallpaper
alias wallpaper="sh ~/.config/i3/scripts/select.sh"

### exec on start ###

function fish_greeting
	#pfetch
end
