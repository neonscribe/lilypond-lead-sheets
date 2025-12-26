import os, re, glob

sheet_to_books = {}

sheet_entry_pattern = r'/([^/"]+)"}\s*$'

def find_sheets_in_books(dir):
    pattern = os.path.join(dir, '*.tex')
    files = glob.glob(pattern)
    sorted_files = sorted(files)
    for file_path in sorted_files:
        with open(file_path) as file:
            for line in file:
                match = re.search(sheet_entry_pattern, line)
                if match:
                    sheet_name = match.group(1)
                    books = sheet_to_books.get(sheet_name, [])
                    books.append(file_path)
                    sheet_to_books[sheet_name] = books


find_sheets_in_books('../TeX')
find_sheets_in_books('../TeX2')

ly_files_pattern = '*.ly'
base_name_pattern = r'^(.*)\.ly$'
ly_files = glob.glob(ly_files_pattern)
sorted_ly_files = sorted(ly_files)

for file_path in sorted_ly_files:
    match = re.search(base_name_pattern, file_path)
    if match:
        base_name = match.group(1)
        if not sheet_to_books.get(base_name):
            print(base_name)
