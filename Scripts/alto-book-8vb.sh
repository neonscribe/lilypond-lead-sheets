#!/bin/sh

cp ../TeX/Alto\ Voice\ Book.book /tmp/Alto\ Voice\ 8vb\ Book.book
python ../Scripts/book_to_ly.py -dlow-treble-8vb /tmp/Alto\ Voice\ 8vb\ Book.book
