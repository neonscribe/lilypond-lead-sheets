import json

from pathlib import Path

# Set the directory path
directory = Path('../Core')
search_string1 = '"Customizer"'
string1_len = len(search_string1)
search_string2 = ':'
string2_len = len(search_string2)
search_string3 = '{'
customizers = []
decoder = json.JSONDecoder()

# Use wildcards to match files (e.g., all .txt files starting with 'data_')
for file_path in directory.glob('*.ly'):
    with open(file_path, 'r') as file:
        content = file.read()
        match_index1 = content.find(search_string1, 0)
        if match_index1 != -1:
            search1_end = match_index1 + string1_len
            match_index2 = content.find(search_string2, search1_end)
            if match_index2 != -1:
                match_index3 = content.find(search_string3, match_index2 + string2_len)
                if match_index3 != -1:
                    try:
                        data, pos = decoder.raw_decode(content[match_index3:])
                    except json.JSONDecodeError as e:
                        print(f"in {file_path} at {match_index3}: json decode error {e}")
                        exit(1)
                    customizers.append(data)
                else:
                    print(f"in {file_path}: malformed customizer spec")
                    exit(1)
            else:
                print(f"in {file_path}: malformed customizer spec")
                exit(1)

print('[')
pretty_json = ','.join(json.dumps(data, indent=4) for data in customizers)
print(pretty_json)
print(']')
