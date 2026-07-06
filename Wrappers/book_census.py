import os, re, glob

sheet_to_books = {}

def find_sheets_in_books(dir):
    pattern = os.path.join(dir, '*.book')
    files = glob.glob(pattern)
    sorted_files = sorted(files)
    for file_path in sorted_files:
        title = False
        include_next = False
        with open(file_path) as book_file:
            for l in book_file:
                line = l.strip()
                if line:
                    if not title:
                        title = True
                    elif include_next:
                        include_next = False
                        sheet_name = line
                        books = sheet_to_books.get(sheet_name, [])
                        books.append(file_path)
                        sheet_to_books[sheet_name] = books
                    else:
                        include_next = True

find_sheets_in_books('../TeX')
find_sheets_in_books('../TeX2')

ly_files_pattern = '../Wrappers/*.ly'
ly_files = glob.glob(ly_files_pattern)
sorted_ly_files = sorted(ly_files)

for file_path in sorted_ly_files:
    if not sheet_to_books.get(file_path):
        print(file_path)
