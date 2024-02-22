# Editor
export EDITOR=vim

# UTF-8 Locals
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Example aliases
alias please="sudo"
alias xfdings="tar xfvz"
alias sniff="sudo ngrep -W byline -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias git-yolo='git commit -am "`curl -s http://whatthecommit.com/index.txt`"'
alias lol="lolcommits -l"
alias cmon="bundle install && yarn install && bundle exec rails db:migrate"
alias get_idf='. $HOME/esp/esp-idf/export.sh'

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
# COMPLETION_WAITING_DOTS="true"

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/share/npm/bin

# brew
eval $(/opt/homebrew/bin/brew shellenv)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
# https://github.com/Homebrew/brew/issues/10152#issuecomment-774730204
export CPPFLAGS="-I$(brew --prefix)/include"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#LOLCOMMITS
export LOLCOMMITS_DELAY=2

# pgp
export GPG_TTY=$(tty)

# ASDF
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

# Cabal
export PATH=$PATH:$HOME/.cabal/bin

# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit

###-begin-envkey-completions-###
#
# yargs command completion script
#
# Installation: usr/local/bin/envkey completion >> ~/.zshrc
#    or usr/local/bin/envkey completion >> ~/.zsh_profile on OSX.
#
_envkey_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" usr/local/bin/envkey --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _envkey_yargs_completions envkey
###-end-envkey-completions-###

