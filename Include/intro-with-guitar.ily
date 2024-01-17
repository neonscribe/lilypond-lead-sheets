%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
     \transpose \introKey \whatKey {
       \introChords
	}
      }
      }
    \new RhythmicStaff {
      \introGuitar
    }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \introKey \whatKey {
	  \introMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \introLyrics
    }
  >>
  \midi{} \layout { ragged-bottom = ##t ragged-right = ##f }
}
