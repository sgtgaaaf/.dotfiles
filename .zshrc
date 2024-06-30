alias run='sh ./run.sh'
alias la='ls -la'
alias nv='nvim .'
alias dot='cd ~/.dotfiles/'
alias nvconfig='nvim ~/.dotfiles/nvim/'
alias add='git add .'
alias pull='git pull'
alias push='git push'
alias fetch='git fetch'
alias status='git status'
alias commit='git commit -m '
# Load Angular CLI autocompletion.
# source <(ng completion script)

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposhzsh/zen.toml)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/node@20/bin:$PATH"
