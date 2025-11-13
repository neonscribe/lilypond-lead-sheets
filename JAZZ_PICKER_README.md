# Jazz Picker 🎵

A web interface for browsing and searching Eric's lilypond lead sheet collection.

## Features

- **Browse 729 songs** with 4,324+ variations
- **Search** by song title
- **Filter** by instrument type (Standard, Bass, Bb, Eb, Alto Voice, Baritone Voice)
- **View all variations** for each song with keys and transpositions

## Quick Start

### 1. Build the Catalog

First, generate the song catalog from the wrapper files:

```bash
python3 build_catalog.py
```

This creates `catalog.json` with metadata for all 4,324 lead sheet variations.

### 2. Install Dependencies

```bash
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

### 3. Start the Web App

```bash
source venv/bin/activate  # If not already activated
python3 app.py
```

The app will start at **http://127.0.0.1:5000**

Open your browser and start browsing!

## Usage

### Web Interface

- **Search**: Type any song title in the search box (e.g., "Blue Moon", "Autumn")
- **Filter**: Click instrument type buttons to show only specific variations
- **Expand**: Click on any song card to see all available keys and variations

### API Endpoints

The app also provides a REST API:

**Get all songs:**

```bash
curl http://127.0.0.1:5000/api/songs
```

**Search songs:**

```bash
curl "http://127.0.0.1:5000/api/songs/search?q=autumn"
```

**Filter by variation:**

```bash
curl "http://127.0.0.1:5000/api/songs/search?variation=Bass"
```

**Get specific song:**

```bash
curl http://127.0.0.1:5000/api/song/Blue%20Moon
```

## Project Structure

```
.
├── build_catalog.py       # Scans Wrappers/ and builds catalog.json
├── app.py                 # Flask web application
├── catalog.json           # Generated song database (gitignored)
├── templates/
│   └── index.html         # Web interface
├── Wrappers/              # 4,324 LilyPond wrapper files (source)
├── Core/                  # 734 core music files (source)
└── venv/                  # Python virtual environment (gitignored)
```

## How It Works

1. **Wrapper files** (`Wrappers/*.ly`) define each playable variation of a song
2. **build_catalog.py** parses all wrappers and extracts:
   - Song titles
   - Keys and transpositions
   - Instrument types (Standard, Bass, Bb, Eb, voice ranges)
   - Core file references
   - Expected PDF output paths
3. **app.py** serves the catalog via a web interface and REST API
4. **Front-end** provides search, filtering, and browsing

## Phase 1 Status ✓

This is **Phase 1** of the Jazz Picker project - a read-only catalog browser.

**Completed:**

- ✓ Catalog builder that scans all wrapper files
- ✓ JSON database of songs and variations
- ✓ Web interface for browsing and searching
- ✓ REST API for programmatic access

**Future Phases:**

- Phase 2: PDF compilation and serving
  - Option A: Pre-compile all PDFs
  - Option B: On-demand compilation via LilyPond
- Phase 3: Enhanced web features
  - PDF viewer embedded in page
  - MIDI playback
  - Favorites/playlists
  - Convert PDFs to SVG for better web display

## Compatibility with Eric's Workflow

This tool is designed to **not interfere** with Eric's work:

- ✓ Never modifies Core or Wrapper `.ly` files
- ✓ Catalog is generated, not part of source
- ✓ All web app files are gitignored
- ✓ Uses existing directory structure
- ✓ Can rebuild catalog anytime Core/Wrappers change

## Rebuilding the Catalog

Whenever Eric adds new songs or variations:

```bash
python3 build_catalog.py
```

The catalog will automatically pick up all changes. No need to restart the web app - just refresh the browser!

## Notes

- Built on the `nico/jazz-picker` branch
- Web app runs in Flask development mode (not for production deployment)
- Catalog generation is fast (~2 seconds for 4,324 files)
- Search is client-side for instant results

Enjoy browsing the collection! 🎺🎹🎸
