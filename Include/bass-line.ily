%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \bassLineKey \bassKey {
       \bassLineChords
	}
      }
      }
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus bass-line")
      %% Only transpose bass line in the same octave
      \transpose \bassLineKey \bassKey { \bassLineMelody }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \removeWithTag LLS \transpose \bassLineKey \bassKey { \bassLineMelody }
      }
      #} )
  >>
  \layout { 
    ragged-bottom = ##t ragged-right = ##f 
  }
}

\score {
  \tripletFeel 8
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \bassLineKey \bassKey {
       \bassLineChords
	}
      }
      }
    \new Staff \with {midiInstrument = "brass section"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \bassLineKey \bassKey { \bassLineMelody }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \removeWithTag LLS \transpose \bassLineKey \bassKey { \bassLineMelody }
      }
      #} )
  >>
  \midi{}
}
