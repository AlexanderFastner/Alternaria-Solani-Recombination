#!/bin/bash
for f in $(ls /mnt/c/Users/alex/Desktop/denbiData/altSolfastas); do sh splitfasta.sh "$f" `pwd`/altSolfastas/"$f"; done