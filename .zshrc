### OHMYZSH
plugins=(
  git
  osx
  zsh_reload
)
ZSH_THEME="robbyrussell"

### Z
. /usr/local/etc/profile.d/z.sh

### NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
