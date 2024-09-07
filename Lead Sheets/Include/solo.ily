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
      #(set-accidental-style 'modern)
      \set Score.voltaSpannerDuration = #(ly:make-moment 1/2)
      \override Score.Clef.break-visibility = #all-invisible
      \override Score.KeySignature.break-visibility = #all-invisible
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \soloKey \whatKey {
	  \soloMelody
	  }
	}
    }
  >>
  \midi{} \layout { ragged-bottom = ##t ragged-right = ##f }
}
