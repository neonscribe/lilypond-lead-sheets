# Convert a PDF-assembling .tex file into a .book file to use as input to lilybook.py

import re, sys, os, tempfile, shutil, subprocess, pypdf, pathlib
from anyascii import anyascii

def make_key_sort_key(base_key, flat_sharp, minor):
    # all major before any minor
    major_or_minor = "a"
    if (minor):
        major_or_minor = "b"
    note_sort_key = note_name_to_sort_key[base_key + flat_sharp]
    if not note_sort_key:
        note_sort_key = ""
    return major_or_minor + note_sort_key

def transliterate_to_alnum(text):
    # Transliterates characters like 'こんにちは' to 'konnichiha'
    ascii_text = anyascii(text)
    return re.sub(r'[^a-zA-Z0-9]', '', ascii_text)

def make_sort_key(title, file):
    ## start with the title
    ## strip everything after " - "
    ## remove a parenthesized prefix
    ## remove "A " or "The " from the beginning
    ## remove all non-alphanumeric chars
    ## this is the basic song name for alphabetizing
    ## look for the first instance of " <note> " after " - "
    ## note is A B C D E F G, optionally followed by 'b' or '#', optionally followed by 'm'
    lower_title = title.lower()
    base_title = lower_title
    match = re.search(r"^\([^)]+\) (.+)$", base_title)
    if match:
        base_title = match.group(1)
    if base_title.startswith("a "):
        base_title = base_title[2:]
    elif base_title.startswith("the "):
        base_title = base_title[4:]
    after_base = ""
    match = re.search("^([^-]+) - (.+)$", base_title)
    if (match):
        base_title = match.group(1)
        after_base = match.group(2)
    base_title = transliterate_to_alnum(base_title)
    # last occurence of key spec
    key_sort_key = ""
    base_key = ""
    flat_sharp = ""
    minor = ""
    match = re.search(r".*\b([a-g][b#]?[m]?)",
                      after_base)
    if match:
        key = match.group(1)
        if (key[-1] == 'm'):
            minor = 'm'
            key = key[:-1]
        if len(key) > 1:
            flat_sharp = key[-1]
            key = key[:-1]
        base_key = key
        key_sort_key = make_key_sort_key(base_key, flat_sharp, minor)
    return base_title + key_sort_key

## ab, a, a#, bb, b, cb, bs, c, cs, df, d, ds, ef, e, fb, es, f, fs, gf, g, gs
note_name_to_sort_key = { 'ab'  : "a" ,
                        'a' : "b" ,
                        'a#' : "c" ,
                        'bb': "d" ,
                        'b': "e",
                        'cb': "f" ,
                        'b#': "g" ,
                        'c': "h" ,
                        'c#': "i" ,
                        'db': "j" ,
                        'd': "k",
                        'd#': "l" ,
                        'eb': "m" ,
                        'e': "n" ,
                        'fb': "o" ,
                        'e#': "p" ,
                        'f': "q" ,
                        'f#': "r" ,
                        'gb': "s" ,
                        'g': "t" ,
                        'g#': "u" }

def sort_book(book_filename):
    source_path = pathlib.Path(book_filename)

    if not (source_path.is_file() and os.access(source_path, os.R_OK)):
        source_path = source_path.with_suffix(".book")
        if not (source_path.is_file() and os.access(source_path, os.R_OK)):
            sys.exit(f"{book_filename} is not a readable book file")

    book_filename = source_path.with_suffix(".book")

    book_title = 'Table of Contents'

    title = False
    titles = [];
    ly_files = [];

    include_next = False

    with open(book_filename) as book_file:
        for l in book_file:
            line = l.strip()
            if line:
                if not title:
                    title = line
                    book_title = title
                elif include_next:
                    ly_files.append(line)
                    include_next = False
                else:
                    titles.append(line)
                    include_next = True


    entries = []

    for title, file in zip(titles, ly_files):
        entries.append({ "sort_key": make_sort_key(title, file),
                         "title": title,
                         "file": file })

    entries.sort(key=lambda entry: entry['sort_key'])

    sorted_path = source_path.with_suffix(".sortedbook")

    with open(sorted_path, "w") as f:
        f.write(book_title + '\n\n')
        for entry in entries:
            f.write(entry['title'] + '\n')
            f.write(entry['file'] + '\n\n')

if __name__ == "__main__":
    sort_book(sys.argv[1])
