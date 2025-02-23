# vi Mode
bindkey -v
export KEYTIMEOUT=1
zle -N zle-keymap-select

# no cd required
setopt autocd nomatch notify

# accent chars
setopt combining_chars

# coloured prompt
autoload -U colors && colors

# mass autorename
autoload -U zmv

# vi prompt
precmd() {
    PROMPT="%{$fg[white]%}|%{$reset_color%} "
    RPROMPT="%{$fg[white]%}%{$reset_color%}"

    # set window title
    print -Pn "\e]0;%~\a"
}

zle-keymap-select() {
    PROMPT="%{$fg[white]%}|%{$reset_color%} "

    if [ "$KEYMAP" = "vicmd" ]; then
        PROMPT="%{$fg[red]%}|%{$reset_color%} "
    fi

    zle reset-prompt
}

# superglobs
setopt extendedglob
unsetopt caseglob

# ls colours
hash busybox 2> /dev/null || {
    if hash dircolors 2> /dev/null; then
        eval "$(dircolors ~/.zsh/lscolours)"
        alias ls="ls -F -N --color=auto --group-directories-first"
    else
        alias ls="ls -F -N --group-directories-first"
    fi
} || {
    alias ls="ls -F --group-directories-first"
}

# load reporting
export REPORTTIME=120
