#!/usr/bin/env bash

DIRNAME=$(dirname $(realpath ${BASH_SOURCE[0]}))

ln -vsf $DIRNAME/.tmux.conf ~
ln -vsf $DIRNAME/.vimrc ~
mkdir -vp ~/.config/htop && ln -vsf $DIRNAME/htoprc ~/.config/htop
ln -vsf $DIRNAME/settings.json /home/wataru-usui/.config/Code/User
