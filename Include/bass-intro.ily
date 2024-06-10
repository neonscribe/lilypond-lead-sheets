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
      \override Score.Clef.break-visibility = #all-invisible
      \override Score.KeySignature.break-visibility = #all-invisible
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \refrainKey \bassKey { \bassIntro }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \removeWithTag LLS \transpose \refrainKey \bassKey { \bassIntro }
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
      \override Score.Clef.break-visibility = #all-invisible
      \override Score.KeySignature.break-visibility = #all-invisible
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \refrainKey \bassKey { \bassIntro }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \removeWithTag LLS \transpose \refrainKey \bassKey { \bassIntro }
      }
      #} )
  >>
  \midi{}
}
