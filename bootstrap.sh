#!/bin/bash

current_dir=`pwd`

function cleanfile
{
    file=$1

    if [ -e "$file" ]
    then
        if [ -L "$file" ]
        then
            unlink $file
        else
            rm -rf $file
        fi
    fi
}

# clean first
# TODO:test if exists first
# vim
cleanfile ~/.vimrc
cleanfile ~/.vim/template
cleanfile ~/.vim/templates.vim
cleanfile ~/.vim/bundles.vim
cleanfile  ~/.vim/bundle
# git
cleanfile ~/.gitconfig
# bash
cleanfile ~/.bashrc
cleanfile ~/.bash_aliases



# git config
ln -s $current_dir/git/gitconfig ~/.gitconfig

# vim config
ln -s $current_dir/vim/vimrc ~/.vimrc
mkdir ~/.vim/ -p
# template
ln -s $current_dir/vim/template ~/.vim/template
ln -s $current_dir/vim/templates.vim ~/.vim/templates.vim
# bundle
ln -s $current_dir/vim/bundles.vim ~/.vim/bundles.vim
git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle/
vim +BundleInstall +qall
# vim backup file
mkdir ~/.tmp/ -p # make tmp directory for vim temp files

# bash config
ln -s $current_dir/bash/bashrc ~/.bashrc
# bash aliases
ln -s $current_dir/bash/bash_aliases ~/.bash_aliases
