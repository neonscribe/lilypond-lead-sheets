#!/usr/bin/env python3
"""
Build a catalog of all available lead sheets from the Wrappers directory.

This script scans all .ly files in the Wrappers directory and extracts:
- Song title
- Key
- Variation type (Standard, Alto Voice, Baritone Voice, Bass, Bb, Eb, etc.)
- Core file reference
- Expected PDF output path

Output: catalog.json
"""

import os
import re
import json
from pathlib import Path
from collections import defaultdict

# Regex patterns for parsing wrapper files
SONG_PATTERN = re.compile(r'\\song\{([^}]+)\}\{"([^"]+)"\}')
INSTRUMENT_PATTERN = re.compile(r'instrument\s*=\s*"([^"]+)"')
WHAT_KEY_PATTERN = re.compile(r'whatKey\s*=\s*([a-z,\'"]+)')
WHAT_CLEF_PATTERN = re.compile(r'whatClef\s*=\s*"([^"]+)"')
INCLUDE_CORE_PATTERN = re.compile(r'\\include\s+"\.\.\/Core\/([^"]+)"')

# Filename pattern: {Title} - Ly - {Key} {Variation}.ly
FILENAME_PATTERN = re.compile(r'^(.+?) - Ly - (.+?)\.ly$')


def construct_pdf_path(filename, key_and_variation):
    """Construct the PDF path based on filename pattern."""
    # Remove .ly extension
    base_name = filename.replace('.ly', '')

    # Determine category based on key_and_variation
    if 'Bass Line for Standard' in key_and_variation:
        category = 'Standard/Bass Line'
    elif 'Guitar Solo for Standard' in key_and_variation:
        category = 'Standard/Guitar Solo'
    elif 'Bass for Standard' in key_and_variation or 'Bass High for Standard' in key_and_variation or 'Bass Low for Standard' in key_and_variation:
        category = 'Standard/Bass'
    elif 'Bass for Alto Voice' in key_and_variation:
        category = 'Alto Voice/Bass'
    elif 'for Bb for Alto Voice' in key_and_variation or 'for Bb High for Alto Voice' in key_and_variation or 'for Bb Low for Alto Voice' in key_and_variation:
        category = 'Alto Voice/Bb'
    elif 'Bass for Baritone Voice' in key_and_variation:
        category = 'Baritone Voice/Bass'
    elif 'for Bb for Baritone Voice' in key_and_variation or 'for Bb High for Baritone Voice' in key_and_variation or 'for Bb Low for Baritone Voice' in key_and_variation:
        category = 'Baritone Voice/Bb'
    elif 'for Bb for Standard' in key_and_variation or 'for Bb High for Standard' in key_and_variation or 'for Bb Low for Standard' in key_and_variation:
        category = 'Standard/Bb'
    elif 'for Eb for Standard' in key_and_variation:
        category = 'Standard/Eb'
    elif 'for Eb for Alto Voice' in key_and_variation:
        category = 'Alto Voice/Eb'
    elif 'for Eb for Baritone Voice' in key_and_variation:
        category = 'Baritone Voice/Eb'
    elif 'Standard' in key_and_variation:
        category = 'Standard'
    elif 'Alto Voice' in key_and_variation:
        category = 'Alto Voice'
    elif 'Baritone Voice' in key_and_variation:
        category = 'Baritone Voice'
    else:
        category = 'Others'

    return f"../{category}/{base_name}"


