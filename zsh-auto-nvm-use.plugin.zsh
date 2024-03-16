autoload -U add-zsh-hook

load-nvmrc() {
  if [[ -e .nvmrc && -r .nvmrc ]]; then
    if ! declare -f nvm > /dev/null; then
      [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    fi
    nvm use
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
