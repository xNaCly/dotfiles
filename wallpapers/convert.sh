#!/bin/bash/
files=`ls -l | awk '{ print $9 }'`
for file in $files
do
  python3 ~/.config/wallpapers/convert.py $file
done
