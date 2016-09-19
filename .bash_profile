# ~/.bash_profile

[[ -s ~/.bashrc ]] && source ~/.bashrc
# Load in the git branch prompt script.
source ~/.git-prompt.sh
source ~/.profile

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PATH=/Applications/MAMP/bin/php/php5.6.7/bin:$PATH


alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias ls='ls -GFh'
alias ll='ls -l'

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u $PURPLE@ $GREEN\w $RESETCOLOR$GREENBOLD\$(__git_ps1)\n $BLUE[\#] → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

prompt

export PATH="/usr/local/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
