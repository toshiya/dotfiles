#!/bin/bash

vimdir=${HOME}/.vim
vimrc=${HOME}/.vimrc
zshdir=${HOME}/.zsh
zshenv=${HOME}/.zshenv
zshrc=${HOME}/.zshrc
gitconfig=${HOME}/.gitconfig

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

if [ -f ${zshenv} ]; then
    mv ${zshenv} ${zshenv}.bak
fi

if [ -f ${gitconfig} ]; then
    mv ${gitconfig} ${gitconfig}.bak
fi

cp ./vimrc ${HOME}/.vimrc
cp ./zshenv ${HOME}/.zshenv
cp ./zshrc ${HOME}/.zshrc
cp ./gitconfig ${HOME}/.gitconfig

cp -r ./vim ${HOME}/.vim
cp -r ./zsh ${HOME}/.zsh

mkdir -p ${HOME}/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ${HOME}/.vim/bundle/neobundle.vim
git clone git@github.com:VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
