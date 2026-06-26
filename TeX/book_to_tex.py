# Convert a .book file into a .tex file

import sys, pathlib, re, os, pypdf

def book_to_tex(arg_filename):
    source_path = pathlib.Path(arg_filename)

    if not (source_path.is_file() and os.access(source_path, os.R_OK)):
        source_path = source_path.with_suffix(".book")
        if not (source_path.is_file() and os.access(source_path, os.R_OK)):
            sys.exit(f"{arg_filename} is not a readable book file")

    book_filename = source_path.with_suffix(".book")
    tex_filename = source_path.with_suffix(".tex")

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

    destination_matches = {
        "Bass Line for Standard": "../Standard/Bass Line/",
        "Guitar Solo for Standard": "../Standard/Guitar Solo/",
        "Bass for Standard": "../Standard/Bass/",
        "Bass High for Standard": "../Standard/Bass/",
        "Bass Low for Standard": "../Standard/Bass/",
        "Bass for Alto Voice": "../Alto Voice/Bass/",
        "for Bb for Alto Voice": "../Alto Voice/Bb/",
        "for Bb High for Alto Voice": "../Alto Voice/Bb/",
        "for Bb Low for Alto Voice": "../Alto Voice/Bb/",
        "Bass for Baritone Voice": "../Baritone Voice/Bass/",
        "for Bb for Baritone Voice": "../Baritone Voice/Bb/",
        "for Bb High for Baritone Voice": "../Baritone Voice/Bb/",
        "for Bb Low for Baritone Voice": "../Baritone Voice/Bb/",
        "for Bb for Standard": "../Standard/Bb/",
        "for Bb High for Standard": "../Standard/Bb/",
        "for Bb Low for Standard": "../Standard/Bb/",
        "for Eb for Standard": "../Standard/Eb/",
        "for Eb for Alto Voice": "../Alto Voice/Eb/",
        "for Eb for Baritone Voice": "../Baritone Voice/Eb/",
        "Standard": "../Standard/",
        "Alto Voice": "../Alto Voice/",
        "Baritone Voice": "../Baritone Voice/",
        "for Viola": "../Standard/Viola/"
    }

    destination_default = "../Others/"

    def source_to_dest(file):
        match = re.search("/([^/]+)$", str(file) )
        if match:
            base_file = match.group(1)
            for filetail, destdir in destination_matches.items():
                if base_file.endswith(filetail):
                    return destdir + base_file
            return destination_default + base_file
        sys:exit(f"Unknown entry {file} in book file")

    pdf_files = []

    # convert files from ly path to pdf path
    for file in ly_files:
        path = pathlib.Path(file)
        no_suffix_path = path.with_suffix("")
        if str(no_suffix_path).startswith("../Wrappers/"):
            pdf_files.append(source_to_dest(no_suffix_path))
        else:
            pdf_files.append(no_suffix_path)


    texfile_start = f"""
    \\include{{../Include/songbook.tex}}

    \\begin{{document}}

    \\phantomsection
    \\renewcommand{{\\contentsname}}{{{book_title}}}
    \\setlength{{\\cftbeforesecskip}}{{0cm}}
    \\renewcommand{{\\cftsecfont}}{{\\small}}
    \\addcontentsline{{toc}}{{section}}{{Table of Contents}}
    \\pdfbookmark{{Table of Contents}}{{Table of Contents}}
    \\tableofcontents
    \\cleardoublepage

    """

    texfile_end = """
    \\end{document}
    """

    rectoThrees = ['Django', "It Ain't Necessarily So", 
                   'Spring Can Really Hang You Up the Most',
                   "Is You Is, or Is You Ain't (Ma' Baby)"]
    versoThrees = ['Fever', "Moanin'", 'My Attorney Bernie', 'Oh Lonesome Me Four']
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

    def make_song_spec(file, title, previous_title_prefix):
        pdf_path = pathlib.Path(file).with_suffix(".pdf")
        page_count = 1
        same_title = title.startswith(previous_title_prefix)
        if pdf_path.is_file() and os.access(pdf_path, os.R_OK):
            reader = pypdf.PdfReader(pdf_path)
            page_count = len(reader.pages)
        if page_count == 2:
            if same_title:
                return "dxsong"
            else:
                return "dsong"
        elif page_count > 2:
            pagetype = threepagetype(file)
            if pagetype == 'verso':
                if same_title:
                    return "dxsong"
                else:
                    return "dsong"
            elif pagetype == 'recto':
                if same_title:
                    return "rxsong"
                else:
                    return "rsong"
            else:
                if same_title:
                    return "xsong"
                else:
                    return "song"
        else:
            if same_title:
                return "xsong"
            else:
                return "song"

    with open(tex_filename, "w") as f:
        f.write(texfile_start)
        previous_title_prefix = 'No Such Title'
        for title, file in zip(titles, pdf_files):
            songspec = make_song_spec(file, title, previous_title_prefix)
            title = title.replace("#", "\\#")
            f.write(f'\\{songspec}{{{title}}}{{"{file}"}}\n\n')
            match = re.search("^([^-]+ - )", title)
            if match:
                previous_title_prefix = match.group(1)
            else:
                previous_title_prefix = 'No Such Title'
        f.write(texfile_end)

if __name__ == "__main__":
    book_to_tex(sys.argv[1])
