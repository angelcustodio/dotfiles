### BASICS
export USER=$(whoami)
export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR="vi"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/Users/$USER/.yarn/bin"

### BREW
eval "$(/opt/homebrew/bin/brew shellenv)"

### NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

### SHORTENERS & CHEATS
alias npmglob="npm list -g --depth=0"
alias fixopenwith="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder && echo 'DONE';"

### AUTOJUMP
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

### COMPLETION
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

### COLOUREDBRANCHES
c_cyan=`tput setaf 6`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_sgr0=`tput sgr0`

branch_color ()
{
  if git rev-parse --git-dir >/dev/null 2>&1
  then
    color=""
    if git diff --quiet 2>/dev/null >&2
    then
      color="${c_green}"
    else
      color=${c_red}
    fi
  else
    return 0
  fi
  echo -ne $color
}

PS1='\u @ \[${c_red}\]\w\[${c_sgr0}\]\[$(branch_color)\]$(__git_ps1)\[${c_sgr0}\] '

### LANG
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### LINK TO RC
[[ -f ~/.bashrc ]] && source ~/.bashrc
