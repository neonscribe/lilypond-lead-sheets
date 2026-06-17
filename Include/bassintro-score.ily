%% -*- Mode: LilyPond -*-

\new Score \with {
   \remove System_start_delimiter_engraver
}
<<
   #(if (and (defined? 'introAltChords) introAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+2.5
      #(if (and (defined? 'altChordSize) AltChordSize)
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
      \override ChordName.font-size = #+2.5
      #(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \introKey \whatKey {
       \introChords
	}
      }
      }
    #(if (and (defined? 'introKicksOverTime) introKicksOverTime)
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
      \magnifyMusic 0.63 \introKicksOverTime
      \improvisationOff
    }
    #} )
    #(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \introKey \bassKey {
      \bassIntro
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
	#(ly:message "ambitus intro")
	\noDoubleAccidentalMusic \transpose \introKey \bassKey {
	  \bassIntro
	  }
	}
    }
    #(if (and (defined? 'introBass) introBass)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \noDoubleAccidentalMusic \transpose \introKey \bassKey { \introBass }
	}
    }
      #} )
    #(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'introLyrics) introLyrics)
      (if (and (defined? 'introLyricsTwo) introLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\introLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
       #(if (and (defined? 'introTwoLanguages) introTwoLanguages)
	 #{ \emphasize \introLyricsTwo #}
	 #{ \introLyricsTwo #} ) }
       #(if (and (defined? 'introLyricsThree) introLyricsThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \introLyricsThree }
	 #} )
       #(if (and (defined? 'introLyricsFour) introLyricsFour)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \introLyricsFour }
	 #} )
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
    #(if (and (defined? 'bassIntroTwo) bassIntroTwo)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelodyTwo" \with { \consists #ambitus-engraver } { 
	#(ly:message "ambitus intro melody two")
	\noDoubleAccidentalMusic \transpose \introKey \bassKey {
	  \bassIntroTwo
	  }
	}
    }
      #} )
    #(if (and (defined? 'introLyricsVoiceTwo) introLyricsVoiceTwo)
      (if (and (defined? 'introLyricsTwoVoiceTwo) introLyricsTwoVoiceTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyTwo" 
      {
	<<
	\introLyricsVoiceTwo
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyTwo"
       #(if (and (defined? 'introTwoLanguagesVoiceTwo) introTwoLanguagesVoiceTwo)
	 #{ \emphasize \introLyricsTwoVoiceTwo #}
	 #{ \introLyricsTwoVoiceTwo #} ) }
       #(if (and (defined? 'introLyricsThreeVoiceTwo) introLyricsThreeVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \introLyricsThreeVoiceTwo }
	 #} )
       #(if (and (defined? 'introLyricsFourVoiceTwo) introLyricsFourVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \introLyricsFourVoiceTwo }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyTwo"
    {
      \introLyricsVoiceTwo
    }
      #} ) )
    #(if (and (defined? 'bassIntroThree) bassIntroThree)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelodyThree" \with { \consists #ambitus-engraver } { 
	\noDoubleAccidentalMusic \transpose \introKey \bassKey {
	  \bassIntroThree
	  }
	}
    }
      #} )
    #(if (and (defined? 'introLyricsVoiceThree) introLyricsVoiceThree)
      (if (and (defined? 'introLyricsTwoVoiceThree) introLyricsTwoVoiceThree)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyThree" 
      {
	<<
	\introLyricsVoiceThree
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyThree"
       #(if (and (defined? 'introTwoLanguagesVoiceThree) introTwoLanguagesVoiceThree)
	 #{ \emphasize \introLyricsTwoVoiceThree #}
	 #{ \introLyricsTwoVoiceThree #} ) }
       #(if (and (defined? 'introLyricsThreeVoiceThree) introLyricsThreeVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \introLyricsThreeVoiceThree }
	 #} )
       #(if (and (defined? 'introLyricsFourVoiceThree) introLyricsFourVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \introLyricsFourVoiceThree }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyThree"
    {
      \introLyricsVoiceThree
    }
      #} ) )
  >>
  >>
