%%% piano-chords.ily

\new Score \with {
   \remove System_start_delimiter_engraver
}
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
      \transpose \refrainKey \whatKey {
       \pianoChordVoicings
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
