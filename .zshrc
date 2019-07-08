# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh my zsh
export ZSH="/home/berk/.oh-my-zsh"

# zsh theme
ZSH_THEME="agnoster"

# plugins
plugins=(git)

# aliases
alias install="sudo dnf install"
alias upgrade="sudo dnf upgrade"
alias rf="source ~/.zshrc"
alias dc="cd .."
alias temps="sensors | grep Core"
alias freq="cat /proc/cpuinfo | grep MHz"
alias search="dnf search"
alias pro="cd ~/Projects/"
alias lla="ls -al"
alias gitlog="git log --all --graph decorate --source --oneline"
alias ef="nano ~/.zshrc"
alias mp3="bash /usr/local/bin/mp3dl.sh"

# User configuration
source $ZSH/oh-my-zsh.sh
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
