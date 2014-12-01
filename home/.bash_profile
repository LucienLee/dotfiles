#use a terminal with encoding set to UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


#bash color
#enables colorin the terminal bash shell export
CLICOLOR=1

#sets up thecolor scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad

#sets up theprompt color (currently a green similar to linux terminal)
export PS1="\[\e[00;32m\]\u@\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\][\w]\[\e[0m\]\[\e[00;34m\]:\$(__git_ps1)\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"



#enables color for iTerm
export TERM=xterm-color

#bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Source settings for bash
if [ -r ~/.bashrc ]
then
    source ~/.bashrc
fi
