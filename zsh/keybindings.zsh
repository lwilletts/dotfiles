bindboth() {
    bindkey -M viins "$@"
    bindkey -M vicmd "$@"
}

# redefine history widgets to drop into cmd mode
widget-vicmd() {
    local cur=$CURSOR
    zle .${WIDGET%-vicmd}
    zle vi-cmd-mode
    CURSOR=$cur
}

# history expansion
for W in \
    up-line-or-history  \
    down-line-or-history \
    history-beginning-search-forward \
    history-beginning-search-backward
do
    zle -N ${W}-vicmd widget-vicmd
done

zle -N edit-command-line
bindkey -M vicmd v edit-command-line
autoload -U edit-command-line

# Insert Key
bindboth "^[[2~" overwrite-mode
# Delete Key
bindboth "^[3~" delete-char
bindboth "^[[3~" delete-char
# Home Key
bindboth "^[[7~" beginning-of-line
bindboth "^[[1~" beginning-of-line
bindboth "^[[H"  beginning-of-line
bindboth "^[OH"  beginning-of-line
# End key
bindboth "^[[8~" end-of-line
bindboth "^[[4~" end-of-line
bindboth "^[[F"  end-of-line
bindboth "^[OF"  end-of-line

# C-n && C-p | Search History
bindboth "^P" up-line-or-search
bindboth "^N" down-line-or-search

# Shift-Tab Previous Entry
bindboth '^[[Z' reverse-menu-complete
# Arrow Keys along with highlight
zstyle ':completion:*' menu select

# Ctrl-Backspace
bindkey '^H' backward-kill-word

# C-k ../
cdParentKey() {
    pushd ..
    zle reset-prompt
}

zle -N cdParentKey
bindkey "^k" cdParentKey

clearLS() {
    chpwd
    zle redisplay
}

zle -N clearLS
bindboth "^l" clearLS

goBack() {
    clear
    cd - || return
    zle redisplay
}

zle -N goBack
bindboth "^b" goBack
