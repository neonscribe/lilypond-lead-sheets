%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"
\include "../Include/even-brace.ily"

\header {
  title = "Give Me the Simple Life"
  subtitle = \instrument
  poet = "Harry Ruby"
  composer = "Rube Bloom"
  copyright = "© 1945 WB Music Corp."
}

verseLyrics = \lyricmode {
Folks are blessed who make the best of ev -- 'ry day,
Liv -- ing by their own phi -- lo -- so -- phy.
Ev -- 'ry -- one be -- neath the sun must find a way __
And I have found the on -- ly way for me.
}

verseChords = \chordmode {
  ef2:6.9 bf2:9.3.5+ ef2:6 f4:m7 bf4:7.9-
  ef2:6.9 bf2:9.5+ ef2:maj9 ef2:6 g2:m6 a4:m7.5- d4:7.5+
  g2:m6.9 c2:9.11+ f2:m f4:maj7 f4:7 bf2:sus9 bf2:9
}

verseKey = ef

verseMelody = \relative f'' {
  \time 2/2
  \key \verseKey \major
  \clef \whatClef

  \xTextMark \markup{ "Verse" }

  \tempo "Medium"

  c8 c8 c8 bf8 c8 c8 c8 bf8 | g8 g8 g2. |
  c8 c8 c8 bf8 c8 c8 c8 bf8 | g1 | d'8 d8 d8 bf8 d8 d8 d8 bf8 |
  a8 a8 a4~ a4. g8 | c8 c8 c8 af8 c8 c8 c8 af8 | f1 |
  \bar "$"
}

refrainLyricsAOneOne = \lyricmode {
  I don't be -- lieve in fret -- tin' __ and griev -- in',
  Why mess __ a -- round with strife?
  I __ nev -- er was cut out to step and strut out,
}

refrainLyricsAOneTwo = \lyricmode {
  Liv -- ing I find is best __
  when your mind is keen __ as a carv -- ing knife. __
  I'm cra -- zy a -- bout sleep, 
  can't __ do with -- out sleep,
}

refrainLyricsTitle = \lyricmode {
  Give __ me the sim -- ple life! __
}

refrainLyricsATwoOne = \lyricmode {
Some __ find it pleas -- ant din -- ing on pheas -- ant.
Those __ things roll off my knife. __
Just serve __ me to -- ma -- toes and __ mashed po -- ta -- toes,
}

refrainLyricsATwoTwo = \lyricmode {
I __ love to whit -- tle and play a lit -- tle
tune __ on a ten cent fife.
I don't __ aim to wor -- ry, hus -- tle or hur -- ry,
}

refrainLyricsBOne = \lyricmode {
A cot -- tage small is all I'm af -- ter,
Not one that's spa -- cious and wide;
A house that rings with joy and laugh -- ter
And the ones you love in -- side. __
}

refrainLyricsBTwo = \lyricmode {
I greet the dawn when I a -- wak -- en,
the sky is clear up a -- bove.
I like my scram -- bled eggs and ba -- con
served by some -- one that I love. __
}

refrainLyricsAThreeOne = \lyricmode {
Some __ like the high road, I __ like the low road,
Free __ from the care and strife. __
Sounds corn -- y and seed -- y, but __ yes, in -- deed -- y;
}

refrainLyricsAThreeTwo =
#(if (and (defined? 'femaleSinger) femaleSinger)
  #{
\lyricmode {
Life __ could be thril -- ling now that I’m will -- ing
To be a farm -- ers wife
A gar -- den of ros -- es, kids __ run -- ny no -- ses
}
  #}
  #{
\lyricmode {
Life __ could be thrill -- ing with __ one who's will -- ing
to __ be a farm -- er's wife.
Kids call -- ing me pap -- py would __ make me hap -- py;
}
  #}
  )

