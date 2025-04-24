# !/bin/bash

echo "Hello dying world"

dirname=$(date +%Y-%m-%d_%H-%M-%S)
mkdir "$dirname"

# array of 10 unique programming languages
languages=(Python Java C C++ JavaScript Ruby Go Rust PHP Swift)

for i in {0..9}; do
    subname=$((i+1))
    if [ "$i" -eq 9 ]; then
        subdir="$dirname/file1$subname"
    else
        subdir="$dirname/file10$subname"
    fi
    mkdir "$subdir"

    texts="${languages[$i]}"
    textfile=$(printf "tuser5%02d.txt" "$subname")
    echo "$texts" > "$subdir/$textfile"

    echo "Hello again you dying world","$subname"
done

echo "successful"
