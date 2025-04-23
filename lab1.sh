# !/bin/bash

echo "Hello dying world"

dirname=$(date +%Y-%m-%d_%H-%M-%S)
mkdir "$dirname"

for i in {0..9}; do
	subname=$((i+1))
	if [ "$i" -eq 9 ]; then
    		subdir="$dirname/file1$subname"
	else
    		subdir="$dirname/file10$subname"
	fi
	mkdir "$subdir"
	texts="Python"
	textfile=$(date +%Y-%m-%d_%H-%M-%S)
	echo $textfile
	echo "$texts" > "$subdir/${texts}.txt"
	echo "Hello again you dying world","$subname"
done

echo "successful"