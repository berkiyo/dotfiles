# # # # # # # # # # # # # # # # #
# b e r k ' s    . b a s h r c  #
# # # # # # # # # # # # # # # # #


# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# user specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# fancy bash prompt customisation
export PS1="\[\e[32m\]➜ \[\e[m\] \[\e[34m\]\w\[\e[m\] "

# aliases
alias dc="cd .."
alias lla="ls -al"
alias yay="sudo dnf"
alias rf="source ~/.zshrc"
alias bashconfig="vim ~/.bashrc"

# aliases - sysinfo
alias temps="sensors | grep Core"
alias freq='cat /proc/cpuinfo | grep "MHz"'

# aliases - programs and directories
alias pro="cd ~/Projects/"
alias gitlog="git log --all --graph decorate --source --oneline"
alias mp3="bash /usr/local/bin/mp3dl.sh"
