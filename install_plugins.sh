#!/bin/bash

PLUGIN_DIR=~/.vim/pack/bundle/start

mkdir -p $PLUGIN_DIR
cd $PLUGIN_DIR

plugins=(
    https://github.com/kien/ctrlp.vim.git
    https://github.com/junegunn/goyo.vim.git
    https://github.com/itchyny/lightline.vim.git
    https://github.com/python-mode/python-mode.git
    https://github.com/godlygeek/tabular.git
    https://github.com/tpope/vim-commentary.git
    https://github.com/tpope/vim-fugitive.git
    https://github.com/airblade/vim-gitgutter.git
    https://github.com/plasticboy/vim-markdown.git
    https://github.com/tpope/vim-surround.git
    https://github.com/maxbrunsfeld/vim-yankstack.git
    )

for p in ${plugins[*]}; do
    git clone $p
done
