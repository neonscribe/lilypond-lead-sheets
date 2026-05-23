%% -*- Mode: LilyPond -*-

#(cond ((and (defined? 'leadingEighth) leadingEighth)
	(set! midiChords #{ { \chordmode { \cadenzaOn \partial 8 s8 } \midiChords } #} )
	(set! midiMelody #{ { \relative { \cadenzaOn \partial 8 s8} \midiMelody } #} )))

\score {
  $(if (and (defined? 'bossaRhythm) bossaRhythm)
    #{ \applySwing 16 #'(3 2 2 3)
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"
				 ignoreBarChecks = ##t}
      {
     \transpose \midiKey \whatKey {
       \midiChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      \context Voice = "voiceMelody" { 
	\transpose \midiKey \whatKey {
	  \midiMelody
	  }
	}
    }
  >>
       #}
  (if (not (and (defined? 'straightEighths) straightEighths))
  #{ \tripletFeel 8
       <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
     \transpose \midiKey \whatKey {
       \midiChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"
		      ignoreBarChecks = ##t} {
      \context Voice = "voiceMelody" { 
	\transpose \midiKey \whatKey {
	  \midiMelody
	  }
	}
    }
  >>
     #}
  #{   <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
     \transpose \midiKey \whatKey {
       \midiChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      \context Voice = "voiceMelody" { 
	\transpose \midiKey \whatKey {
	  \midiMelody
	  }
	}
    }
  >>
       #} ))
  \midi{}
}
