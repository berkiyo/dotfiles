# ==========================================================
# Arch Linux / XFCE - Bash Configuration
# ==========================================================

# ----------------------------------------------------------
# System-wide configuration
# ----------------------------------------------------------

if [[ -f /etc/bash.bashrc ]]; then
    source /etc/bash.bashrc
fi

# ----------------------------------------------------------
# User PATH
# ----------------------------------------------------------

for dir in "$HOME/.local/bin" "$HOME/bin"; do
    if [[ -d "$dir" && ":$PATH:" != *":$dir:"* ]]; then
        PATH="$dir:$PATH"
    fi
done

export PATH

# ----------------------------------------------------------
# Bash behaviour
# ----------------------------------------------------------

# Enable extended globbing
shopt -s extglob

# Check window size after each command
shopt -s checkwinsize

# Append to history instead of overwriting
shopt -s histappend

# History configuration
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth:erasedups
HISTTIMEFORMAT='%F %T '

# ----------------------------------------------------------
# BASH auto completion
# ----------------------------------------------------------

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
    source /usr/share/bash-completion/bash_completion
fi

# ----------------------------------------------------------
# Git branch detection & Prompt
# ----------------------------------------------------------

# Source Arch's official git-prompt script
if [[ -r /usr/share/git/completion/git-prompt.sh ]]; then
    source /usr/share/git/completion/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=1       # Adds * for unstaged, + for staged changes
    GIT_PS1_SHOWUNTRACKEDFILES=1   # Adds % for untracked files
fi

__update_prompt_state() {
    __last_status=$?
    history -a
}

PROMPT_COMMAND='__update_prompt_state'

# Helper to safely display git branch only if __git_ps1 is loaded
__safe_git_ps1() {
    declare -F __git_ps1 >/dev/null && __git_ps1 "(%s) "
}

PS1='\[\033[1;34m\][\[\033[1;36m\]\u\[\033[1;34m\]@\h] '
PS1+='\[\033[1;34m\][\[\033[0m\]\W\[\033[1;34m\]] '
PS1+='\[\033[1;35m\]$(__safe_git_ps1)\[\033[0m\]'
PS1+='\[$(if (( __last_status == 0 )); then printf "\033[1;32m"; else printf "\033[1;31m"; fi)\]»'
PS1+='\[\033[0m\] '

# ----------------------------------------------------------
# Aliases - File management
# ----------------------------------------------------------

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# Safety confirmations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ----------------------------------------------------------
# Navigation
# ----------------------------------------------------------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias mkdir='mkdir -p'

# ----------------------------------------------------------
# Utilities
# ----------------------------------------------------------

alias path='printf "%s\n" "${PATH//:/\\n}"'
alias reload='source ~/.bashrc'
alias cls='clear'

# ----------------------------------------------------------
# Arch Linux utilities
# ----------------------------------------------------------

alias update='sudo pacman -Syu'
alias cleanup='sudo pacman -Sc'

# ----------------------------------------------------------
# User-specific aliases and functions
# ----------------------------------------------------------

if [[ -d "$HOME/.bashrc.d" ]]; then
    for rc in "$HOME"/.bashrc.d/*.sh; do
        [[ -f "$rc" ]] && source "$rc"
    done
fi

unset rc