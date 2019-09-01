# Homebrew path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# z - jump around
. `brew --prefix`/etc/profile.d/z.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#nvm bash completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Auto run exec in current directory
export PATH="$PATH:."

### Set cd path
export CDPATH=".:..:~"

# grep option
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31' # green for matches

# secret key
source ~/Dropbox/Config/.secret.sh
