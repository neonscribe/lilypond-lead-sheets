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
     \transpose \bassLineKey \bassKey {
       \bassLineChords
	}
      }
      }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \removeWithTag LLS \transpose \bassLineKey \bassKey { \bassLineMelody }
      }
      #} )
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus bass-line")
      %% Only transpose bass line in the same octave
      \transpose \bassLineKey \bassKey { \bassLineMelody }
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
     \transpose \bassLineKey \bassKey {
       \bassLineChords
	}
      }
      }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \removeWithTag LLS \transpose \bassLineKey \bassKey { \bassLineMelody }
      }
      #} )
    \new Staff \with {midiInstrument = "brass section"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \bassLineKey \bassKey { \bassLineMelody }
	}
    }
  >>
  \midi{}
}
#} )
