#!/bin/bash


# change dir into people
cd ../people

# look for this file in each dir
target_file="README.md"

# loop through each dir and spit out first line of the file
for dir in $(find . -type d); do
  if [ -f "$dir/$target_file" ]; then  
   #  echo $dir/$target_file;
   #just so we dont have a lot going on
    name=`head -n 1 "$dir/$target_file"`;
    echo $name;
  fi
done

# look through all of these directories for first line add to a variable to name and then echo out name
