import re, sys, os, tempfile, shutil, subprocess, pypdf, pathlib

"""
lilybook bookfile

bookfile format is

first line title

alternating nonblank lines

toc entry
lilypond source file (wrapper file)


collect toc entries and file names into arrays

create lilypond book input file with no spacer pages
make first pass pdf output
use pypdf to read toc entries and determine number of pages of the toc and of each file
single page songs have no spacers

double page songs get spacers if needed,
so they will always start on a verso (even) page

three or more page songs go on the next available page, unless the Core file is marked as verso or recto,
in which case a spacer may be needed.

recreate lilypond book input file with spacer pages inserted and regenerate.
make second pass pdf output
add pdf bookmarks using toc entries from bookfile
"""

## Three page songs get different treatment depending on the song
## rectos usually start with a verse or intro
## versos usually end with a coda or a lyrics page
## eithers don't have a strong two-page sequence

rectoThrees = ['Django', "It Ain't Necessarily So", 
               "Is You Is, or Is You Ain't (Ma' Baby)"]
versoThrees = ['Fever', "Moanin'", 'My Attorney Bernie', 
               'Peel Me a Grape',
               'Spring Can Really Hang You Up the Most',
               'Oh Lonesome Me Four', 'Dear Mr Fantasy',
               "Do Nothin' Till You Hear From Me"]
eitherThrees = ['Twisted', 'You Belong to Me']

def threepagetype(filename):
    for name in rectoThrees:
        pattern = '/' + name + ' - '
        match = re.search(pattern, filename)
        if match:
            return 'recto'
    for name in versoThrees:
        pattern = '/' + name + ' - '
        match = re.search(pattern, filename)
        if match:
            return 'verso'
    return False

