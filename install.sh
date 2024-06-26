#!/bin/bash

if [[ -z $STOW_FOLDERS ]]; then
	STOW_FOLDERS=("i3" "nvim" "root-files" "tmux")
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi

if [ -z $XDG_CONFIG_HOME ]; then
	echo 'XDG_CONFIG_HOME must be set'
	exit 1
fi

pushd $DOTFILES &> /dev/null

for folder in "${STOW_FOLDERS[@]}"; do
	stow -R "$folder"
done

popd &> /dev/null
