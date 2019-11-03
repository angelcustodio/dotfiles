### ZSH
plugins=(
  git
  osx
  zsh_reload
)
ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT=true
HIST_STAMPS="dd.mm.yyyy"

export EDITOR="vim"
export ARCHFLAGS="-arch x86_64"

alias npmlistg="npm list -g --depth=0"
alias fixopenwith="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"

### Z
. /usr/local/etc/profile.d/z.sh

### NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
