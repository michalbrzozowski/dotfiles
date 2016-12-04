#!/bin/sh

rm -rf ~/.vim 2> /dev/null
rm -rf ~/.git_template 2> /dev/null

ln -s -f ~/repo/dotfiles/.bashrc              ~/.bashrc
ln -s -f ~/repo/dotfiles/.bash_profile        ~/.bash_profile

ln -s -f ~/repo/dotfiles/.gitconfig           ~/.gitconfig
ln -s -f ~/repo/dotfiles/.git_template        ~/.git_template

ln -s -f ~/repo/dotfiles/.git-completion.bash ~/.git-completion.bash
ln -s -f ~/repo/dotfiles/.git-prompt.sh       ~/.git-prompt.sh

ln -s -f ~/repo/dotfiles/.vimrc               ~/.vimrc
ln -s -f ~/repo/dotfiles/.vim                 ~/.vim

ln -s -f ~/repo/dotfiles/.i3                  ~/.i3
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
