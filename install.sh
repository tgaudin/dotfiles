#!/bin/sh

mkdir -p $HOME/.config/nvim/init.vim
ln -s $HOME/.config/nvim/init.vim $(pwd)/init.vim

ln -s $HOME/.screenrc $(pwd)/screenrc
