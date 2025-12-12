%% -*- Mode: LilyPond -*-

codaRaggedRight =
#(if (and (defined? 'codaRaggedRight) codaRaggedRight)
  #t
  #f)

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \codaKey \whatKey {
       \codaChords
	}
      }
      }
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
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \codaKey \whatKey {
      \codaMelody
      } }
      #} )
    $(if (and (defined? 'codaLyrics) codaLyrics)
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

midiKey = \codaKey
midiChords = \codaChords
midiMelody = \codaMelody

\include "../Include/midi.ily"
