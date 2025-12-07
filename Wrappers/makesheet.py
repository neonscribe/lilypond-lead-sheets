import re, sys, os

from titlecase import titlecase
from collections import deque

# makesheet.py - Create a new empty core file and standard, Bass, Eb, and Bb wrappers

"""
This script must be run from a sibling directory of ../Core/ and ../Wrappers/
"""

core_directory = os.fsencode('../Core/')
wrappers_directory = os.fsencode('../Wrappers/')

if not os.path.isdir(core_directory) or not os.path.isdir(wrappers_directory):
    print('This script must be run from a sibling of ../Core/ and ../Wrappers/')
    exit(1)

"""
Notes are named using LilyPond's English syntax.
A note is named with a single letter a, b, c, d, e, f, g
A sharp or flat can be added by following with the letter 's' or 'f'
Double (or any multiple) sharps or flats are indicated with repeated 's' or 'f'

Octave indication uses LilyPond's absolute octave entry, based on Helmholtz notation.
Octave indication is done with single quotes (to go up) or commas (to go down)
Notes without either quotes or commas fall in the octave from C below middle C
(the second space from the bottom on the bass staff.)
up to the B just below middle C. c' is middle C,
just a half step above. b, is the B a half step below low C
(the second line from the bottom of the bass staff.)
c, is the C two ledger lines below the bass staff.
c''' is the C two ledger lines above the treble staff.
cf is the same as b,
bs is the same as c'
"""

# Offset in half steps going up from C
note_name_to_offset = { 'c'  : 0 ,
                        'cs' : 1 ,
                        'df' : 1 ,
                        'd'  : 2 ,
                        'ds' : 3 ,
                        'ef' : 3 ,
                        'e'  : 4 ,
                        'f'  : 5 ,
                        'fs' : 6 ,
                        'gf' : 6 ,
                        'g'  : 7 ,
                        'gs' : 8 ,
                        'af' : 8 ,
                        'a'  : 9 ,
                        'as' : 10,
                        'bf' : 10,
                        'b'  : 11 }



offset_to_note_name_sharp = ['c', 'cs', 'd', 'ds', 'e', 'f',
                             'fs', 'g', 'gs', 'a', 'as', 'b']

offset_to_note_name_flat = ['c', 'df', 'd', 'ef', 'e', 'f',
                             'gf', 'g', 'af', 'a', 'bf', 'b']

offset_to_file_note_name_sharp = ['C', 'Cs', 'D', 'Ds', 'E', 'F',
                                  'Fs', 'G', 'Gs', 'A', 'As', 'B']

offset_to_file_note_name_flat = ['C', 'Db', 'D', 'Eb', 'E', 'F',
                                  'Gb', 'G', 'Ab', 'A', 'Bb', 'B']

offset_to_nice_note_name_sharp = ['C', 'C\\#', 'D', 'D\\#', 'E', 'F',
                                  'F\\#', 'G', 'G\\#', 'A', 'A\\#', 'B']

offset_to_nice_note_name_flat = ['C', 'Db', 'D', 'Eb', 'E', 'F',
                                  'Gb', 'G', 'Ab', 'A', 'Bb', 'B']

major_key_sharps = [ 0, 7,  2, 9 , 4, 11, 6,  1, 8, 3, 10,  5 ]
major_key_flats =  [ 0, 5, 10, 3,  8,  1, 6, 11, 4, 9,  2,  7 ]
minor_key_sharps = [ 9, 4, 11, 6,  1,  8, 3, 10, 5, 0,  7,  2 ]
minor_key_flats =  [ 3, 8, 1,  6, 11,  4, 9,  2, 7, 0,  5, 10 ]

sharp_major_keys = 'degab'
sharp_minor_keys = 'eb'

banned_filename_characters = '/\\<>:"|?*.#'

pending_wrapper_files = deque()

def yes_or_no_prompt(question):
    yn = '?'
    while yn not in ['y', 'yes', 'n', 'no']:
        yn = input(question + ' (Y/N) ').lower()
    if yn in ['y', 'yes']:
        return True
    return False

def match_to_offset(m):
    base_note = m.group(1)
    note_offset = note_name_to_offset[base_note]

    accidentals = m.group(2)
    accidentals_count = len(accidentals)
    accidentals_offset = 0
    if accidentals_count > 0:
        if accidentals[0] == 's':
            accidentals_offset = accidentals_count
        else:                   # must be 'f'
            accidentals_offset = -accidentals_count

    octave = m.group(3)
    octave_count = len(octave)
    octave_offset = 0
    if octave_count > 0:
        if octave[0] == "'":
            octave_offset = octave_count
        else:                   # must be ','
            octave_offset = -octave_count

    return note_offset + accidentals_offset + octave_offset * 12