refrainChords = \chordmode {
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 g2:7 c2:m bf4:m7 ef4:7
  af2 a2:dim7 ef2/bf c2:7 f2:m7 bf2:7 g2:m7 c2:7

  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 g2:7 c2:m bf4:m7 ef4:7
  af2 a2:dim7 ef2/bf c2:7 f2:m7 bf2:7 ef2 c2:7.9+.13-
  
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7 ef2:maj7 af2:9.11+
  d2:m7.5- g2:7.9- c1:m7 f1:13 bf2 c2:7.9+.13-

  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 g2:7 c2:m bf4:m7 ef4:7
  af2 a2:dim7 ef2/bf c2:7 f2:m7 bf2:7 ef2 
  \chordInsideParens{ c2:7.9+.13- }
}

refrainKey = ef

refrainMelody = \relative f'' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Up" 4 = 150

  \set Score.currentBarNumber = #1

  \xTextMark \markup{ "Refrain" \bold \box "A1" }
  
  ef8 ef4 c8 bf8 af4 d8~ | d8 d4 bf8 af8 g4 c8~ | c8 c4 af8 g8 f4 ef8~ |
  ef2 r8 f4 g8~ | g8 g4 ef8 f8 ef4 c'8~ | c8 c4 ef,8 f8 ef4 ef'8~ |
  ef8 ef4 c8 bf8 g4 f8~ | f2. r8 ef'8~ |

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "A2" }

  ef8 ef4 c8 bf8 af4 d8~ |
  d8 d4 bf8 af8 g4 c8~ | c8 c4 af8 g8 f4 ef8~ |
  ef2 r8 f4 g8~ |
  g8 g4 ef8 f8 ef4 c'8~ | c8 c4 ef,8 f8 ef4 ef'8~ |
  ef8 ef4 c8 bf8 g4 ef8~ |
  ef2. ef4 |
  \bar "$"
  \break


  \xTextMark \markup{ \bold \box "B" }
  
  c'4 c4 c8 bf8 af8 c8 | bf4 bf2 ef,4 |
  c'4 c4 c8 bf8 af4 |
  \break
  bf2. ef,4 | af4 af4 af8 g8 f8 af8 | g4 g2 g8 fs8 |
  \break
  g4 f4 ef8 g4 f8~ | f2. r8 ef'8~ |
  \bar "$"
  \break


  \xTextMark \markup{ \bold \box "A3" }
  
  ef8 ef4 c8 bf8 af4 d8~ | d8 d4 bf8 af8 g4 c8~ | c8 c4 af8 g8 f4 ef8~ |
  ef2 r8 f4 g8~ | g8 g4 ef8 f8 ef4 c'8~ | c8 c4 ef,8 f8 ef4 ef'8~ |
  ef8 ef4 c8 bf8 g4 ef8~ | ef2 r2 |


  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
     \transpose ef \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \set Score.voltaSpannerDuration = #(ly:make-moment 1/2)
      \override Score.Clef.break-visibility = #all-invisible
      \override Score.KeySignature.break-visibility = #all-invisible
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose ef \whatKey {
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
      \leftbrace
    <<
     { \refrainLyricsAOneOne }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsAOneTwo }
    >>
    \rightbrace 
      { \dropLyrics \refrainLyricsTitle \doneDropping }
      
      \leftbrace
    <<
     { \refrainLyricsATwoOne }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsATwoTwo }
    >>
    \rightbrace 
      { \dropLyrics \refrainLyricsTitle \doneDropping }
      
      \leftbrace

    <<
     { \refrainLyricsBOne \refrainLyricsAThreeOne }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsBTwo \refrainLyricsAThreeTwo }
    >>
    \rightbrace 
      { \dropLyrics \refrainLyricsTitle \doneDropping }
      


    }

  >>
  \midi{} \layout { }
}

performanceNotes =
\markup {
  \column {
    \vspace #2
    \line { \huge { Verse: rubato vocal with guitar accompaniment } }
    \line { \huge { Stop and count in refrain } }
    \line { \huge { Vocal entire form } }
    \line { \huge { guitar solo A1,A2 clarinet solo A1,A2 } }
    \line { \huge { Vocal entire form, repeat bar 29 and 30 three times } }
    \line { \huge { Stop at 31 on ''give'' a capella until ''life'' } }
  }
}

\include "../Include/notes.ily"
