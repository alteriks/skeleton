#!/bin/bash

function update {
	LIST=".kde/share/apps/konsole/Solarized.colorscheme .fonts .oh-my-zsh .tmux* .vimrc .vim/ .zshrc"
	for x in $LIST; do
		cp -a ~kdajka/${x} .
	done
}

function install {
	LIST
}

case $1 in
	"update") update
	;;
	"install") install
	;;
	*) echo "update|install"
	;;
esac
