#!/bin/bash

current_dir=`pwd`

function cleanfile
{
    file=$1

    if [ -e "$file" ]
    then
        rm -rf $file
    fi
    if [ -h "$file" ]
    then
        unlink $file
    fi
}

# clean first
# vim
cleanfile ~/.vimrc
cleanfile ~/.vim/template
cleanfile ~/.vim/templates.vim
cleanfile ~/.vim/bundles.vim
cleanfile ~/.vim/bundle
cleanfile ~/.vim/pluginconfig.vim
# git
cleanfile ~/.gitconfig
# bash
cleanfile ~/.bashrc
cleanfile ~/.bash_aliases
cleanfile ~/.bash_logout
#zsh
cleanfile ~/.zshrc
cleanfile ~/.oh-my-zsh



# start linking config
# git config
ln -s $current_dir/git/gitconfig ~/.gitconfig

# vim config
ln -s $current_dir/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/
# template
ln -s $current_dir/vim/template ~/.vim/template
ln -s $current_dir/vim/templates.vim ~/.vim/templates.vim
# bundle
ln -s $current_dir/vim/bundles.vim ~/.vim/bundles.vim
git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle/
vim +BundleInstall +qall
# plugin config
ln -s $current_dir/vim/pluginconfig.vim ~/.vim/pluginconfig.vim
# vim backup file
mkdir -p ~/.tmp/ # make tmp directory for vim temp files

# bash config
ln -s $current_dir/bash/bashrc ~/.bashrc
# bash aliases
ln -s $current_dir/bash/bash_aliases ~/.bash_aliases
# bash logout
ln -s $current_dir/bash/bash_logout ~/.bash_logout


# zsh config
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
