#!/bin/bash
source 'config.txt'
for file in $@
do
  scp $file ubuntu@$publicIP:~/
done
