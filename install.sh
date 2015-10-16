#!/bin/bash

PWD=`pwd`
REPOSITORY_PATH=${REPOSITORY_PATH-$PWD}

VIM_HOME=${HOME}/.vim
VIMRC_PATH=${HOME}/.vimrc
ZSH_HOME=${HOME}/.zsh
ZSHRC_PATH=${HOME}/.zshrc
ZSHENV_PATH=${HOME}/.zshenv
GITCONFIG_PATH=${HOME}/.gitconfig

if [[ -d ${VIM_HOME} || -f ${VIMRC_PATH} || -d ${ZSH_HOME} || -f ${ZSHRC_PATH} || -f ${ZSHENV_HOME} || -f ${GITCONFIG_PATH} ]]; then
    echo "vim or zsh environemt already exists."
    echo "backup and remove ${VIM_HOME} ${VIMRC_PATH} ${ZSH_HOME} ${ZSHRC_PATH} ${ZSHENV_PATH} ${GITCONFIG_PATH}"
    exit 1
fi

# make static link
ln -s ${REPOSITORY_PATH}/vim       ${VIM_HOME}
ln -s ${REPOSITORY_PATH}/vimrc     ${VIMRC_PATH}
ln -s ${REPOSITORY_PATH}/zsh       ${ZSH_HOME}
ln -s ${REPOSITORY_PATH}/zshrc     ${ZSHRC_PATH}
ln -s ${REPOSITORY_PATH}/zshenv    ${ZSHENV_PATH}
ln -s ${REPOSITORY_PATH}/gitconfig ${GITCONFIG_PATH}

# Install NeoBundle
mkdir -p ${VIM_HOME}/bundle
git clone git://github.com/Shougo/neobundle.vim ${VIM_HOME}/bundle/neobundle.vim
