# Convert a PDF-assembling .tex file into a .book file to use as input to lilybook.py

import re, sys, os, tempfile, shutil, subprocess, pypdf, pathlib

def convert(arg_filename):
    warned_about_bare_pdf = False
    source_path = pathlib.Path(arg_filename)

    if not (source_path.is_file() and os.access(source_path, os.R_OK)):
        source_path = source_path.with_suffix(".tex")
        if not (source_path.is_file() and os.access(source_path, os.R_OK)):
            sys.exit(f"{arg_filename} is not a readable TeX file")

    book_filename = source_path.with_suffix(".book")

    book_title = 'Table of Contents'

    titles = []
    tex_pdf_files = []

    with open(source_path) as tex_file:
        for l in tex_file:
            line = l.strip()
            if line:
                match = re.search('\\\\renewcommand\\{\\\\contentsname\\}\\{([^\\}]+)\\}', line)
                if match:
                    book_title = match.group(1)
                else:
                    match = re.search('song\\{([^\\}]+)\\}\\{"([^"]+)"\\}', line)
                    if match:
                        title = match.group(1).replace("\\", "")
                        titles.append(title)
                        tex_pdf_files.append(match.group(2))

    ly_files = []
    warned_about_bare_pdf = False

    # convert files from pdf path to source path
    for file in tex_pdf_files:
        pdf_path = pathlib.Path(file).with_suffix(".pdf")
        match = re.search("^(.+)/([^/]+)$", file)
        if not match:
            sys:exit(f"Unrecognized file {file}")
        dest_dir = match.group(1)
        base_file = match.group(2)
        pdf_file_name = pdf_path.with_suffix(".pdf")
        ly_file_name = pathlib.Path("../Wrappers/" + base_file).with_suffix(".ly")
        if not (ly_file_name.is_file() and os.access(ly_file_name, os.R_OK)):
            if not warned_about_bare_pdf:
                print(f"Bare pdf files in {book_filename}")
                warned_about_bare_pdf = True
            ly_files.append(str(pdf_file_name))
        else:
            ly_files.append(str(ly_file_name))

    with open(book_filename, "w") as f:
        f.write(book_title + '\n\n')
        for title, file in zip(titles, ly_files):
            f.write(title + '\n')
            f.write(file + '\n\n')

if __name__ == "__main__":
    convert(sys.argv[1])
