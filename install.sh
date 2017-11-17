#!/bin/sh

git clone https://github.com/gmarik/Vundle.vim.git $PWD/.vim/bundle/Vundle.vim

cp ./.vimrc $PWD/
sed -i "s%path-to-bundle%${PWD}/.vim/bundle%g" $PWD/.vimrc

alias vim='vim -u $PWD/.vimrc'
vim +PluginInstall +qall
