#!/bin/bash

HERE=`pwd`

# install vim-plug
curl -fkLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if $? -ne 0; then
    echo "error: download vim-plug failed."
    exit 1
fi

# config vimrc
VIMRC_DIR=${HERE}/vim/vimrc
ln -s ${VRIMRC_DIR} ~/.vimrc

# config lldb
LLDBINIT_DIR=${HERE}/lldb/lldbinit
ln -s ${LLDBINIT_DIR} ~/.lldbinit
