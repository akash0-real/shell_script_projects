#!/usr/bin/zsh

#taking input from user!
echo "enter a log file path: "
read file

#checking if file exits or not!
if [ ! -f $file ]; then
  echo "file not found"
  exit 1
fi

# showing the log life!
echo "log file -> $file"
#showing the total number of lines in the file!!
echo "total lines -> "
wc -l "$file"

#using grep to get the error message from the file and counting it!!
grep -c "ERROR" "$file"

#getting the error message using the awk command!!
grep -i "ERROR" "$file" | awk '{$1=$2=$3=""; print substr($0,4)}'
