# # # # # # # # # # # # # # # # #
# b e r k ' s    . b a s h r c  #
# # # # # # # # # # # # # # # # #

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# # # # # # # # # # # # # # 
# B A S H    P R O M P T  #
# # # # # # # # # # # # # # 
# get current branch in git repo
# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo " [${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\[\e[34m\]\w\[\e[m\]\`parse_git_branch\` \[\e[31m\]>\[\e[m\]\[\e[33m\]>\[\e[m\]\[\e[36m\]>\[\e[m\] "


# # # # # # # # # 
# A L I A S E S #
# # # # # # # # #
alias dc="cd .."
alias lla="ls -al"
alias yay="sudo dnf"
alias rf="source ~/.bashrc"
alias bashconfig="vim ~/.bashrc"
alias gpom="git push origin master"

# aliases - sysinfo
alias temps="sensors | grep Core"
alias freq='cat /proc/cpuinfo | grep "MHz"'

# aliases - programs and directories
alias pro="cd ~/Projects/"
alias gitlog="git log --all --graph decorate --source --oneline"
alias mp3="youtube-dl --extract-audio --audio-format mp3" 
# alias i3c="vim ~/.config/i3/config" 