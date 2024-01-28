#!/bin/bash

# Print the contents of the current directory, sorted by last modified time in reverse order,
# filter filenames by extension (pdf, png, jpeg), and modify filenames by adding _republicday
files=$(ls -tr | grep -E '\.pdf$|\.png$|\.jpeg$')

for file in $files; do
    new_name=$(echo "$file" | sed -E 's/(.*)\.(pdf|png|jpeg)$/\1_republicday.\2/')
    echo "Renaming: $file to $new_name"
done

