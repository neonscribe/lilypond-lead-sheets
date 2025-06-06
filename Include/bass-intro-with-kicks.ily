%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \introKey \whatKey {
       \introChords
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
      \magnifyMusic 0.63 \introKicksOverTime
      \improvisationOff
    }
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	% Transpose bass line in the same octave
	  \transpose \introKey \bassKey { \bassIntro }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Transpose bass line in the same octave
	  \removeWithTag LLS \transpose \introKey \bassKey { \bassIntro }
      }
      #} )
  >>
  \layout { 
    \context { \Score
	       \remove "System_start_delimiter_engraver" }
    ragged-bottom = ##t ragged-right = ##f }
}

\score {
  \tripletFeel 8
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \introKey \whatKey {
       \introChords
	}
      }
      }
    \new Staff \with {midiInstrument = "brass section"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	% Transpose bass line in the same octave
	  \transpose \introKey \bassKey { \bassIntro }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
	% Transpose bass line in the same octave
	  \removeWithTag LLS \transpose \introKey \bassKey { \bassIntro }
      }
      #} )
  >>
  \midi{}
}
