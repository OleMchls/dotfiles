# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Editor
export EDITOR=vim

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias please="sudo"
alias xfdings="tar xfvz"
alias composer="php ~/composer.phar"
alias sniff="sudo ngrep -W byline -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias git-yolo='git commit -am "`curl -s http://whatthecommit.com/index.txt`"'
alias lol="lolcommits -l"
alias jpkg="julia -e 'for pkg in ARGS; Pkg.add(pkg); end'"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew node github gem npm osx symfony2 vagrant bundler coffee battery composer emoji-clock git-hubflow git-extras github golang heroku npm rails sublime atom chruby php ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/share/npm/bin:/Users/ole/globalcomposer/vendor/bin

#PHP
export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# aws completion
source /usr/local/share/zsh/site-functions/_aws

# certs
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

#CUDA
export PATH="/Developer/NVIDIA/CUDA-5.5/bin:$PATH"
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-5.5/lib:$DYLD_LIBRARY_PATH

# added by travis gem
source /Users/ole/.travis/travis.sh

# go
export GOPATH="$HOME/.go"
export PATH="$PATH:$(go env GOROOT)/bin:$GOPATH/bin"

# fuckyou
function fuck() {
  if [ ! $1 ]; then
    echo "Usage: fuck you <process_name>"
    #exit
  fi

  if killall $2; then
    echo
    echo " (╯°□°）╯︵ ┻━┻"
    #echo " (╯°□°）╯︵$(echo $2 | flip)" # https://gist.github.com/Gargron/9122743
    echo
  fi
}
