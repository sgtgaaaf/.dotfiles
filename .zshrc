alias run='sh ./run.sh'
alias la='ls -la'
alias nv='nvim .'
# Load Angular CLI autocompletion.
# source <(ng completion script)

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposhzsh/zen.toml)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/node@20/bin:$PATH"
