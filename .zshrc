# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Editor
export EDITOR=vim

# UTF-8 Locals
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias please="sudo"
alias xfdings="tar xfvz"
alias sniff="sudo ngrep -W byline -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias git-yolo='git commit -am "`curl -s http://whatthecommit.com/index.txt`"'
alias lol="lolcommits -l"
alias cmon="bundle install && yarn install && rails db:migrate"

eval "$(thefuck --alias)"

# Completion
fpath=(/usr/local/share/zsh/site-functions $fpath)

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Best of Ask HN: Share your favourite bash/zsh aliases" https://news.ycombinator.com/item?id=9869231
# Do something and receive a desktop alert when it completes `sudo apt-get install something | alert`
alias alert='terminal-notifier -title "$([ $? = 0 ] && echo terminal || echo error)" -message "$(pwd)" -subtitle ""'
# Search process by name and highlight !
function psgrep() { ps aux | grep -v grep | grep "$@" -i --color=auto; }
# Search for files and page it
function search() { find . -iname "*$@*" | less; }
# eXpand anything
alias xx="atool -x"
# unix timestap
alias ts="date +%s"
# fix rubycop issues and stage
alias rcop="rubocop --format simple --auto-correct; git add -p"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew node gem npm osx vagrant bundler coffee composer git-extras golang heroku npm rails atom ruby mix-fast)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/share/npm/bin

# chruby
#source /usr/local/opt/chruby/share/chruby/chruby.sh
#source /usr/local/opt/chruby/share/chruby/auto.sh

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# added by travis gem
[ -f /Users/ole/.travis/travis.sh ] && source /Users/ole/.travis/travis.sh

# pokemon-terminal
# export PATH=$PATH:$HOME/.pokemon-terminal
# pokemon random-kanto && clear

# important
# fortune | ponysay

#LOLCOMMITS
export LOLCOMMITS_DELAY=2

# pgp
export GPG_TTY=$(tty)


. /usr/local/opt/asdf/asdf.sh
