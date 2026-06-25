# Convert a PDF-assembling .tex file into a .book file to use as input to lilybook.py

import sys, pathlib, re, os

arg_filename = sys.argv[1]
source_path = pathlib.Path(arg_filename)

if not (source_path.is_file() and os.access(source_path, os.R_OK)):
    source_path = source_path.with_suffix(".tex")
    if not (source_path.is_file() and os.access(source_path, os.R_OK)):
        sys.exit(f"{arg_filename} is not a readable TeX file")

book_filename = source_path.with_suffix(".book")

book_title = 'Table of Contents'

titles = []
pdf_files = []

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
                    pdf_files.append(match.group(2))

ly_files = []

# convert files from pdf path to source path
for file in pdf_files:
    match = re.search("^(.+)/([^/]+)$", file)
    if not match:
        sys:exit(f"Unrecognized file {file}")
    dir = match.group(1)
    pdf_file = match.group(2)
    if "Chords" in dir:
        print(f"Chords pdf file {file} preserved")
        pdf_path = pathlib.Path(file)
        pdf_file_name = str(pdf_path.with_suffix(".pdf"))
        ly_files.append(pdf_file_name)
    else:
        ly_files.append('../Wrappers/' + pdf_file + ".ly")

with open(book_filename, "w") as f:
    f.write(book_title + '\n\n')
    for title, file in zip(titles, ly_files):
        f.write(title + '\n')
        f.write(file + '\n\n')
