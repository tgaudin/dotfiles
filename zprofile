if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
  alias ls='ls -G'
elif [[ "$OSTYPE" == linux* ]]; then
  alias ls='ls --color'
else
  export BROWSER='xdg-open'
fi

#
# Aliases
#

alias ..='cd ..'
alias ...='cd ../..'
alias jup='jupyter notebook'
alias w3id='pass show -c ibm/w3id'
alias vim='nvim'
alias map='telnet mapscii.me'
# From rsync plugin
alias rsync-copy="rsync -avz --progress -h"
alias rsync-move="rsync -avz --progress -h --remove-source-files"

#
# Editors
#

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

path=(
  /usr/local/{bin,sbin}
  $path
)

#
# pyenv
#
if [[ -d "$HOME/.pyenv" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
    eval "$(pyenv virtualenv-init -)"
  fi
fi

#
# nodenv
#
if [[ -d "$HOME/.nodenv" ]]; then
  export PATH="$HOME/.nodenv/bin:$PATH"
  if command -v nodenv 1>/dev/null 2>&1; then
    eval "$(nodenv init -)"
  fi
fi
