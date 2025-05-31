%% -*- Mode: LilyPond -*-

\score {
 <<
   $(if (and (defined? 'outroAltChords) outroAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'altChordSize) AltChordSize)
	#{ \override ChordName.font-size = \altChordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \outroKey \whatKey {
       \outroAltChords
	}
      }
      }
    #} )
    { \context ChordNames = "StdChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \outroKey \whatKey {
       \outroChords
	}
      }
      }
    $(if (and (defined? 'outroKicksOverTime) outroKicksOverTime)
      #{
    \new RhythmicStaff {
      \override Staff.VerticalAxisGroup.staff-staff-spacing =
            #'( (basic-distance . 1) 
                (minimum-distance . 1) 
                (padding . 1) )
        \override Staff.TimeSignature.stencil = ##f
        \override Staff.BarLine.stencil = ##f
        \override Staff.StaffSymbol.line-count = #0
      \improvisationOn
      \magnifyMusic 0.63 \outroKicksOverTime
      \improvisationOff
    }
    #} )
    \new Staff 
    {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \outroKey \whatKey {
	  \outroMelody
	  }
	}
    }
    $(if (and (defined? 'outroBass) outroBass)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \outroKey \bassKey { \outroBass }
	}
    }
      #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \outroKey \whatKey {
      \outroMelody
      } }
      #} )
    $(if (and (defined? 'outroLyrics) outroLyrics)
      (if (and (defined? 'outroLyricsTwo) outroLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\outroLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \outroLyricsTwo }
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \outroLyrics
    }
      #} ) )
    $(if (and (defined? 'outroMelodyTwo) outroMelodyTwo)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \outroKey \whatKey {
	  \outroMelodyTwo
	  }
	}
    }
      #} )
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

midiKey = \outroKey
midiChords = \outroChords
midiMelody = \outroMelody

\include "../Include/midi.ily"
