#!/bin/bash
source 'config.txt'
for file in $@
do
  scp -i $pemfile $file ubuntu@$publicIP:~/
done
