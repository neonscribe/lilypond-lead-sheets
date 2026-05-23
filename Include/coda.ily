%% -*- Mode: LilyPond -*-

codaRaggedRight =
#(if (and (defined? 'codaRaggedRight) codaRaggedRight)
  #t
  #f)

midiKey = \codaKey
midiChords = \codaChords
midiMelody = \codaMelody

midiIncludeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/midi.ily"
  "../Include/nothing.ily")

$(if (not (and (defined? 'midiOnly) midiOnly))
  #{
\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \codaKey \whatKey {
       \codaChords
	}
      }
      }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \codaKey \whatKey {
      \codaMelody
      } }
      #} )
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus coda")
	\noDoubleAccidentalMusic \transpose \codaKey \whatKey {
	  \codaMelody
	  }
	}
    }
    $(if (and (defined? 'codaBass) codaBass)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \codaKey \bassKey { \codaBass }
	}
    }
      #} )
    $(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'codaLyrics) codaLyrics)
       #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \codaLyrics
    }
      #} )
  >>
  \layout { 
    ragged-bottom = ##t ragged-right = \codaRaggedRight
  }
}
#} )

\include \midiIncludeFile
