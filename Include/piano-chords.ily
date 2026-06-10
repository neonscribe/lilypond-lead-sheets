%%% piano-chords.ily

\score {
$(if (and (defined? 'headerTitle) headerTitle)
  #{ \header {
	    title = \headerTitle
	    subtitle = \subtitle
	    poet = \headerPoet
	    composer = \headerComposer
	    copyright = \markup \small { \now " " \headerCopyright }
} #} )
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+2.5
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


headerTitle = ##f
