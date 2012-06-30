# ssh autocompletion
if [ -r ~/.ssh/config ]; then
complete -W "$(echo `if [ -r ~/.ssh/config ]; then cat ~/.ssh/config; fi | grep Host | cut -f 2 -d ' ' | uniq`;)" ssh
fi

# vagrant autocomplete
#complete -W "$(echo `vagrant --help | awk '/box/,/up/ {print $1}'`;)" vagrant
complete -W "$(echo `vagrant --help | awk '/^     /{print $1}'`;)" vagrant

# brew autocompletion
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh

#git autocompletion and magic stuff
source /usr/local/etc/bash_completion.d/git-completion.bash
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '

# aliases
alias ll="ls -la -G"
alias please="sudo"
alias xfdings="tar xfvz"
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias composer="php ~/composer.phar"

#NODE PATH STUFF
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

##
# Your previous /Users/ole/.profile file was backed up as /Users/ole/.profile.macports-saved_2012-04-04_at_23:33:43
##

# MacPorts Installer addition on 2012-04-04_at_23:33:43: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
