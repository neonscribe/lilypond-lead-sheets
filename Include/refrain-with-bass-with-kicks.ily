%% -*- Mode: LilyPond -*-

\score {
  <<
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
      \refrainLyrics
    }
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    \new RhythmicStaff {
      \override Staff.VerticalAxisGroup.staff-staff-spacing =
            #'( (basic-distance . 1) 
                (minimum-distance . 1) 
                (padding . 1) )
        \override Staff.TimeSignature.stencil = ##f
        \override Staff.BarLine.stencil = ##f
        \override Staff.StaffSymbol.line-count = #0
      \improvisationOn
      \magnifyMusic 0.63 \refrainKicksOverTime
      \improvisationOff
    }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	% Don't transpose bass line
	  \refrainBass
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Don't transpose bass line
      \refrainBass
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
      \refrainLyrics
    }
    \new Staff \with {midiInstrument = "brass section"} {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	% Don't transpose bass line
	  \refrainBass
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Don't transpose bass line
      \refrainBass
      }
      #} )
  >>
  \midi{}
}