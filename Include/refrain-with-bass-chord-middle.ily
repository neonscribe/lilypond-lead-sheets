%% -*- Mode: LilyPond -*-

$(if (not (and (defined? 'midiOnly) midiOnly))
  #{
\score {
  <<
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus refrain-with-bass-chord-middle")
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    { \context ChordNames 
      {
      \override ChordName.font-size = #+2.5
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    $(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'refrainLyrics) refrainLyrics)
      #{ 
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
      #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \removeWithTag LLS \transpose \refrainKey \bassKey { \refrainBass }
      }
      #} )
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \refrainKey \bassKey { \refrainBass }
	}
    }
  >>
  \layout { 
    ragged-bottom = ##t ragged-right = ##f 
  }
}
#} #{
\score {
  \tripletFeel 8
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
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'refrainLyrics) refrainLyrics)
      #{ 
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
      #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      %% Only transpose bass line in the same octave
      \removeWithTag LLS \transpose \refrainKey \bassKey { \refrainBass }
      }
      #} )
    \new Staff \with {midiInstrument = "brass section"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \refrainKey \bassKey { \refrainBass }
	}
    }
  >>
  \midi{}
}
#} )
