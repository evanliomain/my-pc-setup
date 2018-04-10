# User alias

# To ls and grep
alias ll='ls -alF'
alias la='ls -AlhF'
alias l='ls -lhF'
alias lg='ls -lhF | grep'
alias g='grep'
alias lm='ls -alF | more'

alias cdp='cd ~/project'
alias cdpp='cd ~/project_perso'
alias cds='cd ~/series'
alias cdf='cd ~/Vidéos/films'

# find
alias finddir='find . -type d -name'

# clear
alias clear='echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"; clear'

# To ps
alias psg='ps -fu $USER | grep -v grep | grep'

# Video
alias show='vlc -f'
alias sub='subliminal -lfr *'
alias video2audio='~/.my-pc-setup/bin/video2audio.sh'

# Bpm
alias bpmwrap='~/.my-pc-setup/bin/bpmwrap/bpmwrap.sh'


if [ -f ~/.git_aliases ]
then
    . ~/.git_aliases
fi

if [ -f ~/.project_aliases ]
then
    . ~/.project_aliases
fi
