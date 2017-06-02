#!/bin/bash

# run this to build repo
manager="oh-my-zsh"
theme="hipster"

files=(~/.zshrc ~/.dir_colors ~/.$manager/themes/$theme.zsh-theme ~/.tmux.conf ~/.vimrc)

for f in ${files[@]}
do
	cp $f `sed -E "s/\/home\/$USER\///;s/^[.](.+)/\1/;s/^.+($theme)/$theme/" <<< $f`
done
