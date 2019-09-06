# berk's .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# prompt customisation
export PS1="\[\e[32m\]➜ \[\e[m\] \[\e[34m\]\w\[\e[m\] "


# aliases - general
alias dc="cd .."
alias lla="ls -al"
alias install="sudo dnf install"
alias rf="source ~/.bashrc"
alias upgrade="sudo dnf upgrade"
alias rf="source ~/.bashrc"
alias ef="nano ~/.bashrc"

# aliases - sysinfo
alias temps="sensors | grep Core"
alias freq='cat /proc/cpuinfo | grep "MHz"'

# aliases - programs and directories
alias pro="cd ~/Projects/"
alias gitlog="git log --all --graph decorate --source --oneline"
alias mp3="bash /usr/local/bin/mp3dl.sh"


# default text editor
export EDITOR="vim"

. /etc/profile.d/vte.sh
