# enable color support of ls and also add handy aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# for GCP
# alias ssh_[INSTANCE]='ssh -i .ssh/[GCP_INSTANCE_NAME] [HOSTNAME]@[STATIC_IP]'
# Youtube-dl aliases
alias yd='youtube-dl -f 18 -i --write-auto-sub --write-sub -o "%(upload_date)s - %(title)s.%(ext)s"'
alias yd22='youtube-dl -f 22 -i --write-auto-sub --write-sub -o "%(upload_date)s - %(title)s.%(ext)s"'
alias yda='youtube-dl -f 251'
alias ydf='youtube-dl -F'
alias l='ls -lht --color=auto'
alias la='ls -lAh --color=auto'
alias ll='ls -lh --color=auto'
alias ls='ls -G --color=auto'
alias lsa='ls -lah --color=auto'
alias lss='ls -lhS --color=auto'
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
