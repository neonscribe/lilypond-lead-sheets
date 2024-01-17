%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \endingKey \whatKey {
       \endingChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \endingKey \whatKey {
	  \endingMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \endingLyrics
    }
  >>
  \midi{} \layout { ragged-bottom = ##t ragged-right = ##f }
}