def offset_to_note_name(offset, is_sharp):
    offset %= 12
    if is_sharp:
        return offset_to_note_name_sharp[offset]
    return offset_to_note_name_flat[offset]

def offset_to_file_note_name(offset, is_sharp):
    offset %= 12
    if is_sharp:
        return offset_to_file_note_name_sharp[offset]
    return offset_to_file_note_name_flat[offset]

def offset_to_nice_note_name(offset, is_sharp):
    offset %= 12
    if is_sharp:
        return offset_to_nice_note_name_sharp[offset]
    return offset_to_nice_note_name_flat[offset]

def key_is_sharp(key, is_minor):
    if len(key) > 1:
        return key[1] == 's'
    if is_minor:
        return key in sharp_minor_keys
    return key in sharp_major_keys

# When we transpose to a different key, we choose the
# smallest key signature, because we are not monsters.
def transpose_key_offset(key_offset, is_minor, is_sharp):
    relative_offset = key_offset % 12
    if is_minor:
        if minor_key_sharps[relative_offset] < minor_key_flats[relative_offset]:
            return offset_to_note_name_sharp[relative_offset]
        if minor_key_sharps[relative_offset] == minor_key_flats[relative_offset]:
            if is_sharp:
                return offset_to_note_name_sharp[relative_offset]
        return offset_to_note_name_flat[relative_offset]
    if major_key_sharps[relative_offset] < major_key_flats[relative_offset]:
        return offset_to_note_name_sharp[relative_offset]
    if major_key_sharps[relative_offset] == major_key_flats[relative_offset]:
        if is_sharp:
                return offset_to_note_name_sharp[relative_offset]
    return offset_to_note_name_flat[relative_offset]

def note_in_scale(key_offset, scale_offset, is_sharp):
    offset = (key_offset + scale_offset) % 12
    if is_sharp:
        return offset_to_note_name_sharp[offset]
    return offset_to_note_name_flat[offset]

def octave_marker(octave_offset):
    if octave_offset == 0:
        return ''
    if octave_offset > 0:
        return "'" * octave_offset
    return ',' * -octave_offset

def key_name_for_file(key, is_minor):
    file_key = key[0].upper()
    accidental_count = len(key) - 1
    accidental_character = 'b'
    if accidental_count > 0:
        if key[1] == 's':
            accidental_character = 's'
        for i in range(0, accidental_count):
            file_key += accidental_character
    if is_minor:
        file_key += 'm'
    return file_key

def key_name_for_nice(key, is_minor):
    file_key = key[0].upper()
    accidental_count = len(key) - 1
    accidental_character = 'b'
    if accidental_count > 0:
        if key[1] == 's':
            accidental_character = '\\#'
        for i in range(0, accidental_count):
            file_key += accidental_character
    if is_minor:
        file_key += 'm'
    return file_key

song_title = input('Song title: ').strip()
titlecased_song_title = titlecase(song_title)

if song_title != titlecased_song_title:
    print('You typed: ', song_title)
    print('Proper title case is: ', titlecased_song_title)
    if yes_or_no_prompt('Should we use the proper title case?'):
        song_title = titlecased_song_title

key_re = re.compile('^([abcdefg])([s]*|[f]*)()([m]?)$')
key = input('What key (end with m for minor): ').strip().lower()
key_match = key_re.match(key)

is_minor = False
if len(key) > 0 and key[-1] == 'm':
    is_minor = True
    key = key[:-1]

key_offset = 0
if key_match:
    key_offset = match_to_offset(key_match)
else:
    print('Key must be note name with optional s for sharp or f for flat')
    exit(1)

is_sharp = key_is_sharp(key, is_minor)

minorize_two = '.5-' if is_minor else ''
minorize_five = '.9-' if is_minor else ''

two_key = note_in_scale(key_offset, 2, is_sharp)
five_key = note_in_scale(key_offset, 7, is_sharp)

file_song_title = ''.join(filter(lambda c: c not in banned_filename_characters,
                                 song_title))

file_key_name = key_name_for_file(key, is_minor)

core_file_name = f"{file_song_title} - Ly Core - {file_key_name}.ly"

in_core_file_name = os.path.join(core_directory, os.fsencode(core_file_name))

if os.path.exists(in_core_file_name):
    print(os.fsdecode(in_core_file_name), ' already exists')
    exit(1)

