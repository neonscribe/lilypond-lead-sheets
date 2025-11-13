# PDF Viewing Strategy for Jazz Picker

## Current Status

Web interface works (729 songs, search, filtering, responsive). PDF viewing fails due to LilyPond version mismatch.

**Problem:** System has LilyPond 2.24.4, code requires 2.25. On-demand compilation fails with `\normal-weight` command not found.

## Proposed Solution

Symlink to your pre-compiled PDFs from Dropbox, with on-demand compilation as fallback.

### Implementation

1. **Symlink Dropbox directories**
   ```bash
   ln -s /path/to/dropbox/Standard Standard
   ln -s /path/to/dropbox/Alto\ Voice Alto\ Voice
   ln -s /path/to/dropbox/Baritone\ Voice Baritone\ Voice
   ln -s /path/to/dropbox/Others Others
   ln -s /path/to/dropbox/Midi Midi
   ```

2. **Update app.py**
   - Add `/pdf/<path>` endpoint
   - Serve PDF if exists
   - Compile on-demand if missing

3. **Upgrade LilyPond**
   ```bash
   brew upgrade lilypond --fetch-HEAD
   ```

### Rationale

Uses your existing build process. No copying, no manual sync. Fallback handles edge cases

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