def parse_wrapper_file(filepath):
    """Parse a single wrapper file and extract metadata."""
    filename = os.path.basename(filepath)

    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Extract metadata using regex
    song_match = SONG_PATTERN.search(content)
    instrument_match = INSTRUMENT_PATTERN.search(content)
    key_match = WHAT_KEY_PATTERN.search(content)
    clef_match = WHAT_CLEF_PATTERN.search(content)
    core_match = INCLUDE_CORE_PATTERN.search(content)

    # Parse filename for additional context
    filename_match = FILENAME_PATTERN.match(filename)

    if not filename_match:
        return None

    file_title, key_and_variation = filename_match.groups()

    metadata = {
        'filename': filename,
        'filepath': str(filepath),
        'title': file_title,
        'key_and_variation': key_and_variation,
    }

    # Always construct pdf_path (even if no \song{} comment)
    metadata['pdf_path'] = construct_pdf_path(filename, key_and_variation)

    # If \song{} comment exists, use its display_name (otherwise construct from filename)
    if song_match:
        metadata['display_name'] = song_match.group(1)
    else:
        # Construct display name from filename
        # Extract just the key from key_and_variation for cleaner display
        key_part = key_and_variation.split()[0] if key_and_variation else ''
        metadata['display_name'] = f"{file_title} - {key_part}"

    if instrument_match:
        metadata['instrument'] = instrument_match.group(1)

    if key_match:
        metadata['key'] = key_match.group(1).strip()

    if clef_match:
        metadata['clef'] = clef_match.group(1)

    if core_match:
        metadata['core_file'] = core_match.group(1)

    # Determine variation type from key_and_variation
    variation_type = 'Unknown'
    if 'Standard' in key_and_variation:
        if 'Bass for Standard' in key_and_variation:
            variation_type = 'Bass'
        elif 'for Bb' in key_and_variation:
            variation_type = 'Bb Instrument'
        elif 'for Eb' in key_and_variation:
            variation_type = 'Eb Instrument'
        else:
            variation_type = 'Standard (Concert)'
    elif 'Alto Voice' in key_and_variation:
        variation_type = 'Alto Voice'
    elif 'Baritone Voice' in key_and_variation:
        variation_type = 'Baritone Voice'

    metadata['variation_type'] = variation_type

    return metadata


def build_catalog(wrappers_dir='Wrappers'):
    """Build a complete catalog of all wrapper files."""
    wrappers_path = Path(wrappers_dir)

    if not wrappers_path.exists():
        print(f"Error: {wrappers_dir} directory not found")
        return None

    catalog = {
        'metadata': {
            'total_files': 0,
            'total_songs': 0,
            'generated': None,
        },
        'songs': {},  # keyed by song title
        'variations': [],  # flat list of all variations
    }

    songs_dict = defaultdict(lambda: {
        'title': '',
        'core_files': set(),
        'variations': []
    })

    # Scan all .ly files in Wrappers
    wrapper_files = list(wrappers_path.glob('*.ly'))
    catalog['metadata']['total_files'] = len(wrapper_files)

    print(f"Scanning {len(wrapper_files)} wrapper files...")

    for filepath in wrapper_files:
        metadata = parse_wrapper_file(filepath)
        if metadata:
            song_title = metadata['title']

            # Add to songs dictionary
            songs_dict[song_title]['title'] = song_title
            if 'core_file' in metadata:
                songs_dict[song_title]['core_files'].add(metadata['core_file'])
            songs_dict[song_title]['variations'].append(metadata)

            # Add to flat variations list
            catalog['variations'].append(metadata)

    # Convert songs_dict to regular dict and convert sets to lists
    for song_title, song_data in songs_dict.items():
        catalog['songs'][song_title] = {
            'title': song_data['title'],
            'core_files': sorted(list(song_data['core_files'])),
            'variations': sorted(song_data['variations'],
                               key=lambda x: (x['variation_type'], x.get('key', '')))
        }

    catalog['metadata']['total_songs'] = len(catalog['songs'])

    from datetime import datetime
    catalog['metadata']['generated'] = datetime.now().isoformat()

    return catalog


def save_catalog(catalog, output_file='catalog.json'):
    """Save the catalog to a JSON file."""
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(catalog, f, indent=2, ensure_ascii=False)
    print(f"Catalog saved to {output_file}")


def print_summary(catalog):
    """Print a summary of the catalog."""
    print("\n" + "="*60)
    print("CATALOG SUMMARY")
    print("="*60)
    print(f"Total wrapper files: {catalog['metadata']['total_files']}")
    print(f"Total unique songs: {catalog['metadata']['total_songs']}")
    print(f"Generated: {catalog['metadata']['generated']}")
    print("\nSample songs:")

    for i, (title, data) in enumerate(list(catalog['songs'].items())[:10]):
        print(f"\n{i+1}. {title}")
        print(f"   Variations: {len(data['variations'])}")
        variation_types = set(v['variation_type'] for v in data['variations'])
        print(f"   Types: {', '.join(sorted(variation_types))}")


if __name__ == '__main__':
    print("Building lead sheet catalog...")
    catalog = build_catalog()

    if catalog:
        save_catalog(catalog)
        print_summary(catalog)
        print("\n✓ Catalog built successfully!")
    else:
        print("\n✗ Failed to build catalog")
