#!/usr/bin/zsh

#to create a backup dir
backup="./backup"
mkdir -p "$backup"


echo "enter a dir:"
read dir

#to generate timestamps!!
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

#to check if dir is provided
if [ -z "$dir" ]; then 
	echo "enter a dir"
	exit 1
echo "backup succedded...."
fi

#to check if dir exist
if [ ! -d "$dir" ]; then 
	echo "this dir doesnt exist"
	exit 1
fi
#creating a backup name
backup_name="backup_$TIMESTAMP.tar.gz"
#creating a path for the backup
backup_path="$backup/$backup_name"
#running tar
tar -czf "$backup_path" "$dir"
#checking if everything ran succesfully
if [ $? -eq 0 ]; then
	echo "ran succesfully"
else 
	echo "backup failed"
	exit 1
fi

