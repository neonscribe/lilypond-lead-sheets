%% -*- Mode: LilyPond -*-

$(if (not (and (defined? 'midiOnly) midiOnly))
  #{
\score {
  <<
    { \context ChordNames \with {
	\consists "Bar_engraver"
      }
      {
	\override BarLine.bar-extent = #'(-2 . 2)
	\override ChordName.font-size = #+2.5
	$(if (and (defined? 'chordSize) chordSize)
	  #{ \override ChordName.font-size = \chordSize #} )
	\override ChordName.font-series = #'bold
      \set chordChanges = ##f
	\transpose \refrainKey \whatKey {
	  \refrainChords
	}
      }
      }
  >>
  \layout { 
    \context {
      \Score
      forbidBreakBetweenBarLines = ##f
    }
    ragged-bottom = ##t ragged-right = ##f
  }
}
#} #{
\score {
  $(if (and (defined? 'bossaRhythm) bossaRhythm)
    #{ \applySwing 16 #'(3 2 2 3)
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
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
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
  >>
     #}
  #{   <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
  >>
       #} ))
  \midi{}  
}
#} )

$(if (and (defined? 'headerTitle) headerTitle)
  #{ \header {
	    title = \headerTitle
	    subtitle = \subtitle
	    poet = \headerPoet
	    composer = \headerComposer
	    copyright = \markup \small { \now " " \headerCopyright }
} #} )

headerTitle = ##f
