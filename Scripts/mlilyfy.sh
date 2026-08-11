#!/bin/bash

date

LILYPOND='lilypond'
ARGS='-dmidi-only -dbackend=null -dno-print-pages'
# ARGS='-dno-print-note-names'
# ARGS='-dprint-note-names'

FILES=()
for file in *.ly; do
	FILES+=("$file")
done

lilypond $ARGS "${FILES[@]}"

for file in *.midi; do
    cp "$file" ../Midi/
    rm "$file"
done

date
