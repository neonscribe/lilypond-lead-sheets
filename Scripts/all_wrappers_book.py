import re, sys, os, tempfile, shutil, subprocess, pypdf, pathlib
from anyascii import anyascii
import sort_book

def all_wrappers_book():
    wrapper_dir_path = pathlib.Path("../Wrappers/")
    tex_dir_path = pathlib.Path("../TeX/")
    if not (dir_path.is_dir() and os.access(dir_path, os.W_OK)):
        sys.exit(f"{dir_filename} is not a writable directory")

    book_files = [f for f in dir_path.iterdir() if f.is_file() and f.suffix.lower() == ".book"]

    for source_path in book_files:
        sort_book.sort_book(source_path)

if __name__ == "__main__":
    all_wrappers_book()
