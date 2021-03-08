#!/bin/sh

###
### zsh
###

# zinit install
if [ ! -d ${HOME}/.zinit ]; then
  mkdir ${HOME}/.zinit
  git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
fi

ln -s $(pwd)/zshrc $HOME/.zshrc

###
### neovim config install
###

# Plug
if [ ! -d ${XDG_DATA_HOME:-$HOME/.local/share} ]; then 
  curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Config file
mkdir -p $HOME/.config/nvim/
ln -s $(pwd)/init.vim $HOME/.config/nvim/init.vim

ln -s $(pwd)/screenrc $HOME/.screenrc
