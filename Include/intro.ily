%% -*- Mode: LilyPond -*-

\score {
 <<
   $(if (and (defined? 'introAltChords) introAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'altChordSize) AltChordSize)
	#{ \override ChordName.font-size = \altChordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \introKey \whatKey {
       \introAltChords
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
     \transpose \introKey \whatKey {
       \introChords
	}
      }
      }
    $(if (and (defined? 'introKicksOverTime) introKicksOverTime)
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
      \magnifyMusic 0.63 \introKicksOverTime
      \improvisationOff
    }
    #} )
    \new Staff 
    {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \introKey \whatKey {
	  \introMelody
	  }
	}
    }
    $(if (and (defined? 'introBass) introBass)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \introKey \bassKey { \introBass }
	}
    }
      #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \introKey \whatKey {
      \introMelody
      } }
      #} )
    $(if (and (defined? 'introLyrics) introLyrics)
      (if (and (defined? 'introLyricsTwo) introLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\introLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \introLyricsTwo }
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \introLyrics
    }
      #} ) )
    $(if (and (defined? 'introMelodyTwo) introMelodyTwo)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \introKey \whatKey {
	  \introMelodyTwo
	  }
	}
    }
      #} )
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

midiKey = \introKey
midiChords = \introChords
midiMelody = \introMelody

\include "../Include/midi.ily"
