%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \solosKey \whatKey {
       \solosChords
	}
      }
      }
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	% Transpose bass line only in the same octave
	\transpose \solosKey \bassKey \bassSolos
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Don't transpose bass line
      \removeWithTag LLS \bassSolos
      }
      #} )
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

\score {
  \tripletFeel 8
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \solosKey \whatKey {
       \solosChords
	}
      }
      }
    \new Staff \with {midiInstrument = "brass section"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	% Don't transpose bass line
	  \bassSolos
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Don't transpose bass line
      \removeWithTag LLS \bassSolos
      }
      #} )
  >>
  \midi{}
}
