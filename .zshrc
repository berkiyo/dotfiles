# # # # # # # # # # # # # # # #
# b e r k ' s    . z s h r c  #
# # # # # # # # # # # # # # # #


export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/berk/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# aliases
alias dc="cd .."
alias lla="ls -al"
alias yay="sudo dnf"
alias rf="source ~/.zshrc"
alias bashconfig="vim ~/.zshrc"
alias gpom="git push origin master"

# aliases - sysinfo
alias temps="sensors | grep Core"
alias freq='cat /proc/cpuinfo | grep "MHz"'

# aliases - programs and directories
alias pro="cd ~/Projects/"
alias gitlog="git log --all --graph decorate --source --oneline"
alias mp3="bash /usr/local/bin/mp3dl.sh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
