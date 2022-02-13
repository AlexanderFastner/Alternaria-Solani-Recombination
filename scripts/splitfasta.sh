#!/bin/bash
filename="$1".chr
filepath="$2"
echo $filename
echo $filepath
mkdir "$filename"
cd "$filename"
csplit -s -z "$filepath" '/>/' '{*}'
for i in xx* ; do \
  n=$(sed 's/>// ; s/ .*// ; 1q' "$i") ; \
  mv "$i" "$n.fa" ; \
done
