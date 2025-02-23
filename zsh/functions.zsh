chpwd() {
    if [ "$(tty)" = /dev/tty1 ]; then
        return
    fi

    clear

    f0='[30m'; f1='[31m'; f2='[32m'; f3='[33m'
    f4='[34m'; f5='[35m'; f6='[36m'; f7='[37m'
    R='[0m'

    [ $(ls -1 | wc -l) -gt 100 ] && {
        files=$(fd -t x --exact-depth 1 | wc -l)
        dirts=$(fd -t d --exact-depth 1 | sed '1d' | wc -l)
        links=$(fd -t l --exact-depth 1 | wc -l)

        printf '%s\n\n' "$f3$files files ${R}&& $f6$dirts directories ${R}&& $f5$links links${R}"
        return 0
    }

    [ -z "$(ls -1)" ] && {
        printf '%s\n\n' "${f5}Directory is empty!${R}"
    } || {
        ls -F --color=auto --group-directories-first
        printf '\n'
    }

    # set window title to path name
    case $TERM in
        rxvt*) preexec () { print -Pn "\e]0;$1\a" } ;;
        *)     print -Pn "\e]0;%~\a"                ;;
    esac

    unset -v f0 41 f2 f3 f4 f5 f6 f7 R
}

zshrc() {
    $EDITOR $(fd . ~/.zsh -t f --exact-depth 1)

    . ~/.zshrc
}

usr() {
    ps xgf "$@" | sed '1d; s/--type.*//' | \
        cut -c1-$(stty size < /dev/tty | cut -d\  -f 2)
}

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;47;30m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

fkill() {
    kill -9 $(pgrep $1)
}
