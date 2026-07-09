import re, sys, os, tempfile, shutil, subprocess, pypdf, pathlib
from anyascii import anyascii

## add a song to a book file in the correct alphabetical position
## check to see if it's already there!
## build a title
## if file is "name - Ly - XX Standard Key" then title is "name - XX"
## if book has Bb in the name, key becomes Concert Key (whole step lower) to Given Key for Bb
## if book has Eb in the name, key becomes Concert Key (minor third higher) to Given Key for Eb
## if book has Bass in the name, key becomes Key Bass

## if wrapper name is more specific (e.g. chord type, no lyrics) use that


## add one wrapper to one file, or
## find all the wrappers for a song and add those wrappers to the appropriate books
## -n for Nonstandard, -s for Standard, -x for Xmas, -c for Country
## any combination of the four. Default is -s

## standard finds the five or six standard wrappers and files them
## Standard in Standards Book
## Bass for Standard in Bass Standards Book
## Bb[ High/Low] for Standard in Bb Standards Book
## Eb for Standard in Eb Standards Book
## Standard for Viola in Standards for Viola Book

## nonstandard finds the five or six standard wrappers and files them
## Standard in Nonstandards Book
## Bass for Standard in Bass Nonstandards Book
## Bb[ High/Low] for Standard in Bb Nonstandards Book
## Eb for Standard in Eb Nonstandards Book
## Standard for Viola in Nonstandards for Viola Book

## christmas goes in christmas books
## country goes in country book


## if there are Alto Voice wrappers, they go in Alto Voice Book.
## Likewise Bass for Alto Voice, Bb for Alto Voice, Eb for Alto Voice

## if there are Baritone Voice wrappers, they go in Baritone Voice Book.
## Likewise Bass for Baritone Voice, Bb for Baritone Voice, Eb for Baritone Voice
