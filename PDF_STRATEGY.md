# PDF Viewing Strategy for Jazz Picker

## Current Status ✓ COMPLETED

Web interface works (729 songs, search, filtering, responsive). PDF serving now works via symlinks to Dropbox.

**Solution Implemented:** Symlinked to pre-compiled PDFs from Dropbox. All 4,324 PDFs accessible without compilation.

### Implementation ✓ Complete

1. **Symlinked Dropbox directories** (2025-11-13)
   ```bash
   ln -s "/Users/nico/Library/CloudStorage/Dropbox/Swing Project/Lead Sheets/Alto Voice" "Alto Voice"
   ln -s "/Users/nico/Library/CloudStorage/Dropbox/Swing Project/Lead Sheets/Baritone Voice" "Baritone Voice"
   ln -s "/Users/nico/Library/CloudStorage/Dropbox/Swing Project/Lead Sheets/Standard" Standard
   ln -s "/Users/nico/Library/CloudStorage/Dropbox/Swing Project/Lead Sheets/Others" Others
   ln -s "/Users/nico/Library/CloudStorage/Dropbox/Swing Project/Lead Sheets/Midi" Midi
   ```

2. **PDF serving works immediately**
   - `/pdf/<filename>` endpoint serves PDFs via symlinks
   - 147KB-200KB per PDF, instant load
   - Tested: "A Child Is Born - Ly - Db Alto Voice.pdf" ✓

3. **On-demand compilation fallback**
   - Already implemented in app.py
   - Will work once LilyPond 2.25 installed (optional)

### Rationale

Uses Eric's pre-compiled PDFs. Zero build time. Always in sync with his latest changes.

## Questions

1. **Dropbox path:** Where are your compiled PDFs? Need full path to symlink (e.g., `/Users/eric/Dropbox/LilyPond-Output/Standard/`)

2. **LilyPond version:** What version are you running? (`lilypond --version`)

3. **Build frequency:** How often do you run `lilyfy.sh`? Assumed daily.

4. **Symlink OK?** Can Nico's system symlink to your Dropbox, or prefer copying?

## Alternatives Considered

**Pre-compile locally:** 1-2 hour build, duplicates your work, gets out of sync.

**On-demand only:** 3-5 sec wait per PDF, poor UX for 4,324 files.

**Periodic copy/sync:** Requires cron, doubles disk space, sync complexity.

## Next Steps

**Phase 1:** Symlink your PDFs, update app.py to serve them, test.

**Phase 2:** Match LilyPond versions, implement on-demand fallback.

**Phase 3:** PDF.js viewer, favorites/setlists, optional web deployment.

## Technical Notes

`catalog.json` has correct PDF paths: `../Alto Voice/A Child Is Born - Ly - Db Alto Voice`. Just need symlinks to resolve them.

Build scripts (`mkdirs.sh`, `lilyfy.sh`) create directory structure and move PDFs to categorized folders. No changes to your LilyPond code required.

---

**Branch:** `nico/jazz-picker`
**Status:** Awaiting Dropbox path and LilyPond version
