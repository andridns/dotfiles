# enable color support of ls and also add handy aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# for GCP
# alias ssh_[INSTANCE]='ssh -i .ssh/[GCP_INSTANCE_NAME] [HOSTNAME]@[STATIC_IP]'

alias l='ls -lhtp --color=auto'
alias la='ls -lAhp --color=auto'
alias ll='ls -lhp --color=auto'
alias ls='ls -Gp --color=auto'
alias lsa='ls -lahp --color=auto'
alias lss='ls -lhSp --color=auto'
alias lsn='ls -1 | wc -l'
# Sample
#alias mrblocks='cd ~/Documents/Mask_RCNN/samples/blocks/
#source ~/tf112/bin/activate
#jupyter notebook
#cd ~/Documents/Mask_RCNN/'
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"


# Youtube-dl aliases
alias yd='youtube-dl -f 18 -i --write-auto-sub --write-sub -o "%(upload_date)s - %(title)s.%(ext)s"'
alias yd2='youtube-dl -f 22 -i --write-auto-sub --write-sub -o "%(upload_date)s - %(title)s.%(ext)s"'
alias yda='youtube-dl -f 251'
alias ydax='youtube-dl --external-downloader axel --external-downloader-args "-n 20 -a"'
alias ydf='youtube-dl -F'
alias ydl='youtube-dl -f'

# opening up files from terminal
alias open='xdg-open'
