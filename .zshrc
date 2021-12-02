source $ZSH/oh-my-zsh.sh

alias ll='ls -al'

# docker
shellin='docker-compose exec web zsh'
alias dc='docker compose'
alias dps='docker compose ps'
alias du='docker compose up -d'
alias dk='docker compose kill'
alias dcb='docker compose build'
alias dd='docker compose down'
alias dce='docker compose exec'
alias drest='dcd && dcb && dcu' # clean restarts container

# simple server
alias server='python -m SimpleHTTPServer 8000'

# package managers
alias c4g='php -d memory_limit=4G /usr/locla/bin/composer'
alias cu='composer update'
alias cr='composer require'
alias ci='composer install'
alias npi='npm i'
alias npu='npm update'
alias npp='npm publish'
alias nb='npm run build'
alias nl='npm run lint'

# use ngrok for local tunneling to browserstack
alias bstunnel='./ngrok tls -region=us -hostname=placeholderurl.dev 443'

#git
alias gst='git status'
alias ga='git add'
alias ga.='git add .'
alias b='git branch'
alias gcb='git checkout -b'
alias gc='git checkout'
alias gcm='git checkout master || git checkout main'
alias gfc='git fetch && git checkout'
alias gpu='git pull origin'
alias gpom='git pull origin master || git pull origin main'
alias gpoh='git push origin head'
alias gbd='git branch -D'
alias gc-'git checkout -'
alias gcomit='git commit -m'
alias gdif='git diff'
alias greh='git reset --hard'
alias glg='git log'
alias gln='git clone'
# glog = graphic display in terminal of branching with commit sha and logs

alias myip='curl http://ipecho.net/plain; echo
alias reload='source ~/.zshrc' # run when updates are made to this file
alias sshadd='ssh-add ~/.ssh/id_rsa'

code () { VSCODE_CWD='$PWD' open -n -b 'com.microsoft.VSCode' --args $* ;}

# useful pre-configured zsh aliases
# ---------------------------------
# take - mkdir example-project && cd example-project
# d = list last used directories
# type cd or ~ = go to root directory
# ---------------------------------
# no need to type cd <dir name> to go into specific directories. Just type the directory name
# .. = go back 1 directory
# ... = go back 2 directories - each dot after 2 is a single directory

# npm ci - continuous integration to be sure we get exact stuff from lock file

# //-- troubleshooting --//
alias gsh='source $ZSH/oh-my-zsh.sh'
test -e '${HOME}/.iterm2_shell_integration.zsh' && source '${HOME}/.iterm2_shell_integration.zsh'

typeset -U PATH
