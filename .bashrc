# .bashrc

# Source global definitions
if [ -f /etc/bash/bashrc ]; then
	. /etc/bash/bashrc
    echo "source /etc/bash/bashrc done"
fi

# User specific aliases and functions
alias dummy='dummy'
alias ll='ls -al --color=auto'
alias psa='ps -aux'
alias m='make'
alias m8='make -j8'
alias cd3i='cd /usr/local/infowatch/tm3'
alias cd3d='cd ~/dev/tm34-all'
alias cd5i='cd /opt/iw/tm5'
alias cd5d='cd ~/dev/tm5'
alias gst='git status'
alias gbr='git branch'
#alias gco='git checkout'
#alias gcp='git cherry-pick'
#alias gpl='git pull'
alias grb='git rebase'
alias gdf='git diff'
alias gdfi='git diff --cached'
alias gad='git add'
alias gadu='git add -u'
alias glol='git lol'
alias glola='git lola'
alias gco='echo "Hello"'
alias gcp='echo "Hello"'
alias gpl='echo "Hello"'


export C_INCLUDE_PATH=/usr/lib64/perl5/CORE
export CPP_INCLUDE_PATH=$C_INCLUDE_PATH

export PATH=/home/anatoly/bin:/usr/lib64/ccache/bin:$PATH:/sbin:/usr/sbin

export NLS_LANG=AMERICAN_AMERICA.UTF8
export ORACLE_HOME=/usr/lib64/oracle/11.2.0.4/client
export ORACLE_SID=besent

source ~/.git-prompt.sh
export PS1='\[\033[01;32m\]\u@\h\[\033[01;35m\] \w\[\033[01;31m\]$(__git_ps1 " (%s)") \[\033[01;32m\]\$\[\033[00m\] '

echo "source ~/.bashrc done"
