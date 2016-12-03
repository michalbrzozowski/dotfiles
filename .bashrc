# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

export PS1='(\W)$(__git_ps1 "(%s)")\[$(tput setaf 4)\] > \[$(tput sgr0)\]'

# Aliases
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

alias tmux='rm -rf /tmp/tmux* && tmux -2'
alias ll='ls -la'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f "${HOME}/.bash_extra" ]; then
  source "${HOME}/.bash_extra"
fi

setxkbmap -layout us -option ctrl:nocaps
