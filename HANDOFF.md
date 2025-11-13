# Jazz Picker - Session Handoff

## What We Built

A web app for browsing Eric's 729 jazz lead sheets on iPad!

**Working Features:**
- ✅ Catalog of 4,324 variations across all instruments
- ✅ Responsive web UI (desktop + iPad optimized)
- ✅ Instrument selector (Piano/Bass/Bb/Eb/Alto/Baritone)
- ✅ Search by song title
- ✅ Shows available keys per instrument
- ✅ Dynamic IP detection for local network access
- ✅ PDF serving via Dropbox symlinks (instant, no compilation)
- ✅ On-demand compilation fallback (requires LilyPond 2.25)

**Current Status (2025-11-13):**
- Server running at http://localhost:5001 (iPad accessible on local network)
- PDFs served via Dropbox symlinks - all 4,324 sheets available

## PDF Serving Solution

**Implemented:** Symlinks to Eric's pre-compiled PDFs in Dropbox

- No compilation needed - instant PDF access
- Always synced with Eric's latest builds
- Symlinks in .gitignore (not committed)
- On-demand compilation available as fallback (requires LilyPond 2.25 upgrade)

**Symlinks created:**
```bash
ln -s "/path/to/dropbox/Lead Sheets/Alto Voice" "Alto Voice"
ln -s "/path/to/dropbox/Lead Sheets/Baritone Voice" "Baritone Voice"
ln -s "/path/to/dropbox/Lead Sheets/Standard" "Standard"
ln -s "/path/to/dropbox/Lead Sheets/Others" "Others"
ln -s "/path/to/dropbox/Lead Sheets/Midi" "Midi"
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
cd /path/to/lilypond-lead-sheets
. venv/bin/activate
python3 app.py

# Access:
# Computer: http://localhost:5001
# iPad:     http://YOUR_LOCAL_IP:5001 (shown in startup message)
```

## Next Steps

### Ready to Use:
- Wait for Dropbox sync to complete
- Open http://10.0.0.29:5001 on iPad
- Browse and view PDFs instantly

### Future Enhancements:
- [ ] Pre-compile all PDFs for instant loading
- [ ] Add PDF.js viewer for better mobile experience
- [ ] Favorites/setlist builder
- [ ] MIDI playback
- [ ] Remember selected instrument (localStorage)
- [ ] Add "Recently Viewed" section
- [ ] Deploy to web with password protection

## Questions for Eric

1. **GitHub Collaboration:**
   - Invite Eric as collaborator so he can review
   - See "GitHub Collaboration" section below

2. **Future Deployment:**
   - Deploy to web eventually? (Fly.io, Railway, etc.)
   - Would need basic auth for privacy
   - Or keep it local-only?

3. **Feature Requests:**
   - What would be most useful for jam sessions?
   - Embedded PDF viewer vs opening in new tab?
   - Favorites/setlists?

## GitHub Collaboration - How to Invite Eric

To invite Eric as a collaborator on your GitHub repository:

**Repository:** https://github.com/neonscribe/lilypond-lead-sheets

**Wait - is "neonscribe" Eric's GitHub account?**
- If yes: You're working on a fork or he already owns this repo. He can see it already!
- If no: This is your fork. Follow steps below to invite him.

### If You Need to Invite Eric:

1. Go to: https://github.com/neonscribe/lilypond-lead-sheets
2. Click **Settings** (top right)
3. Click **Collaborators** (left sidebar)
4. Click **Add people**
5. Enter Eric's GitHub username or email
6. Eric receives email invitation

**Or just send Eric this link directly:**
https://github.com/neonscribe/lilypond-lead-sheets

He can browse the code, create issues, or comment on commits without being a collaborator.

## Git Status

Currently on branch: `nico/jazz-picker`
Uncommitted changes: All the files listed above

**Ready to commit and share with Eric once Dropbox sync is complete!**

## Notes
- System is macOS, LilyPond installed via Homebrew
- Server must be running for iPad to access
- Local IP shown in startup message (may change if network changes)

---
**Last Updated:** 2025-11-12 at 7:00 PM (before Eric arrives)
