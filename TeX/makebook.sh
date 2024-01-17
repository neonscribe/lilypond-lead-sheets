#!/bin/bash

ulimit -n 10240

for file in *.tex; do
    if [[ $file =~ ^$1 ]]; then
	cp "$file" "../TeXify/$file"
	( cd ../TeXify ; latex --output-format=pdf "$file" ; latex --output-format=pdf "$file" ; mv "${file%.tex}.pdf" "../Book/" )
    fi
done
