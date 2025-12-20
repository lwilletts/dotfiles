# sys
alias s="sudo"
alias se="sudo -e"
alias off="poweroff"
alias firmware="sudo systemctl reboot --firmware-setup"

# permissions
alias mine="s chown $USER:fyr"
alias all="mine -R *"

# operations
alias mv="mv -i"
alias df="df -h"
alias cp="cp -ri"
alias path="readlink -f"
alias rsync="rsync --info=progress2"
alias szsh="source ~/.zshrc"

# apps
alias n="niri-session"
alias x="startx"
# alias x="xinit -- :0 vt2 2> /dev/null &!"
alias vol="pulsemixer"
alias mus="jellyfin-tui"
alias pick="hyprpicker"
alias htop="htop -t -s PERCENT_CPU"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias todo="$EDITOR $HOME/usr/notes/todo.md"
alias clock="xclock -d -face "Cozette-8" -padding 8 -update 5 2>/dev/null &!"
alias ffmpeg="ffmpeg -hide_banner"
alias ffprobe="ffprobe -hide_banner"

# net
alias net="curl -4 icanhazip.com"
alias wget="wget --no-hsts"

# ansible
alias pl="ansible-playbook -K"
alias role="ansible-role"
alias vault="ansible-vault"
alias ve="ansible-vault edit"

# oneliners
alias coin="curl -s rate.sx"
alias btc="curl -s rate.sx/btc"
alias latency="sudo tc qdisc add dev enp10s0u1c2 root netem delay 72ms"
alias reseteth="sudo tc qdisc del dev enp10s0u1c2 root"
alias stress="stress-ng --cpu 16 --timeout 60s --metrics-brief"

# file handling
alias p="zathura"
alias q="qutebrowser"
alias strip="jhead -de"
alias findexec="fd . --exact-depth 1 -t x"

# dtach
alias irc="dtach -A /tmp/irc weechat"
alias ts="systemd-run --user --scope tmux new-session"

# systemd
alias j="journalctl"
alias ctl="systemctl"
alias user="systemctl --user"
alias failed="systemctl --failed"
alias resetfailed="sudo systemctl reset-failed" 
alias plot="systemd-analyze plot > boot.svg && swayimg boot.svg"
alias modcat="systemd-analyze cat-config modprobe.d"

# ascii
alias unix="printf '%s\n' \"\$(curl -sL git.io/unix)\""
alias taco="printf '%s\n' \"\$(curl -sL git.io/taco)\""

# misc
alias engage="play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 \
gain +4 synth whitenoise lowpass -1 100 lowpass -1 100 lowpass -1 100 gain +2"
alias machine="clear; lstopo-no-graphics -.ascii; printf '\n'"
