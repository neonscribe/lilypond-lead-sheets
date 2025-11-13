# Jazz Picker - Session Handoff

## What We Built Today

A web app for browsing Eric's 729 jazz lead sheets on iPad!

**Working Features:**
- ✅ Catalog of 4,324 variations across all instruments
- ✅ Responsive web UI (desktop + iPad optimized)
- ✅ Instrument selector (Piano/Bass/Bb/Eb/Alto/Baritone)
- ✅ Search by song title
- ✅ Shows available keys per instrument
- ✅ Dynamic IP detection for local network access
- ✅ Better error messages when compilation fails

**Current Status:**
- Server running at http://10.0.0.29:5001 (iPad accessible)
- Interface working great
- PDF viewing attempts to compile on-demand but fails due to LilyPond version

## The LilyPond Version Issue

**Problem:**
- System has LilyPond 2.24.4
- Eric's code requires LilyPond 2.25 (development branch)
- Error: `\normal-weight` command doesn't exist in 2.24

**Solutions:**
1. **Quick Fix (for jamming today):** Pre-compile all PDFs using Eric's scripts
2. **Permanent Fix:** Upgrade LilyPond to 2.25
   ```bash
   brew uninstall lilypond
   brew install lilypond --devel  # or --HEAD
   ```

## Files Created (on branch `nico/jazz-picker`)

```
build_catalog.py          - Scans Wrappers/ and builds catalog.json
app.py                    - Flask web server (port 5001)
catalog.json              - Database of 729 songs (gitignored)
templates/index.html      - Web interface
requirements.txt          - Python dependencies (Flask)
.gitignore               - Ignores venv/, catalog.json, output dirs
JAZZ_PICKER_README.md    - Full documentation
venv/                    - Python virtual environment (gitignored)
```

## How to Run

```bash
# If server stopped:
cd /Users/nico/src/lilypond-lead-sheets
. venv/bin/activate
python3 app.py

# Access:
# Computer: http://localhost:5001
# iPad:     http://10.0.0.29:5001
```

## Next Steps

### Immediate (for today's jam):
1. **Option A:** Pre-compile PDFs
   ```bash
   cd /Users/nico/src/lilypond-lead-sheets
   ./mkdirs.sh  # Create output directories
   cd Wrappers
   ./lilyfy.sh  # Compile all sheets (takes 1-2 hours)
   ```

2. **Option B:** Just use the browser for now, deal with PDFs later
   - Interface works great for browsing
   - Can see what keys are available
   - PDFs can wait until after Eric arrives

### Future Enhancements:
- [ ] Pre-compile all PDFs for instant loading
- [ ] Add PDF.js viewer for better mobile experience
- [ ] Favorites/setlist builder
- [ ] MIDI playback
- [ ] Remember selected instrument (localStorage)
- [ ] Add "Recently Viewed" section
- [ ] Deploy to web with password protection

## Questions for Next Session

1. **Should we commit now or wait for Eric's input?**
   - Pros of committing: Work is saved, Eric can review
   - Cons: He may have opinions on structure/approach

2. **Pre-compile PDFs or fix LilyPond version first?**
   - Pre-compile = works immediately
   - Fix version = cleaner long-term

3. **Deploy to web eventually?**
   - Could use Fly.io, Railway, etc.
   - Would need basic auth for privacy

## Git Status

Currently on branch: `nico/jazz-picker`
Uncommitted changes: All the files listed above

## Notes
- Eric arrives later today to jam!
- System is macOS, LilyPond installed via Homebrew
- Local IP: 10.0.0.29 (may change if network changes)
- Server must be running for iPad to access

---
**Last Updated:** 2025-11-12 at 7:00 PM (before Eric arrives)
