export LC_ALL=en_US.UTF-8 # vim locale category 
source  ~/.bash_aliases # aliases
source ~/.git-prompt.sh # __git_ps1
source ~/main/bin/activate # main python env
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;39m\] '
