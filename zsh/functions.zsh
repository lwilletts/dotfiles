chpwd() {
    clear

    f0='[30m'; f1='[31m'; f2='[32m'; f3='[33m'
    f4='[34m'; f5='[35m'; f6='[36m'; f7='[37m'
    R='[0m'

    [ $(ls -1 | wc -l) -lt 40 ] && {
        [ -z "$(ls -1)" ] && {
            printf '%s\n\n' "${f5}Empty directory!${R}"
        } || {
            ls -F --color=auto
            printf '\n'
        }
    } || {
        ls -F --color=auto | head -n 10
        printf '%s\n' "${f3}...${R}"
        printf '\n'
    }

    unset -v f0 41 f2 f3 f4 f5 f6 f7 R
}

zshrc() {
    $EDITOR $(fd . ~/.zsh -t f --exact-depth 1)

    . ~/.zshrc
}

processes() {
    ps xgf "$@" | sed '1d; s/--type.*//' | \
        cut -c1-$(stty size < /dev/tty | cut -d\  -f 2)
}
