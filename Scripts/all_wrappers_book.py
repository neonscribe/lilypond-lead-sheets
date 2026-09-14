import re, sys, os, pathlib

def all_wrappers_book():
    wrapper_dir_path = pathlib.Path("../Wrappers/")
    all_versions_all_songs_book_path = pathlib.Path("../TeX/All Songs All Versions.book")
    if not (wrapper_dir_path.is_dir() and os.access(wrapper_dir_path, os.R_OK)):
        sys.exit(f"{wrapper_dir_path} is not a readable directory")

    ly_files = [f for f in wrapper_dir_path.iterdir() if f.is_file() and f.suffix.lower() == ".ly"]
    
    titles_keys_files = []
    for file in ly_files:
        f = str(file)
        title = 'Unknown'
        match = re.search('^\\.\\./Wrappers/(.+) - Ly - ', f)
        if match:
            title = match.group(1)
        else:
            sys:exit(f"Mismatched wrapper file name: {f}")

        key = 'Unknown'
        match = re.search(' - Ly - ([a-zA-Z0-9]+ Bass Line) ', f)
        if match:
            key = match.group(1)
        else:
            match = re.search(' - Ly - ([a-zA-Z0-9]+ Bass) ', f)
            if match:
                key = match.group(1)
            else:
                match = re.search(' - Ly - ([a-zA-Z0-9]+ to [a-zA-Z0-9]+) for ', f)
                if match:
                    key = match.group(1)
                else:
                    match = re.search(' - Ly - ([a-zA-Z0-9]+) ', f)
                    if match:
                        key = match.group(1)
                    else:
                        sys:exit(f"Mismatched wrapper file name: {f}")
        titles_keys_files.append([title, key, f])

    book_title = "All Songs All Versions"

    with open(all_versions_all_songs_book_path, "w") as f:
        f.write(book_title + '\n\n')
        for title, key, file in titles_keys_files:
            f.write(title + " - " + key + '\n' + file + '\n\n')

if __name__ == "__main__":
    all_wrappers_book()
