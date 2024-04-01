%%% piano-chords.ily

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
      \transpose \refrainKey \whatKey {
       \pianoChordNames
	}
      }
      }
    \new PianoStaff
      <<
      \transpose \refrainKey \whatKey {
	\new Staff = "upper" \with {
	  \override TimeSignature.stencil = ##f
	} {
	  \cadenzaOn
	  \pianoChordRightHand
	  \cadenzaOff
	}
      }
      \transpose \refrainKey \whatKey {
	\new Staff = "lower" \with {
	  \override TimeSignature.stencil = ##f
	} {
	  \cadenzaOn
	  \pianoChordLeftHand
	  \cadenzaOff
	  \bar "|"
	}
      }
      >>
    >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}
