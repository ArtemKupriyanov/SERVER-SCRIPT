#!/bin/bash
source 'config.txt'
for file_path in $@
do
  if [ "$file_path" != "$1" ];
  then
    scp -i $pemfile ubuntu@$publicIP:$file_path $1
  fi
done
