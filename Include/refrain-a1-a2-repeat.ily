\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
     \transpose \refrainKey \whatKey {
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
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyricsPreOne
      <<
      {
      \refrainLyricsOne
      \refrainLyricsRepOne
      \refrainLyricsRepTwo
      \refrainLyricsBridge
      \refrainLyricsThree
      \refrainLyricsRepThree
      }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsTwo }
      >>
    }
  >>
  \layout { ragged-bottom = ##t }
}

\score {
  \tripletFeel 8
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyricsPreOne
      <<
      {
      \refrainLyricsOne
      \refrainLyricsRepOne
      \refrainLyricsRepTwo
      \refrainLyricsBridge
      \refrainLyricsThree
      \refrainLyricsRepThree
      }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsTwo }
      >>
    }
  >>
  \midi{}
}
