#!/bin/sh

read -p "select a target directory: [Default $PWD]" TARGET
if [ -z "$TARGET" ]
then
    TARGET=$PWD
fi

echo $TARGET > $HOME/.TARGET

git clone https://github.com/gmarik/Vundle.vim.git $TARGET/.vim/bundle/Vundle.vim

cp ./.vimrc $TARGET/
sed -i "s%path-to-bundle%${TARGET}/.vim/bundle%g" $TARGET/.vimrc

alias vim='vim -u $TARGET/.vimrc'
vim +PluginInstall +qall
