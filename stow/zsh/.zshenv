[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# direnv
if [ $(command -v direnv) ]; then
  emulate zsh -c "$(direnv export zsh)"
fi

# keychain
if [ $(command -v keychain) ]; then
  GPG_AGENT_INFO="~/.gnupg/S.gpg-agent:$(pgrep gpg-agent):1"
  eval $(keychain --nogui --noask --quiet --agents "ssh,gpg" --eval ~/.ssh/$(hostname) C52C45ABD0FD5D8D)
  source ~/.keychain/$(hostname)-sh
  source ~/.keychain/$(hostname)-sh-gpg
fi

# please
if [ $(command -v plz) ]; then
  source <(plz --completion_script)
fi

