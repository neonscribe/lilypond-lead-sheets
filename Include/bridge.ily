%% -*- Mode: LilyPond -*-

midiKey = \bridgeKey
midiChords = \bridgeChords
midiMelody = \bridgeMelody

midiIncludeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/midi.ily"
  "../Include/nothing.ily")

$(if (not (and (defined? 'midiOnly) midiOnly))
  #{
\score {
$(if (not (and (defined? 'midiOnly) midiOnly))
  #{
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \bridgeKey \whatKey {
       \bridgeChords
	}
      }
      }
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus bridge")
	\noDoubleAccidentalMusic \transpose \bridgeKey \whatKey {
	  \bridgeMelody
	  }
	}
    }
    $(if (and (defined? 'bridgeLyrics) bridgeLyrics)
       #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \bridgeLyrics
    }
      #} )
  >>
  #} #{
  \midi{}
  \layout { 
    ragged-bottom = ##t ragged-right = ##f 
  }
  #} )
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

\include \midiIncludeFile
