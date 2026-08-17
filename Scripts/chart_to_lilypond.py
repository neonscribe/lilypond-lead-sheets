"""
Parse a barstock chord chart into the structured form the app works with.

`parse_chart` is the backend's live barstock parser: `app.py`'s songwriter
metadata path, `chart_to_pdf.py`, and nine `tools/*.py` scripts all call it, and
`test_ly_to_barstock.py` cross-checks the LilyPond converter against it.

The module's NAME is historical. It used to also convert a parsed chart INTO a
LilyPond Core file; that half had zero call sites anywhere in the repo and moved
to `attic/chart_to_lilypond_render.py` (see that file's header). The name is kept
because ten live importers say `from chart_to_lilypond import parse_chart`, and
renaming the module during the pre-camp freeze would be barstock-parser churn
for no functional gain.

The chart format mirrors the frontend chartParser.ts:
  Title: Morning Coffee Blues
  Key: Bb
  Tempo: 120
  Time: 4/4

  [Verse]
  | Bb7 | Eb7 | Bb7 | Bb7 |
  Woke up this morning with a cup of something strong

  [Chorus]
  | F | G | C | % |
"""

import re, sys
from pprint import pp


HEADER_PATTERN = re.compile(r'^(title|author|key|tempo|time)\s*:\s*(.+)$', re.IGNORECASE)
SECTION_PATTERN = re.compile(r'^\[(.+)\]$')
BAR_PATTERN = re.compile(r'\|')


def parse_chart(content):
    """
    Parse chart text into structured data.
    Returns dict with title, key, tempo, timeSignature, sections.
    Each section has name and lines (type='bars' or 'lyrics').
    """
    result = {
        'title': '',
        'author': '',
        'key': 'C',
        'tempo': None,
        'timeSignature': '4/4',
        'sections': [],
    }

    current_section = {'name': '', 'lines': []}
    blank_count = 0

    for raw_line in content.split('\n'):
        trimmed = raw_line.strip()
        if not trimmed:
            # Double blank line = section break
            blank_count += 1
            if blank_count >= 2 and current_section['lines']:
                result['sections'].append(current_section)
                current_section = {'name': '', 'lines': []}
            continue
        blank_count = 0

        # Comments
        if trimmed.startswith('#'):
            continue

        # Header fields
        header_match = HEADER_PATTERN.match(trimmed)
        if header_match:
            field = header_match.group(1).lower()
            value = header_match.group(2).strip()
            if field == 'title':
                result['title'] = value
            elif field == 'author':
                result['author'] = value
            elif field == 'key':
                result['key'] = value
            elif field == 'tempo':
                try:
                    result['tempo'] = int(value)
                except ValueError:
                    pass
            elif field == 'time':
                result['timeSignature'] = value
            continue

        # Section markers
        section_match = SECTION_PATTERN.match(trimmed)
        if section_match:
            if current_section['lines'] or current_section['name']:
                result['sections'].append(current_section)
            current_section = {'name': section_match.group(1), 'lines': []}
            continue

        # Form break (;)
        if trimmed == ';':
            current_section['lines'].append({'type': 'break', 'content': ';'})
            continue

        # Bar lines
        if BAR_PATTERN.search(trimmed):
            chords = [c.strip() for c in trimmed.split('|') if c.strip()]
            current_section['lines'].append({
                'type': 'bars',
                'content': trimmed,
                'chords': chords,
            })
            continue

        # Lyrics
        current_section['lines'].append({
            'type': 'lyrics',
            'content': trimmed,
        })

    if current_section['lines'] or current_section['name']:
        result['sections'].append(current_section)

    return result


if __name__ == "__main__":
    with open(sys.argv[1], 'r', encoding='utf-8') as file:
        file_contents = file.read()
        pp(parse_chart(file_contents))
