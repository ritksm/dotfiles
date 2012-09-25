#!/bin/bash

current_dir=`pwd`

# unlink first
unlink ~/.vimrc
unlink ~/.vim/bundles.vim
unlink ~/.vim/bundle
unlink ~/.gitconfig

ln -s $current_dir/git/gitconfig ~/.gitconfig
ln -s $current_dir/vim/vimrc ~/.vimrc
mkdir ~/.vim/ -p
ln -s $current_dir/vim/bundles.vim ~/.vim/bundles.vim
ln -s $current_dir/vim/bundle ~/.vim/bundle
