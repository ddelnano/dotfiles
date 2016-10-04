export GOPATH=$HOME/Code/go
PATH=$PATH:$GOPATH/bin

#newer version of vim
alias vim='nvim'

#reload bash configuration
alias reload='source ~/.bashrc'

#git
alias ga="git add"
alias gaa="git add ."
alias gs='git status'
alias gp='git push'
alias gpom='git pull origin master'

#homestead
alias homestead='~/.composer/vendor/laravel/homestead/homestead'

#gradle
alias grun='./gradlew run'
alias gtest='./gralew test'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# nowait 
alias nw-exec="docker exec -it nowait-server"

alias cs-exec="docker exec -it checkstatus"

# docker
alias dc="docker-compose"
alias dm="docker-machine"
alias dv="docker volume"

function dc_remove_all {
    docker stop $(docker ps -aq)
    docker rm -v $(docker ps -aq)
    docker volume rm $(docker volume ls -q)
    docker rmi $(docker images -q)
}

# cheat
export CHEATCOLORS=true

#tmux
alias tmux="TERM=screen-256color-bce tmux -2"

# nvm / npm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
