[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# direnv
if [ $(command -v direnv) ]; then
  emulate zsh -c "$(direnv export zsh)"
fi

# please
if [ $(command -v plz) ]; then
  source <(plz --completion_script)
fi

# deno
if [ -f "$HOME/.deno/bin/deno" ]; then
  export DENO_INSTALL="$HOME/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"
fi
