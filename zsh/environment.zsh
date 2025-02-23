umask 022
unset TERMCAP
unset MANPATH

PATH=""

EXECPATHS="
$HOME/.d/bin
$HOME/src/fwm
/usr/local/bin
/usr/bin
/bin
/sbin
/usr/sbin
$HOME/.fzf/bin
$HOME/.local/bin"

printf '%s\n' "$EXECPATHS" | while read -r EXECPATH; do
    if [ -d "$EXECPATH" ]; then 
        PATH="$PATH:$EXECPATH"
    fi
done

export PATH=$(printf '%s\n' "$PATH" | cut -c 2-)
unset EXECPATH

# program dots
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="/home/fyr"
export XDG_DOWNLOAD_DIR="$HOME/tmp"
export LESSHISTFILE="$XDG_CONFIG_HOME/lesshist"
export HISTFILE="$XDG_CONFIG_HOME/histfile"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export MAIL="$XDG_CONFIG_HOME/mail"
export PYTHONPATH="$XDG_CONFIG_HOME"
export GNUPGHOME="$XDG_CONFIG_HOME"


export VISUAL="nvim"
export EDITOR="nvim"
alias vi="$VISUAL"
alias vim="$VISUAL"

export PAGER="less"
export MANPAGER='nvim --cmd ":lua vim.g.noplugins=1" +Man!'
export MANWIDTH=999
export FZF_DEFAULT_OPTS='--color=bw'

# games
export GAME="$HOME/.steam/steam/steamapps/common"
export COMPAT="$HOME/.steam/steam/steamapps/compatdata"
