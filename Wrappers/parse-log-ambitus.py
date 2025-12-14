import re

input_file_pattern = re.compile('^Processing `')
no_notes_pattern = re.compile('^No notes$')
low_note_pattern = re.compile('^low note')
high_note_pattern = re.compile('^high note')
ambitus_pattern = re.compile('^ambitus ')

def print_ambitus_data(input_file_name, section_names, ranges):
    print(input_file_name)
    for section, range in zip(section_names, ranges):
        print(section)
        if len(range) > 0:
            print(range[0])
            print(range[1])
        else:
            print('none')
    print('')

# Open the file for reading ('r' mode)
with open("../../lilyfy.log", "r") as file:
    input_file_name = False
    section_names = []
    ranges = []
    low_note = False
    high_note = False
    for line in file:
        match = re.search(input_file_pattern, line)
        if match:
            if input_file_name:
                print_ambitus_data(input_file_name, section_names, ranges)
                section_names = []
                ranges = []
            # If a match is found, you can access the full match and specific groups
            input_file_name = line[12:-2]
        else:
            match = re.search(ambitus_pattern, line)
            if match:
                section_names.append(line[8:-1])
            else:
                match = re.search(low_note_pattern, line)
                if match:
                    low_note = line[17:-3]
                else:
                    match = re.search(high_note_pattern, line)
                    if match:
                        high_note = line[18:-3]
                        if not low_note:
                            print('malformed log file')
                            exit(1)
                        ranges.append([low_note, high_note])
                    else:
                        match = re.search(no_notes_pattern, line)
                        if match:
                            ranges.append([])
    if input_file_name:
        print_ambitus_data(input_file_name, section_names, ranges)
