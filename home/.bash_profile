#use a terminal with encoding set to UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


#bash color
#enables colorin the terminal bash shell export
CLICOLOR=1

#sets up thecolor scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad

#sets up theprompt color (currently a green similar to linux terminal)
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
PS1="\[\033[0;34m\][\u@\h:\w]$\[\033[0m\]"

#enables color for iTerm
export TERM=xterm-color


# Source settings for bash
if [ -r ~/.bashrc ]
then
    source ~/.bashrc
fi
