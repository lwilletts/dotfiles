export HISTFILE="$HOME/.histfile"
export HISTSIZE="5000000"
export SAVEHIST="$HISTSIZE"

setopt share_history
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_expire_dups_first
setopt hist_save_no_dups
setopt extended_history
