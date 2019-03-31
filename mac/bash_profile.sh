# only show hostname and current directory
export PS1="\h:\W$ "
# ~/.bash_aliases, instead of adding them here directly.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
