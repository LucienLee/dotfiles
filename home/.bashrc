#homebrew path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

#z - jump around
. `brew --prefix`/etc/profile.d/z.sh

#nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
#nvm bash completion
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

#ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Auto run exec in current directory
export PATH="$PATH:."

### Set cd path
export CDPATH=".:..:~"

#Postgres
#export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

#open application
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox'
alias byword="open -a byword"

# Listing, directories, and motion
alias ll="ls -alrtFG"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls -G1'
alias vdir='ls -G@'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias localip='ifconfig |grep inet'

#git
alias g="git"
alias gs="git status"
alias gcl='git clone'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gcma="git commit -am"
alias gco='git checkout'
alias gd='git diff'
alias gp='git push'
alias gl='git pull'
alias gpp='git pull && git push'
alias gdel='git branch -D'
alias gus='git reset HEAD'

#python
alias py="python"
alias py3="python3"

#npn
alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nisd='npm install --save-dev'
alias nu='npm uninstall'
alias nus='npm uninstall --save'
alias nud='npm uninstall --save-dev'
alias nusd='npm uninstall --save-dev'
alias np='npm publish'
alias nup='npm unpublish'
alias nlk='npm link'
alias nod='npm outdated'
alias nrb='npm rebuild'
alias nud='npm update'
alias nr='npm run'
alias nls='npm list'
alias nlsg='npm list --global'

#yarn
alias yna='yarn add'
alias ynap='yarn add --peer'
alias ynad='yarn add --dev'

#grep option
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31' # green for matches

# Use o as open
o() { test $# = 0 && open . || open "$@"; }

#imagemagick
gifloop(){ convert -loop 0 "$@" "$@"; }

#secret key
source ~/Dropbox/Config/.secret.sh

#csie login
function csie {
    if [ -n "$1" ]; then
        ssh r02944010@linux"$1".csie.org
    else
        ssh r02944010@linux15.csie.org
    fi
}
