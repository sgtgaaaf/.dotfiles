alias run='sh ./run.sh'
alias la='ls -la'
alias nv='nvim .'
alias dot='cd ~/.dotfiles/'
# alias nvc='cd ~/.dotfiles/nvim/ && nvim .'
alias nvc='nvim ~/.dotfiles/nvim/'
alias add='git add .'
alias pull='git pull'
alias push='git push'
alias fetch='git fetch'
alias status='git status'
alias commit='git commit -m '
alias mc='cd /mnt/c/Users/Sarthak.Ghimire/'
alias zc='nvim ~/.zshrc'
# Load Angular CLI autocompletion.
# source <(ng completion script)

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposhzsh/zen.toml)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/node@20/bin:$PATH"
export PATH="/usr/local/Cellar/w3m/0.5.3_8/bin:$PATH"
export PATH=$PATH:/usr/local/pgsql/bin
export PATH="/usr/local/opt/postgresql@17/bin:$PATH"
>>>>>>> 4d850c565ccf33ae0bc3adb51f5c383d642c45cd
