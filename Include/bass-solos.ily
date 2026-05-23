%% -*- Mode: LilyPond -*-

$(if (not (and (defined? 'midiOnly) midiOnly))
  #{
\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \solosKey \bassKey {
       \solosChords
	}
      }
      }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Don't transpose bass line
      \removeWithTag LLS \bassSolos
      }
      #} )
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	% Transpose bass line only in the same octave
	\transpose \solosKey \bassKey \bassSolos
	}
    }
  >>
  \layout { 
    ragged-bottom = ##t ragged-right = ##f 
  }
}
#}
#{
\score {
  \tripletFeel 8
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \solosKey \bassKey {
       \solosChords
	}
      }
      }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Don't transpose bass line
      \removeWithTag LLS \bassSolos
      }
      #} )
    \new Staff \with {midiInstrument = "brass section"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	% Don't transpose bass line
	  \bassSolos
	}
    }
  >>
  \midi{}
}
#} )