core_file_contents = f"""%% -*- Mode: LilyPond -*-

\\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\\header {{
  title = "{song_title}"
  subtitle = \\instrument
  poet = "Lyricist"
  composer = "Composer"
  copyright = \\markup \\small {{ \\now " " "© 19xx Inc." }}
}}

refrainLyrics = \\lyricmode {{
}}

refrainChords = \\chordmode {{
  \\chordOpenParen{{ {two_key}2:m7{minorize_two} }}
  \\chordCloseParen{{ {five_key}2:7{minorize_five} }}
}}

refrainKey = {key}

refrainMelody = \\relative f' {{
  \\time 4/4
  \\key \\refrainKey \\{'minor' if is_minor else 'major'}
  \\clef \\whatClef
  \\tempo "Medium" 4 = 120

  \\sectStart "A1"
  
  \\sect "B"
  
  \\sect "A2"

  \\sect "C"

  \\bar "|."
}}

\\include "../Include/paper.ily"

\\markup {{
  % Leave a gap after the header
  \\vspace #1
}}

\\include "../Include/refrain.ily"
"""

def save_wrapper_file(dict):
    pending_wrapper_files.append(dict)

def write_wrapper_file(dict):
    file_title = dict['file_title']
    nice_title = dict['nice_title']
    key_and_desc = dict['key_and_desc']
    toc_desc = dict['toc_desc']
    desc = dict['desc']
    key = dict['key']
    clef = dict['clef']
    subdir = dict['subdir']

    wrapper_file_base = f"{file_title} - Ly - {key_and_desc}"
    wrapper_file_name = wrapper_file_base + '.ly'
    in_file_name = os.path.join(wrappers_directory, os.fsencode(wrapper_file_name))

    if os.path.exists(in_file_name):
        print(os.fsdecode(in_file_name), ' already exists')
        exit(1)

    wrapper_file_contents = f"""%% -*- Mode: LilyPond -*-

\\version "2.24.0"

\\include "english.ly"

instrument = "{desc}"
whatKey = {key}
whatClef = "{clef}"

\\include "{os.fsdecode(in_core_file_name)}"

%{{

\\song{{{nice_title} - {toc_desc}}}{{"../Standard/{subdir}{wrapper_file_base}"}}

%}}
"""

    with open(in_file_name, 'w', encoding="utf-8") as wrapper_file:
        wrapper_file.write(wrapper_file_contents)

save_wrapper_file({ 'file_title' : file_song_title ,
                     'nice_title' : song_title ,
                     'key_and_desc' : f"{file_key_name} Standard" ,
                     'toc_desc' : key_name_for_nice(key, is_minor) ,
                     'desc' : 'Standard Key' ,
                     'key' : key ,
                     'clef' : 'treble' ,
                     'subdir' : '' })

print('Specify the range from the lowest note to the highest note')
print('Notes are given in LilyPond absolute octave entry')
print("Middle C (C4) is c' Treble C (C5) is c'' Bass C (C3) is c Low C (C2) is c,")
print("cf is the same as b, and bs is the same as c'")

low_note_re = re.compile("^([abcdefg])([f]*|[s]*)([,]*|[']*)()$")
low_note = input('Low note: ').strip().lower()
low_note_match = low_note_re.match(low_note)

low_note_offset = 0
if low_note_match:
    low_note_offset = match_to_offset(low_note_match)
else:
    print('Low note must be note name with optional s for sharp or f for flat,')
    print(' plus optional commas or apostrophes for octave')
    exit(1)

high_note_re = re.compile("^([abcdefg])([f]*|[s]*)([,]*|[']*)()$")
high_note = input('High note: ').strip().lower()
high_note_match = high_note_re.match(high_note)

high_note_offset = 0
if high_note_match:
    high_note_offset = match_to_offset(high_note_match)
else:
    print('High note must be note name with optional s for sharp or f for flat,')
    print(' plus optional commas or apostrophes for octave')
    exit(1)

"""
Standard key is always specified without an octave specifier.
LilyPond \\transpose command uses absolute octave entry for both pitches, so
an octave specifier (' or ,) must be used if and only the transposition
crosses the invisible boundary between B and C.
Transposing up from c to d uses no octave indictors. Transposing down
from c to a means we need to use a,
"""

# Bass part should be as low as possible without being lower than E one ledger line below the
# bass staff, the lowest written note on double bass and electric bass

# how many octaves below standard treble clef part?

low_e_offset = -8

# start out unreasonably low and go up until we break into the bass range
octave_offset = -5
bass_low_note = low_note_offset - (5 * 12)
while bass_low_note < low_e_offset:
    bass_low_note += 12
    octave_offset += 1

# number of commas (or apostrophes)
octave_mark = octave_marker(octave_offset)

save_wrapper_file({ 'file_title' : file_song_title ,
                     'nice_title' : song_title ,
                     'key_and_desc' : f"{file_key_name} Bass for Standard" ,
                     'toc_desc' : f"{key_name_for_nice(key, is_minor)} Bass" ,
                     'desc' : 'Bass for Standard Key' ,
                     'key' : key + octave_mark ,
                     'clef' : 'bass' ,
                     'subdir' : 'Bass/' })

