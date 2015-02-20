#homebrew path
export PATH=/usr/local/bin:$PATH

#z - jump around
. `brew --prefix`/etc/profile.d/z.sh

#nvm
source ~/.nvm/nvm.sh
#nvm bash completion
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

#mysql
alias mysqlstart='sudo /Library/StartupItems/MySQLCOM/MySQLCOM restart'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

#Postgres
#export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

#open application
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox'
alias mou="open -a mou"

# Listing, directories, and motion
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'

#git
alias g="git"
alias gs="git status"
alias gca='git commit -a'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gcma="git commit -am"
alias gco='git checkout'
alias gd='git diff'

#python
alias py="python"

#grep option
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31' # green for matches

# Use o as open
o() { test $# = 0 && open . || open "$@"; }

#---
function csie {
    if [ -n "$1" ]; then
        ssh r02944010@linux"$1".csie.org
    else
        ssh r02944010@linux15.csie.org
    fi
}
#secret key
source ~/Dropbox/Config/.secret.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

