#!/bin/bash

if [[ -z $STOW_FOLDERS ]]; then
	STOW_FOLDERS=("i3" "nvim" "root-files" "tmux")
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi

pushd $DOTFILES &> /dev/null

for folder in "${STOW_FOLDERS[@]}"; do
	stow -R "$folder"
done

popd &> /dev/null
