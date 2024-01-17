%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose bf \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
    #(if showBassLine #{
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	  \refrainBassLine
	}
    }
      #}
    )
  >>
  \midi{} \layout { ragged-bottom = ##t }
}
