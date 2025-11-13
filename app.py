#!/usr/bin/env python3
"""
Jazz Picker - A web interface for browsing Eric's lilypond lead sheets.
"""

from flask import Flask, render_template, jsonify, request, send_file, send_from_directory
import json
import subprocess
import os
import socket
from pathlib import Path

app = Flask(__name__)

# Load catalog
CATALOG_FILE = 'catalog.json'
catalog_data = None
WRAPPERS_DIR = 'Wrappers'


def load_catalog():
    """Load the catalog from JSON file."""
    global catalog_data
    with open(CATALOG_FILE, 'r', encoding='utf-8') as f:
        catalog_data = json.load(f)
    return catalog_data


def get_local_ip():
    """Get the local IP address of this machine."""
    try:
        # Create a socket to determine the local IP
        # This doesn't actually connect, just determines what IP would be used
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
        s.close()
        return ip
    except Exception:
        return "localhost"


@app.route('/')
def index():
    """Main page - song browser."""
    if catalog_data is None:
        load_catalog()

    return render_template('index.html',
                         total_songs=catalog_data['metadata']['total_songs'],
                         total_files=catalog_data['metadata']['total_files'])


@app.route('/api/songs')
def get_songs():
    """API endpoint to get all songs."""
    if catalog_data is None:
        load_catalog()

    # Convert songs dict to sorted list
    songs_list = [
        {
            'title': title,
            **data
        }
        for title, data in catalog_data['songs'].items()
    ]

    # Sort alphabetically
    songs_list.sort(key=lambda x: x['title'])

    return jsonify(songs_list)


@app.route('/api/songs/search')
def search_songs():
    """API endpoint to search songs by title."""
    if catalog_data is None:
        load_catalog()

    query = request.args.get('q', '').lower()
    variation_filter = request.args.get('variation', None)

    if not query and not variation_filter:
        return jsonify([])

    results = []
    for title, data in catalog_data['songs'].items():
        # Filter by title
        if query and query not in title.lower():
            continue

        # Filter by variation type if specified
        variations = data['variations']
        if variation_filter:
            variations = [v for v in variations if v['variation_type'] == variation_filter]

        if variations:
            results.append({
                'title': title,
                'core_files': data['core_files'],
                'variations': variations
            })

    # Sort results
    results.sort(key=lambda x: x['title'])

    return jsonify(results)


@app.route('/api/song/<path:song_title>')
def get_song(song_title):
    """API endpoint to get a specific song's details."""
    if catalog_data is None:
        load_catalog()

    if song_title in catalog_data['songs']:
        return jsonify({
            'title': song_title,
            **catalog_data['songs'][song_title]
        })
    else:
        return jsonify({'error': 'Song not found'}), 404


@app.route('/pdf/<path:filename>')
def serve_pdf(filename):
    """Serve a PDF file, compiling it if necessary."""
    # The filename should match the wrapper filename
    wrapper_file = Path(WRAPPERS_DIR) / filename

    if not wrapper_file.exists():
        return jsonify({'error': 'Wrapper file not found'}), 404

    # Determine the PDF path from catalog
    variation = None
    for song_data in catalog_data['songs'].values():
        for var in song_data['variations']:
            if var['filename'] == filename:
                variation = var
                break
        if variation:
            break

    if not variation:
        return jsonify({'error': 'Variation not found in catalog'}), 404

    # PDF path is stored without .pdf extension, relative to Wrappers dir
    # e.g., "../Standard/Bass/Song" -> resolve to absolute path
    pdf_path = (Path(WRAPPERS_DIR) / variation['pdf_path']).resolve()
    pdf_path = Path(str(pdf_path) + '.pdf')

    # Check if PDF exists (could be via symlink)
    if pdf_path.exists():
        return send_file(pdf_path, mimetype='application/pdf')

    # If PDF doesn't exist, compile it
    try:
        # Run lilypond in the Wrappers directory
        result = subprocess.run(
            ['lilypond', filename],
            cwd=WRAPPERS_DIR,
            capture_output=True,
            text=True,
            timeout=60  # Increased to 60 seconds
        )

        if result.returncode != 0:
            # Extract the most relevant error lines
            stderr_lines = result.stderr.split('\n')
            error_summary = []

            # Get first few errors
            for line in stderr_lines:
                if 'error:' in line.lower():
                    error_summary.append(line.strip())
                    if len(error_summary) >= 5:
                        break

            error_text = '\n'.join(error_summary) if error_summary else result.stderr[:500]

            return jsonify({
                'error': 'LilyPond compilation failed',
                'details': error_text,
                'hint': 'This usually means you need LilyPond 2.25 (development version). Check: lilypond --version'
            }), 500

        # Move the generated PDF to the correct location
        generated_pdf = Path(WRAPPERS_DIR) / filename.replace('.ly', '.pdf')

        if not generated_pdf.exists():
            return jsonify({'error': 'PDF not generated'}), 500

        # Create output directory if needed
        pdf_path.parent.mkdir(parents=True, exist_ok=True)

        # Move PDF to correct location
        generated_pdf.rename(pdf_path)

        # Move MIDI file if it exists
        midi_file = Path(WRAPPERS_DIR) / filename.replace('.ly', '.midi')
        if midi_file.exists():
            midi_dir = Path('Midi')
            midi_dir.mkdir(exist_ok=True)
            midi_file.rename(midi_dir / midi_file.name)

        return send_file(pdf_path, mimetype='application/pdf')

    except subprocess.TimeoutExpired:
        return jsonify({'error': 'Compilation timed out'}), 500
    except Exception as e:
        return jsonify({'error': str(e)}), 500


@app.route('/api/check-pdf/<path:filename>')
def check_pdf(filename):
    """Check if a PDF exists without compiling."""
    variation = None
    for song_data in catalog_data['songs'].values():
        for var in song_data['variations']:
            if var['filename'] == filename:
                variation = var
                break
        if variation:
            break

    if not variation:
        return jsonify({'exists': False, 'error': 'Variation not found'})

    # Resolve path consistently with serve_pdf
    pdf_path = (Path(WRAPPERS_DIR) / variation['pdf_path']).resolve()
    pdf_path = Path(str(pdf_path) + '.pdf')
    return jsonify({'exists': pdf_path.exists(), 'path': str(pdf_path)})


if __name__ == '__main__':
    # Load catalog on startup
    try:
        load_catalog()
        print(f"Loaded catalog with {catalog_data['metadata']['total_songs']} songs")
    except FileNotFoundError:
        print(f"Error: {CATALOG_FILE} not found. Run build_catalog.py first!")
        exit(1)

    # Listen on all interfaces to allow iPad access on local network
    # Port 5001 (5000 is often used by AirPlay on macOS)
    PORT = 5001
    local_ip = get_local_ip()

    print("\n" + "="*70)
    print("🎵  JAZZ PICKER IS RUNNING!")
    print("="*70)
    print(f"\n📱 On this computer:")
    print(f"   → http://localhost:{PORT}")
    print(f"\n📱 From iPad/iPhone on same WiFi network:")
    print(f"   → http://{local_ip}:{PORT}")
    print(f"\n💡 Tip: Bookmark the iPad URL for quick access!")
    print("\n" + "="*70 + "\n")

    app.run(debug=True, host='0.0.0.0', port=PORT)
