#!/bin/bash

vimdir=${HOME}/.vim
vimrc=${HOME}/.vimrc

if [ -d ${vimdir} ]; then
    mv $HOME/.vim $HOME/.vim.bak
fi

if [ -f ${vimrc} ]; then
    mv $HOME/.vimrc $HOME/.vimrc.bak
fi

cp -r ./vim ${HOME}/.vim
cp -r ./vimrc ${HOME}/.vimrc

mkdir -p ${HOME}/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ${HOME}/.vim/bundle/neobundle.vim
