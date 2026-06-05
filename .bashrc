# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
# --- Custom Clean Prompt ---
# Colors
COLOR_BLUE="\[\033[1;34m\]"
COLOR_CYAN="\[\033[1;36m\]"
COLOR_GREEN="\[\033[1;32m\]"
COLOR_MAGENTA="\[\033[1;35m\]" # Added for Git branch contrast
COLOR_RESET="\[\033[0m\]"

# Git Branch Logic: Safely extracts branch name using standard non-printed sequences
parse_git_branch() {
    local branch
    branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
    if [ -n "$branch" ]; then
        # Inside PS1 execution, we use raw octal escapes (\001 and \002) 
        # to tell Bash these are non-printing characters.
        echo -e "\001\033[1;34m\002(\001\033[1;35m\002${branch}\001\033[1;34m\002) "
    fi
}

# Prompt Logic: Turns prompt symbol red if the last command failed
PROMPT_STATUS="\$(if [ \$? -eq 0 ]; then echo \"${COLOR_GREEN}»\"; else echo \"\[\033[1;31m\]»\"; fi)"

# PS1 Structure: [username@hostname] [directory] (branch) >>
export PS1="${COLOR_BLUE}[${COLOR_CYAN}\u${COLOR_BLUE}@\h] ${COLOR_BLUE}[${COLOR_RESET}\W${COLOR_BLUE}] \$(parse_git_branch)${PROMPT_STATUS}${COLOR_RESET} "

# --- Handy Quality-of-Life Aliases ---
# Better file listing (ordered, colored, human-readable sizes)
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'

# Safety checks
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Quick navigation & utilities
alias ..='cd ..'
alias ...='cd ../..'
alias mkdir='mkdir -p'
alias path='echo -e ${PATH//:/\\n}' # Prints PATH cleanly line-by-line
alias reload='source ~/.bashrc'     # Quickly apply .bashrc changes

# --- Load user specific aliases and functions ---
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
