# Convert one .book file to a .pdf file

import re, sys, os, tempfile, shutil, subprocess, pypdf, pathlib
import book_to_ly, book_to_tex

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

def book_to_pdf(source_path):
    if bookfile_contains_pdf(source_path):
        book_to_tex.book_to_tex_to_pdf(source_path)
    else:
        book_to_ly.book_to_ly_to_pdf(source_path)

if __name__ == "__main__":
    book_to_pdf(sys.argv[1])
