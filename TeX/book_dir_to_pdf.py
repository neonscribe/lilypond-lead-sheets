# Convert all the .book files in a directory to .pdf files

import sys, pathlib, re, os
import lilybook

def convertdir(dir_filename):
    dir_path = pathlib.Path(dir_filename)
    if not (dir_path.is_dir() and os.access(dir_path, os.W_OK)):
        sys.exit(f"{dir_filename} is not a writable directory")

    book_files = [f for f in dir_path.iterdir() if f.is_file() and f.suffix.lower() == ".book"]

    for source_path in book_files:
        lilybook.book_to_pdf(source_path)

if __name__ == "__main__":
    convertdir(sys.argv[1])
