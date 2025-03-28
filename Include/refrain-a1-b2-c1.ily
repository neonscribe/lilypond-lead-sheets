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
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody"
      {
	\refrainLyricsA
	<<
	  \refrainLyricsBOne
	  \new Lyrics {
	    \set associatedVoice = "voiceMelody"
	    \refrainLyricsBTwo }
	>>
	\refrainLyricsC
      }
    }
    >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

\include "../Include/refrain-midi.ily"
