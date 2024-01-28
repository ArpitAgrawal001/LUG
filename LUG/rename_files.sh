#!/bin/bash

# Print the contents of the current directory, sorted by last modified time in reverse order,
# filter filenames by extension (pdf, png, jpeg), and modify filenames by removing _republicday
files=$(ls -tr | grep -E '\.pdf$|\.png$|\.jpeg$')

for file in $files; do
    new_name=$(echo "$file" | sed -E 's/(.*)_republicday\.(pdf|png|jpeg)$/\1.\2/')
    echo "Renaming: $file to $new_name"
    mv "$file" "$new_name"
done

