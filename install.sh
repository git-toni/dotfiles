#!/bin/bash


cd $HOME
mkdir vimtemp #will save the temp files here
ln -sb dotfiles/.vimrc .
ln -sb dotfiles/.vimperatorrc .
ln -sb dotfiles/.tmux.conf .
ln -sb dotfiles/.bashrc .
ln -nfs dotfiles/i3 .config/i3

