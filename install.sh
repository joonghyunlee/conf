#!/bin/sh

git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

cp ./.vimrc $HOME/
sed -i 's/path-to-bundle/'"$HOME"'/' ~/.vimrc

vim +PluginInstall +qall
