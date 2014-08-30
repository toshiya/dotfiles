#!/bin/bash

vimdir=${HOME}/.vim
vimrc=${HOME}/.vimrc
zshdir=${HOME}/.zsh
zshrc=${HOME}/.zshrc

if [ -d ${vimdir} ]; then
    if [ -d ${vimdir}.bak ]; then
        rm -rf ${vimdir}.bak
    fi
    mv ${vimdir} ${vimdir}.bak
fi

if [ -f ${vimrc} ]; then
    mv ${vimrc} ${vimrc}.bak
fi

if [ -d ${zshdir} ]; then
    if [ -d ${zshdir}.bak ]; then
        rm -rf ${zshdir}.bak
    fi
    mv ${zshdir} ${zshdir}.bak
fi

if [ -f ${zshrc} ]; then
    mv ${zshrc} ${zshrc}.bak
fi

cp -r ./vim ${HOME}/.vim
cp -r ./vimrc ${HOME}/.vimrc

mkdir -p ${HOME}/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ${HOME}/.vim/bundle/neobundle.vim
