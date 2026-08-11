# Convert all the .book files in a directory to .pdf files

import re, sys, os, tempfile, shutil, subprocess, pypdf, pathlib
import lilybook, book_to_tex

def bookfile_contains_pdf(book_filename):
    title = False
    include_next = False
    with open(book_filename) as book_file:
        for l in book_file:
            line = l.strip()
            if line:
                if not title:
                    title = line
                elif include_next:
                    if line.endswith(".pdf"):
                        return True
                    include_next = False
                else:
                    include_next = True
    return False

def convertdir(dir_filename):
    dir_path = pathlib.Path(dir_filename)
    if not (dir_path.is_dir() and os.access(dir_path, os.W_OK)):
        sys.exit(f"{dir_filename} is not a writable directory")

    book_files = [f for f in dir_path.iterdir() if f.is_file() and f.suffix.lower() == ".book"]

    for source_path in book_files:
        if bookfile_contains_pdf(source_path):
            book_to_tex.book_to_tex_to_pdf(source_path)
        else:
            lilybook.book_to_pdf(source_path)

if __name__ == "__main__":
    convertdir(sys.argv[1])
