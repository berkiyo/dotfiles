# berk's .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="\[\e[32m\]➜ \[\e[m\] \[\e[34m\]\w\[\e[m\] "


# aliases - general
alias sf='screenfetch'
alias sfm="sf -n -d '-host;-uptime;-kernel;-shell;-cpu;-gpu;-mem'"
alias h='htop'
alias rf='source ~/.bashrc'
alias dc='cd ..'
alias netlog='sudo netstat -natupc'
alias python='python3'

# aliases - CPU
alias temps='sensors | grep Core'
alias freq='cat /proc/cpuinfo | grep "MHz"'

. /etc/profile.d/vte.sh