# manual
if hash make 2> /dev/null; then
    alias makefile="$EDITOR Makefile"
    alias menuconfig="make menuconfig"
    alias modinstall="s make modules_install"

    buildkernel() {
        if [ -d "./arch" ]; then
            make && modinstall && instkern
        else
            printf '%s\n' "Not in a linux kernel directory."
            return 1
        fi
    }
fi

# fzf
if hash fzf 2> /dev/null; then
     . "$HOME/.fzf/shell/completion.zsh"
     . "$HOME/.fzf/shell/key-bindings.zsh"
fi
