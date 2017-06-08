# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
if [ -d $HOME/dotfiles ]; then
    export DOTFILES=~/dotfiles
else
    export DOTFILES=~/
fi

# Path to your oh-my-zsh installation.
if [[ "$SHELL" =~ 'zsh' ]]; then
    export ZSH=/Users/ddelnano/.oh-my-zsh

    ZSH_THEME="cloud"
    plugins=(git)

    source $ZSH/oh-my-zsh.sh
fi

if [ -d $HOME/Code/go ]; then
    export GOPATH=$HOME/Code/go
    PATH=$PATH:$GOPATH/bin
fi

#newer version of vim
command -v nvim > /dev/null 2>&1
if [ $? -eq 0 ]; then
    alias vim='nvim'
fi

#reload bash configuration
alias reload='source ~/.bashrc'

#git
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gd="git diff"
alias gs='git status'
alias gp='git push'
alias gpom='git pull origin master'

export PATH=/usr/local/bin:/usr/local:$PATH":vendor/bin:~/.composer/vendor/bin:/usr/local/go/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# docker
alias de='docker exec -it'
alias dc="docker-compose"
alias dm="docker-machine"
alias dv="docker volume"

# cheat
export CHEATCOLORS=true

#tmux
alias tmux="TERM=screen-256color-bce tmux -2"

alias devbox="ssh -A dev1-uswest1cdevc"

# nvm / npm stuff
command -v nvm > /dev/null 2>&1
if [ $? -eq 0 ]; then
    export NVM_DIR="$HOME/.nvm"
    . "/usr/local/opt/nvm/nvm.sh"
fi

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [[ -S "$SSH_AUTH_SOCK" && ! -h "$SSH_AUTH_SOCK" ]]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock;
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock;

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
