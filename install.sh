#!/bin/bash

if [ -z $XDG_CONFIG_HOME ]; then
	echo 'XDG_CONFIG_HOME must be set'
	exit 1
fi

cp .bashrc ~/.bashrc
cp -r .tmux ~/.tmux
cp .tmux.conf ~/.tmux.conf

cp -r nvim $XDG_CONFIG_HOME'/nvim'
cp -r i3 $XDG_CONFIG_HOME'/i3'
