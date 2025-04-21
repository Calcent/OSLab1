# !/bin/bash

echo "Hello dying world"

dirname=$(date +%Y-%m-%d_%H-%M-%S)
mkdir "$dirname"

for i in {0..9}; do
	subname=$((i+1))
	mkdir $dirname/"file10$subname"
	echo "Hello again you dying world","$subname"
done

texts="Python"
textfile=$(date +%Y-%m-%d_%H-%M-%S)
echo $textfile
echo $texts > "$dirname/$textfile.txt"

echo "successful"