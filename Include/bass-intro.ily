%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \introKey \whatKey {
       \introChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	% Don't transpose bass line
	  \bassIntro
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Don't transpose bass line
      \bassIntro
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
     \transpose \introKey \whatKey {
       \introChords
	}
      }
      }
    \new Staff \with {midiInstrument = "brass section"} {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	% Don't transpose bass line
	  \bassIntro
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Don't transpose bass line
      \bassIntro
      }
      #} )
  >>
  \midi{}
}