def book_to_pdf(arg_filename):
    source_path = pathlib.Path(arg_filename)

    if not (source_path.is_file() and os.access(source_path, os.R_OK)):
        source_path = source_path.with_suffix(".book")
        if not (source_path.is_file() and os.access(source_path, os.R_OK)):
            sys.exit(f"{arg_filename} is not a readable book file")

    current_directory = pathlib.Path.cwd()
    parent_directory = current_directory.parent
    working_directory = parent_directory / 'TeXify'
    output_directory = parent_directory / 'Book'

    base_name = pathlib.Path(source_path.name).with_suffix("")
    book_filename = base_name.with_suffix(".book")
    ly_filename = base_name.with_suffix(".ly")
    pdf_filename = base_name.with_suffix(".pdf")
    temp_pdf_filename = base_name.with_suffix(".pdftemp")

    shutil.copy(source_path, working_directory / book_filename)
    os.chdir(working_directory)

    title = False
    bookmarks = ['Table of Contents'];
    includes = ['Table of Contents'];

    include_next = False

    with open(book_filename) as book_file:
        for l in book_file:
            line = l.strip()
            if line:
                if not title:
                    title = line
                elif include_next:
                    includes.append(line)
                    include_next = False
                else:
                    bookmarks.append(line)
                    include_next = True

    ly_file_start = f"""\\version "2.26.0"

    inBook = ##t

    thisPart = ##f
    """

    ly_file_middle = f"""
    \\book {{
      \\paper {{
        \\include "../Include/toc-margins.ily"
        tocItemMarkup = \\tocItemWithDotsMarkup
        tocTitleMarkup = \\markup \\huge \\larger \\larger \\larger \\column {{
          \\fill-line {{ \\null "{title}" \\null }}
          \\hspace #1
        }}
      }}

      \\markuplist \\table-of-contents
    """

    ly_file_end = f"""
    }}
    """

    alphadigits = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']


    def varnum(index):
        digits = ''
        for i in range(6):
            digits = alphadigits[index % 10] + digits
            index = index // 10
        return digits

    def includes_and_sets(f):
        for index, file in enumerate(includes[1:]):
            songvar = 'song' + varnum(index)
            f.write(f"""
    \\include "{file}"

    {songvar} = \\bookpart {{ \\thisPart }}
    """
    )

    def bookparts_firstpass(f):
        for index, file in enumerate(includes[1:]):
            songvar = 'song' + varnum(index)
            f.write(f"""
    \\bookpart {{ \\{songvar} }}
    """
    )

    with tempfile.TemporaryDirectory() as temp_dir:
        ly_path = os.path.join(temp_dir, ly_filename)
        with open(ly_path, "w") as f:
            f.write(ly_file_start)
            includes_and_sets(f)
            f.write(ly_file_middle)
            bookparts_firstpass(f)
            f.write(ly_file_end)
        shutil.copy(ly_path, '.')

    # 1. Search for the absolute path of the executable
    executable_path = shutil.which("lilypond")

    if executable_path:
        subprocess.run([executable_path, ly_filename], check=True)
    else:
        sys.exit("lilypond not found in system PATH.")

    def extract_start_pages(pdf_path):
        reader = pypdf.PdfReader(pdf_path)
        page_count = len(reader.pages)
        start_pages = [1]
        with pypdf.PdfReader(pdf_path) as reader:
            pg_num = 0
            for page_num, page in enumerate(reader.pages):
                page = reader.pages[page_num]
                if "/Annots" in page:
                    for annot in page["/Annots"]:
                        annot_obj = annot.get_object()
                        if annot_obj["/Subtype"] == "/Link":
                            if "/Dest" in annot_obj:
                                dest = annot_obj["/Dest"][0]
                                new_pg_num = [ p.indirect_reference for p in reader.flattened_pages].index(dest)
                                if new_pg_num != pg_num:
                                    start_pages.append(new_pg_num + 1)
                                    pg_num = new_pg_num
        return start_pages, page_count


    page_numbers, pdf_page_count = extract_start_pages(pdf_filename)

    next_page_numbers = []

    for index, page in enumerate(page_numbers[1:]):
        next_page_numbers.append(page)

    next_page_numbers.append(pdf_page_count + 1)


    blank_page_inserts = [False]
    adjusted_page_numbers = [1]

    insert_count = 0
    # insert blank pages to start two page songs on even pages
    for page_number, next_page_number, filename in zip(page_numbers[1:], next_page_numbers[1:], includes[1:]):
        page_count = next_page_number - page_number
        mod2 = (page_number + insert_count) % 2
        if page_count == 2 and mod2 == 1:
            insert_count += 1
            blank_page_inserts.append(True)
        elif page_count == 3:
            type = threepagetype(filename)
            if type == 'verso' and mod2 == 1 or type == 'recto' and mod2 == 0:
                insert_count += 1
                blank_page_inserts.append(True)
            else:
                blank_page_inserts.append(False)
        else:
            blank_page_inserts.append(False)
        adjusted_page_numbers.append(page_number + insert_count)

    def bookparts_secondpass(f):
        for index, (file, blank_page_insert) in enumerate(zip(includes[1:], blank_page_inserts[1:])):
            songvar = 'song' + varnum(index)
            if (blank_page_insert):
                f.write(f"""
    \\include "../Include/blank-page.ily"
    """
    )
            f.write(f"""
    \\bookpart {{ \\{songvar} }}
    """
    )

    with tempfile.TemporaryDirectory() as temp_dir:
        ly_path = os.path.join(temp_dir, ly_filename)
        with open(ly_path, "w") as f:
            f.write(ly_file_start)
            includes_and_sets(f)
            f.write(ly_file_middle)
            bookparts_secondpass(f)
            f.write(ly_file_end)
        shutil.copy(ly_path, '.')

    # 1. Search for the absolute path of the executable
    executable_path = shutil.which("lilypond")

    if executable_path:
        subprocess.run([executable_path, ly_filename], check=True)
    else:
        sys.exit("lilypond not found in system PATH.")

    os.rename(pdf_filename, temp_pdf_filename)

    writer = pypdf.PdfWriter(clone_from=temp_pdf_filename)

    for bookmark, page in zip(bookmarks, adjusted_page_numbers):
        writer.add_outline_item(title=bookmark, page_number=(page - 1))

    # Save the modified document
    with open(pdf_filename, "wb") as f:
        writer.write(f)

    shutil.copy(pdf_filename, output_directory)

if __name__ == "__main__":
    book_to_pdf(sys.argv[1])
