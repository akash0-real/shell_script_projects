#!/usr/bin/zsh

echo "this is a file organiser"

dry_run=false

if [ "$1" = "--dry-run" ]; then 
	dry_run=true
	echo "doing dry run!!"
fi

echo "enter a dir: "
read dir 

defaultdir=$dir

if [ ! -d "$defaultdir" ]; then
	echo "dir does not exist...."
	exit 1
fi

for file in "$defaultdir"/*; do
	[ -f "$file" ] || continue

	extr="${file##*.}"
	mkdir -p "$defaultdir/$extr"

	if "$dry_run"; then
		echo "[dry-run] file $file -> $extr/"
	else
		mv "$file" "$defaultdir/$extr/"
	fi

done

echo "everything done...."


