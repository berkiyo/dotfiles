# berk's .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# aliases - applications
alias sf='screenfetch'
alias sfm="sf -n -d '-host;-uptime;-kernel;-shell;-cpu;-gpu;-mem'"
alias mp3='/usr/bin/mp3dl.sh'
alias h='htop'
alias rf='source ~/.bashrc'
alias temps='sensors | grep Core'
alias dc='cd ..'

