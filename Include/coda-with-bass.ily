%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \codaKey \whatKey {
       \codaChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \codaKey \whatKey {
	  \codaMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \noDoubleAccidentalMusic \transpose \codaKey \whatKey {
      \codaMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \codaLyrics
    }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \refrainKey \bassKey { \codaBass }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \transpose \refrainKey \bassKey { \codaBass }
      }
      #} )
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

\score {
  \tripletFeel 8
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \codaKey \whatKey {
       \codaChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \codaKey \whatKey {
	  \codaMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \noDoubleAccidentalMusic \transpose \codaKey \whatKey {
      \codaMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \codaLyrics
    }
    \new Staff \with {midiInstrument = "brass section"} {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \refrainKey \bassKey { \codaBass }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \transpose \refrainKey \bassKey { \codaBass }
      }
      #} )
  >>
  \midi{}
}
