#!/bin/sh

cp ../TeX/Alto\ Voice\ Book.book /tmp/Alto\ Voice\ 8vb\ Book.book
python ../Scripts/lilybook.py -dlow-treble-8vb /tmp/Alto\ Voice\ 8vb\ Book.book
