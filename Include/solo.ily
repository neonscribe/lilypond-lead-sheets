%% -*- Mode: LilyPond -*-

midiKey = \soloKey
midiChords = \soloChords
midiMelody = \soloMelody

midiIncludeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/midi.ily"
  "../Include/nothing.ily")

$(if (not (and (defined? 'midiOnly) midiOnly))
  #{
\new Score \with {
   \remove System_start_delimiter_engraver
}
<<
   $(if (and (defined? 'soloAltChords) soloAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+2.5
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
      \override ChordName.font-size = #+2.5
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
      \override Staff.StaffSymbol.transparent = ##t
      \override Staff.Clef.stencil = ##f
      \override Staff.TimeSignature.stencil = ##f
      \override Staff.BarLine.stencil = ##f
      \override Staff.StaffSymbol.line-count = #0
      \improvisationOn
      \magnifyMusic 0.63 \soloKicksOverTime
      \improvisationOff
    }
    #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \soloKey \whatKey {
      \soloMelody
      } }
      #} )
 \new StaffGroup \with {
    systemStartDelimiter = #'SystemStartBar
}
<<
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
      \noDoubleAccidentalMusic \transpose \soloKey \bassKey { \soloBass }
	}
    }
      #} )
    $(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'soloLyrics) soloLyrics)
      (if (and (defined? 'soloLyricsTwo) soloLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\soloLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
       #(if (and (defined? 'soloTwoLanguages) soloTwoLanguages)
	 #{ \emphasize \soloLyricsTwo #}
	 #{ \soloLyricsTwo #} ) }
       #(if (and (defined? 'soloLyricsThree) soloLyricsThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \soloLyricsThree }
	 #} )
       #(if (and (defined? 'soloLyricsFour) soloLyricsFour)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \soloLyricsFour }
	 #} )
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
      \context Voice = "voiceMelodyTwo" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus solo melody two")
	\noDoubleAccidentalMusic \transpose \soloKey \whatKey {
	  \soloMelodyTwo
	  }
	}
    }
      #} )
    $(if (and (defined? 'soloLyricsVoiceTwo) soloLyricsVoiceTwo)
      (if (and (defined? 'soloLyricsTwoVoiceTwo) soloLyricsTwoVoiceTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyTwo" 
      {
	<<
	\soloLyricsVoiceTwo
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyTwo"
       #(if (and (defined? 'soloTwoLanguagesVoiceTwo) soloTwoLanguagesVoiceTwo)
	 #{ \emphasize \soloLyricsTwoVoiceTwo #}
	 #{ \soloLyricsTwoVoiceTwo #} ) }
       #(if (and (defined? 'soloLyricsThreeVoiceTwo) soloLyricsThreeVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \soloLyricsThreeVoiceTwo }
	 #} )
       #(if (and (defined? 'soloLyricsFourVoiceTwo) soloLyricsFourVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \soloLyricsFourVoiceTwo }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyTwo"
    {
      \soloLyricsVoiceTwo
    }
      #} ) )
    $(if (and (defined? 'soloMelodyThree) soloMelodyThree)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelodyThree" \with { \consists #ambitus-engraver } { 
	\noDoubleAccidentalMusic \transpose \soloKey \whatKey {
	  \soloMelodyThree
	  }
	}
    }
      #} )
    $(if (and (defined? 'soloLyricsVoiceThree) soloLyricsVoiceThree)
      (if (and (defined? 'soloLyricsTwoVoiceThree) soloLyricsTwoVoiceThree)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyThree" 
      {
	<<
	\soloLyricsVoiceThree
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyThree"
       #(if (and (defined? 'soloTwoLanguagesVoiceThree) soloTwoLanguagesVoiceThree)
	 #{ \emphasize \soloLyricsTwoVoiceThree #}
	 #{ \soloLyricsTwoVoiceThree #} ) }
       #(if (and (defined? 'soloLyricsThreeVoiceThree) soloLyricsThreeVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \soloLyricsThreeVoiceThree }
	 #} )
       #(if (and (defined? 'soloLyricsFourVoiceThree) soloLyricsFourVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \soloLyricsFourVoiceThree }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyThree"
    {
      \soloLyricsVoiceThree
    }
      #} ) )
  >>
 >>
#} )

\include \midiIncludeFile
