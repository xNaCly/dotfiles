#!/bin/bash/
files=`ls -l | awk '{ print $9 }'`

for file in $files
do
  python3 ~/.config/wallpapers/convert.py $file
done

mv *.webp ../docs/img/
cd ../docs/img

files_2=`ls -l | awk '{ print $9 }'`
first_part='<img class="image" src="./img/'
second_part='" />'

for file_ in $files_2
do
  echo $first_part$file_$second_part
done
