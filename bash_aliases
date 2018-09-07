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
