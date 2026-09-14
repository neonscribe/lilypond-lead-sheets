import re, sys, os, pathlib

def all_core_book():
    core_dir_path = pathlib.Path("../Core/")
    all_versions_all_songs_book_path = pathlib.Path("../TeX/All Songs.book")
    if not (core_dir_path.is_dir() and os.access(core_dir_path, os.R_OK)):
        sys.exit(f"{core_dir_path} is not a readable directory")

    ly_files = [f for f in core_dir_path.iterdir() if f.is_file() and f.suffix.lower() == ".ly"]
    
    titles_keys_files = []
    for file in ly_files:
        f = str(file)
        title = 'Unknown'
        match = re.search('^\\.\\./Core/(.+) - Ly Core - ', f)
        if match:
            title = match.group(1)
        else:
            sys:exit(f"Mismatched core file name: {f}")

        key = 'Unknown'
        match = re.search(' - Ly Core - ([a-zA-Z0-9]+) Chords\\.ly$', f)
        if match:
            key = match.group(1)
        else:
            match = re.search(' - Ly Core - ([a-zA-Z0-9]+)\\.ly$', f)
            if match:
                key = match.group(1)
            else:
                sys:exit(f"Mismatched core file name: {f}")
        titles_keys_files.append([title, key, f])

    book_title = "All Songs"

    with open(all_versions_all_songs_book_path, "w") as f:
        f.write(book_title + '\n\n')
        for title, key, file in titles_keys_files:
            f.write(title + " - " + key + '\n' + file + '\n\n')

if __name__ == "__main__":
    all_core_book()
