# digiberk's .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# prompt customisation
export PS1="\[\e[32m\]➜ \[\e[m\] \[\e[34m\]\w\[\e[m\] "

# aliases
alias rf='source ~/.bashrc'
alias dc='cd ..'
alias temps='sensors | grep Core'
alias freq='cat /proc/cpuinfo | grep "MHz"'

. /etc/profile.d/vte.sh