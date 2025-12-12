%% -*- Mode: LilyPond -*-

\score {
 <<
   $(if (and (defined? 'soloAltChords) soloAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'altChordSize) AltChordSize)
	#{ \override ChordName.font-size = \altChordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \soloKey \whatKey {
       \soloAltChords
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
     \transpose \soloKey \whatKey {
       \soloChords
	}
      }
      }
    $(if (and (defined? 'soloKicksOverTime) soloKicksOverTime)
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
      \magnifyMusic 0.63 \soloKicksOverTime
      \improvisationOff
    }
    #} )
    \new Staff 
    {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus solo")
	\noDoubleAccidentalMusic \transpose \soloKey \whatKey {
	  \soloMelody
	  }
	}
    }
    $(if (and (defined? 'soloBass) soloBass)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \soloKey \bassKey { \soloBass }
	}
    }
      #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \soloKey \whatKey {
      \soloMelody
      } }
      #} )
    $(if (and (defined? 'soloLyrics) soloLyrics)
      (if (and (defined? 'soloLyricsTwo) soloLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\soloLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \soloLyricsTwo }
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \soloLyrics
    }
      #} ) )
    $(if (and (defined? 'soloMelodyTwo) soloMelodyTwo)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus refrain solo melody two")
	\noDoubleAccidentalMusic \transpose \soloKey \whatKey {
	  \soloMelodyTwo
	  }
	}
    }
      #} )
  >>
  \layout { 
    ragged-bottom = ##t ragged-right = ##f 
  }
}

midiKey = \soloKey
midiChords = \soloChords
midiMelody = \soloMelody

\include "../Include/midi.ily"
