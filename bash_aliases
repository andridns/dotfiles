# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# Add an "alert" alias for long running commands.  Use like so:
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# for GCP
# alias ssh_[INSTANCE]='ssh -i .ssh/[GCP_INSTANCE_NAME] [HOSTNAME]@[STATIC_IP]'
alias ydl='youtube-dl -f 18 -i --write-auto-sub --write-sub -o "%(upload_date)s - %(title)s.%(ext)s"'

# YDL
# download per channel, sorted by upload date (YYYYMMDD)
# youtube-dl -f 18 -i -o "%(upload_date)s - %(title)s.%(ext)s" https://www.youtube.com/user/ArtOfTheProblem/videos
# download playlists in channel into separate folders
# youtube-dl -o -f 18 -i "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLB4D701646DAF0817
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias l='ls -lht --color=auto'
alias la='ls -lAh --color=auto'
alias ll='ls -lh --color=auto'
alias ls='ls -G --color=auto'
alias lsa='ls -lah --color=auto'
alias lss='ls -lhS --color=auto'
alias ssh_andrimac='ssh andri@192.168.10.142'
alias ssh_iiyama='ssh andri@192.168.10.93'
alias ssh_pc032='ssh andri032@192.168.10.75'
alias ssh_pc032lan='ssh andri032@192.168.10.61'
