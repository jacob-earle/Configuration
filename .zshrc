autoload -Uz compinit
compinit

# Setting path
typeset -U path PATH
pathdirs=(
    ~/.local/bin
    ~/.cargo/bin
)
for dir in $pathdirs; do
    if [ -d $dir ]; then
        path+=$dir
    fi
done
export PATH

# Prompt
eval "$(starship init zsh)"

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Miscellaneous setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source autocompletion and syntax highlighting
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

