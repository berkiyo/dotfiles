# berk's .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="\[\e[32m\]➜ \[\e[m\] \[\e[34m\]\w\[\e[m\] "

# aliases - directories
alias pro='cd ~/Projects/'
alias dls='cd ~/Downloads/'
alias docs='cd ~/Documents/'

# aliases - applications
alias d='sudo dnf'
alias search='dnf search'
alias sf='screenfetch'
alias sfm="sf -n -d '-host;-uptime;-kernel;-shell;-cpu;-gpu;-mem'"
alias mp3='/usr/bin/mp3dl.sh'
alias h='htop'
alias rf='source ~/.bashrc'
alias temps='sensors | grep Core'
alias dc='cd ..'
alias netlog='sudo netstat -natupc'
alias freq='cat /proc/cpuinfo | grep "MHz"'
alias python='python3'

. /etc/profile.d/vte.sh