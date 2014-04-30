#!/bin/bash

vimdir=${HOME}/.vim
vimrc=${HOME}/.vimrc

if [ -a ${vimdir}.bak ]; then
    rm -rf $HOME/.vim
    mv $HOME/.vim.bak $HOME/.vim
fi

if [ -a ${vimrc}.bak ]; then
    rm -f $HOME/.vimrc
    mv $HOME/.vimrc.bak $HOME/.vimrc
fi
