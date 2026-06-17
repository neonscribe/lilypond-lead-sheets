%% -*- Mode: LilyPond -*-

\pointAndClickOff

printNoteNames = 
  #(if (defined? 'printNoteNames)
    printNoteNames
    (ly:get-option 'print-note-names))

midiOnly = 
  #(if (defined? 'midiOnly)
    midiOnly
    (ly:get-option 'midi-only))

#(if printNoteNames
  (set-global-staff-size 18))

subtitle =
#(if (and (defined? 'subtitle) subtitle)
  subtitle
  "Standard Key")

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  #f)

bassKey =
#(if (and (defined? 'bassKey) bassKey)
  bassKey
  #f)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

introLeadingEighth = ##f
verseLeadingEighth = ##f
refrainLeadingEighth = ##f
bassLineLeadingEighth = ##f
outroLeadingEighth = ##f
codaLeadingEighth = ##f

\include "ambitus-engraver.ily"
\include "text-mark.ily"
\include "modern-codas.ily"
\include "jazz-chords.ily"
\include "english.ly"
\include "presets.ily"
\include "utilities.ily"
\include "scoop.ily"
\include "swing.ly"
\include "scoop.ily"
\include "tempo.ily"
\include "trill.ily"
\include "bar-lines.ily"
\include "chord-slash.ily"

\version "2.26.0"
