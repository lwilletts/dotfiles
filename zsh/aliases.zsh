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
alias vol="pulsemixer"
alias htop="htop -t -s PERCENT_CPU"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias todo="$EDITOR $HOME/usr/notes/todo.md"
alias ffmpeg="ffmpeg -hide_banner"
alias glances="glances --hide-kernel-threads"

# net
alias net="curl -4 icanhazip.com"
alias wget="wget --no-hsts"

# oneliners
alias coin="curl -s rate.sx"
alias wth="curl -s wttr.in | tail -n 32 | head -n 30"

# file handling
alias i="img2sixel"
alias p="zathura"
alias q="qutebrowser"
alias strip="jhead -de"
alias findexec="fd . --exact-depth 1 -t x"

# dtach
alias irc="dtach -A /tmp/irc weechat"

# ascii
alias unix="printf '%s\n' \"\$(curl -sL git.io/unix)\""
alias taco="printf '%s\n' \"\$(curl -sL git.io/taco)\""
alias bonsai="< ~/.dots/ascii/bonsai"

# misc
alias snake="terminibbles -d 3 -q"
alias engage="play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 \
gain +4 synth whitenoise lowpass -1 100 lowpass -1 100 lowpass -1 100 gain +2"
alias machine="clear; lstopo-no-graphics -.ascii; printf '\n'"
