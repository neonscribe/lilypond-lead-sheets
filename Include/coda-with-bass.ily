%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose bf \whatKey {
       \codaChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose bf \whatKey {
	  \codaMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \codaLyrics
    }
    #(if showBassLine #{
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	  \codaBassLine
	}
    }
      #} )
  >>
  \midi{} \layout { ragged-bottom = ##t ragged-right = ##f }
}
