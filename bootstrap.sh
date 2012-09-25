#!/bin/bash

current_dir=`pwd`

# clean first
# TODO:test if exists first
unlink ~/.vimrc
unlink ~/.vim/bundles.vim
unlink ~/.vim/bundle
unlink ~/.gitconfig
rm -f ~/.bashrc && unlink ~/.bashrc
rm -f ~/.bash_aliases && unlink ~/.bash_aliases

# link git config
ln -s $current_dir/git/gitconfig ~/.gitconfig

# link vim config
ln -s $current_dir/vim/vimrc ~/.vimrc
mkdir ~/.vim/ -p
ln -s $current_dir/vim/bundles.vim ~/.vim/bundles.vim
ln -s $current_dir/vim/bundle ~/.vim/bundle
mkdir ~/.tmp/ -p # make tmp directory for vim temp files

# link bash config
ln -s $current_dir/bash/bashrc ~/.bashrc
ln -s $current_dir/bash/bash_aliases ~/.bash_aliases
