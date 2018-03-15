# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

#  Source the dotfiles
for DOTFILE in "$DOTFILES_DIR"/system/.{function,function_*,path,env,alias,completion,prompt}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done


if [[ "$OSTYPE" =~ ^darwin ]]; then
  for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias,function}.macos; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
  done
fi

# Source settings for bash
if [ -r ~/.bashrc ]
then
    source ~/.bashrc
fi
