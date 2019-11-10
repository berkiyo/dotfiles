# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/berk/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias dc="cd .."
alias lla="ls -al"
alias yay="sudo dnf"
alias rf="source ~/.zshrc"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# aliases - sysinfo
alias temps="sensors | grep Core"
alias freq='cat /proc/cpuinfo | grep "MHz"'

# aliases - programs and directories
alias pro="cd ~/Projects/"
alias gitlog="git log --all --graph decorate --source --oneline"
alias mp3="bash /usr/local/bin/mp3dl.sh"

# default text editor
export EDITOR="vim"
