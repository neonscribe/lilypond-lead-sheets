#!/bin/bash

ulimit -n 10240

for file in *.tex; do
    cp "$file" "../TeXify/$file"
    ( cd ../TeXify ; lualatex --output-format=pdf "$file" ; lualatex --output-format=pdf "$file" ; cp "${file%.tex}.pdf" "../Book/" )
done
