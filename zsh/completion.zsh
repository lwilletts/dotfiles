# turn autocompletion on
autoload -Uz compinit
compinit

# superglobs
setopt extendedglob
unsetopt caseglob

# custom completions
fpath=($fpath $HOME/.zsh/completions)
