#!/bin/bash

LILYPOND='lilypond'
ARGS='-dmidi-only -dno-print-pages'
# ARGS='-dno-print-note-names'
# ARGS='-dprint-note-names'

FILES=()
for file in *.ly; do
    if [[ $file =~ ^$1 ]]; then
	FILES+=("$file")
    fi
done

if [[ ${#FILES[@]} == 0 ]]; then
    echo "No match"
    exit 1
fi

lilypond $ARGS "${FILES[@]}"
result=$?


for file in *.midi; do
    mv "$file" ../Midi/
done
