import re, sys, os, tempfile, shutil, subprocess, pypdf, pathlib
from anyascii import anyascii
import sort_book

def sort_book_dir(dir_filename):
    dir_path = pathlib.Path(dir_filename)
    if not (dir_path.is_dir() and os.access(dir_path, os.W_OK)):
        sys.exit(f"{dir_filename} is not a writable directory")

    book_files = [f for f in dir_path.iterdir() if f.is_file() and f.suffix.lower() == ".book"]

    for source_path in book_files:
        sort_book.sort_book(source_path)

if __name__ == "__main__":
    sort_book_dir(sys.argv[1])
