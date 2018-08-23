# Use Alt-arrows for local history, Ctrl-arrows for global history
# Plain arrows kept for the smart history search.
# Based on:
# - https://superuser.com/a/691603/84807
# - https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys

up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-search
    zle set-local-history 0
}
zle -N up-line-or-local-history

down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-search
    zle set-local-history 0
}
zle -N down-line-or-local-history

bindkey "${key[Up]}" up-line-or-beginning-search
bindkey "${key[Down]}" down-line-or-beginning-search
bindkey "^[[1;5A" up-line-or-search    # [CTRL] + Cursor up
bindkey "^[[1;5B" down-line-or-search  # [CTRL] + Cursor down
bindkey "^[[1;3A" up-line-or-local-history    # [ALT] + Cursor up
bindkey "^[[1;3B" down-line-or-local-history  # [ALT] + Cursor up
