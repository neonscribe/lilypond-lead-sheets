%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \soloKey \whatKey {
       \soloChords
	}
      }
      }
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \soloKey \whatKey {
	  \soloMelody
	  }
	}
    }
  >>
  \midi{} \layout { ragged-bottom = ##t ragged-right = ##f }
}
