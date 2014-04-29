#!/bin/bash

vimdir=${HOME}/.vim
vimrc=${HOME}/.vimrc

if [ -a ${vimdir} ]; then
    mv $HOME/.vim $HOME/.vim.bak
fi

if [ -a ${vimrc} ]; then
    mv $HOME/.vimrc $HOME/.vimrc.bak
fi

cp -r ./vim ${HOME}/.vim
cp -r ./vimrc ${HOME}/.vimrc

git clone git://github.com/Shougo/neobundle.vim ${HOME}/.vim/bundle/neobundle.vim
