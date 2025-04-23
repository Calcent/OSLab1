# !/bin/bash

echo "Hello dying world"

dirname=$(date +%Y-%m-%d_%H-%M-%S)
mkdir "$dirname"

for i in {0..9}; do
	subname=$((i+1))
	if [ "$i" -eq 9 ]; then
    		mkdir "$dirname/file11$subname"
	else
    		mkdir "$dirname/file10$subname"
	fi
	echo "Hello again you dying world","$subname"
done

texts="Python"
textfile=$(date +%Y-%m-%d_%H-%M-%S)
echo $textfile
echo $texts > "$dirname/$textfile.txt"

echo "successful"