# Written Eb part is a minor third below standard part plus or minus
# enough octaves so that the lowest note is no lower than Bb below
# middle C, the bottom (written) note of the saxophone.


eb_offset = (key_offset - 3) % 12
eb_key = transpose_key_offset(eb_offset, is_minor, is_sharp)
eb_file_key = key_name_for_file(eb_key, is_minor)
eb_low_note_offset = low_note_offset - 3

b_flat_offset = 10

# start unreasonably low and work up
eb_low_note = eb_low_note_offset - (5 * 12)
while eb_low_note < b_flat_offset:
    eb_low_note += 12

transposition_offset = eb_low_note - low_note_offset
eb_octave_key = key_offset + transposition_offset
eb_octave_offset = eb_octave_key // 12 - key_offset // 12

save_wrapper_file({ 'file_title' : file_song_title ,
                     'nice_title' : song_title ,
                     'key_and_desc' : f"{file_key_name} to {eb_file_key} for Eb for Standard" ,
                     'toc_desc' : f"{key_name_for_nice(key, is_minor)} to {key_name_for_nice(eb_key, is_minor)}" ,
                     'desc' : 'Eb for Standard Key' ,
                     'key' : eb_key + octave_marker(eb_octave_offset),
                     'clef' : 'treble' ,
                     'subdir' : 'Eb/' })

# For Bb, we would like the part to be comfortable on the clarinet, trumpet and saxophone
# The lowest written note on the saxophone is Bb below middle C.
# The lowest written note on the trumpet is F# below middle C.
# The lowest written note on the clarinet is E below middle C.
# The highest comfortable written note on the clarinet is A above the treble staff

# First we transpose for the saxophone, with the lowest note not below Bb below middle C
# If the highest note in this part is not above G at the top of the treble staff,
# we only use one Bb part. If the highest note is higher than G, but transposing down
# an octave leaves the lowest note higher than E below middle C, we will create two Bb parts,
# labeled "Bb High" and "Bb Low"

# The Bb part is a whole note above the standard part, plus or minus octaves.

bb_offset = (key_offset + 2) % 12
bb_key = transpose_key_offset(bb_offset, is_minor, is_sharp)
bb_file_key = key_name_for_file(bb_key, is_minor)
bb_low_note_offset = low_note_offset + 2

b_flat_offset = 10

# start unreasonably low and work up
bb_low_note = bb_low_note_offset - (5 * 12)
while bb_low_note < b_flat_offset:
    bb_low_note += 12

transposition_offset = bb_low_note - low_note_offset
bb_octave_key = key_offset + transposition_offset
bb_octave_offset = bb_octave_key // 12 - key_offset // 12

high_a_offset = 33
low_e_offset = 2

bb_high_note = high_note_offset + transposition_offset
bb_low_low_note = bb_low_note - 12


if bb_high_note <= high_a_offset or bb_low_low_note < low_e_offset:
    save_wrapper_file({ 'file_title' : file_song_title ,
                         'nice_title' : song_title ,
                         'key_and_desc' : f"{file_key_name} to {bb_file_key} for Bb for Standard" ,
                         'toc_desc' : f"{key_name_for_nice(key, is_minor)} to {key_name_for_nice(bb_key, is_minor)}" ,
                         'desc' : 'Bb for Standard Key' ,
                         'key' : bb_key + octave_marker(bb_octave_offset),
                         'clef' : 'treble' ,
                         'subdir' : 'Bb/' })
else:
    save_wrapper_file({ 'file_title' : file_song_title ,
                         'nice_title' : song_title ,
                         'key_and_desc' : f"{file_key_name} to {bb_file_key} for Bb High for Standard" ,
                         'toc_desc' : f"{key_name_for_nice(key, is_minor)} to {key_name_for_nice(bb_key, is_minor)}" ,
                         'desc' : 'Bb High for Standard Key' ,
                         'key' : bb_key + octave_marker(bb_octave_offset),
                         'clef' : 'treble' ,
                         'subdir' : 'Bb/' })
    save_wrapper_file({ 'file_title' : file_song_title ,
                         'nice_title' : song_title ,
                         'key_and_desc' : f"{file_key_name} to {bb_file_key} for Bb Low for Standard" ,
                         'toc_desc' : f"{key_name_for_nice(key, is_minor)} to {key_name_for_nice(bb_key, is_minor)}" ,
                         'desc' : 'Bb Low for Standard Key' ,
                         'key' : bb_key + octave_marker(bb_octave_offset - 1),
                         'clef' : 'treble' ,
                         'subdir' : 'Bb/' })

with open(in_core_file_name, 'w', encoding="utf-8") as core_file:
    core_file.write(core_file_contents)

for dict in pending_wrapper_files:
    write_wrapper_file(dict)
