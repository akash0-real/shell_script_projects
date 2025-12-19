#!/usr/bin/zsh

echo "this is a file organiser"

echo "enter a dir: "
read dir 

defaultdir=$dir

if [ ! -d "$defaultdir" ]; then
	echo "dir does not exist...."
	exit 1
fi

for file in "$defaultdir"/*; do
	[ -f "${file##*.}" ] || continue

	extr="${file##*.}"
	mkdir -p "$defaultdir/$extr"

	mv "$file" "$defaultdir/$extr/"

done

echo "everything done...."


