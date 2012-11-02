#!/bin/bash

file_arry=(`ls -a`)
function install()
{
	dst="$HOME/$1"
	src="$PWD/$1"
	echo $f
	if [ -e $dst ]; then
		echo "file exist !! remove $dst"
		rm -Rf "$dst"
	fi

	ln -s $src $HOME
	echo "install $dst"
}

for file in ${file_arry[@]}
do
case "$file" in
	".git") echo ".git";;
	"install.sh") echo "I am !!";;
	"." | "..") echo "dir";;
	*) install $file;;
esac
done

