%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Make You Feel My Love"
  subtitle = \instrument
  poet = ""
  composer = "Bob Dylan"
  copyright = "© 1997 Special Rider Music"
}

straightEighths = ##t

verseLyricsOne = \lyricmode {
  When the rain is blowing in your face,
  and the whole world is on your case,
  I could offer you a warm embrace
}

verseLyricsEnd = \lyricmode {
  To make you feel my love.
}

verseLyricsTwo = \lyricmode {
  When_the evening shadows and the stars appear,
  And there is noone there to dry your tears,
  I could hold you for a million years
}

bridgeLyricsOne = \lyricmode {
  I know you haven't made your mind up yet,
  but I would never do you wrong.
  I've known it from the moment that we met;
  no doubt in my mind where you belong.
}

verseLyricsThree = \lyricmode {
  I'd go hungry, I'd go black and blue,
  I'd go crawling down the avenue.
  No, there's nothing that I wouldn't do
}

bridgeLyricsTwo = \lyricmode {
 The storms are raging on the rolling sea
 And on the highway of regret
 The winds of change are blowing wild and free
 You ain't seen nothing like me yet
}

verseLyricsFour = \lyricmode {
  I could make you happy, make your dreams come true
  Nothing that I wouldn't do
  Go to the ends of the Earth for you
}

verseChords = \chordmode {
  bf1 f1/a af1 ef1 ef1:m bf1 c2:7 ef2/f bf1
}

bridgeChords = \chordmode {
  ef1 bf1/f gf2:5+ ef2/g bf1 ef1 bf1 c1:7 f1
}

codaChords = \chordmode {
  c2:7 ef2/f bf1
}

refrainMelody = \relative f' {
  \time 4/4
  \key bf \major
  \clef \whatClef
  \tempo "Slow, straight eighths" 4 = 76

  \sect "Intro"
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break

  \sect "Verse"
  \bar ".|:-||"
  \repeat volta 2 {
    r4 f8 f8 f8 f8 ef8 d8 | f8 bf,4 bf8~ bf2 |
    r4 f'8 f8 f8 f8 ef8 d8 | ef8 bf4 bf8~ bf2 |
    \break
    r4 ef8 ef8 ef8 d8 d8 c8 | d8 bf4 bf8~ bf2 |
    r8 bf8 bf8 d8 bf8 bf4 bf8~ | bf2. r4 |
    \break
  }
  
  \sect "Bridge"
  \repeat volta 2 {
    r8 bf'8 bf8 bf8 bf8 bf8 a8 g8 | f4 bf,8 bf8~ bf4 r4 |
    r8 d8 d8 ef8 d8 c8 c8 bf8 | bf2 r2 |
    \break
    r8 bf'8 bf8 bf8 c8 bf8 a8 g8 | f8 bf,4 bf8~ bf2 |
    d8 d8 d8 d8 d8 c8 bf8 c8 | c1 |
    \bar "||"
    \break
   \sect "Verse"
   r4 f8 f8 f8 f8 ef8 d8 | f8 bf,4 bf8~ bf2 |
    r4 f'8 f8 f8 f8 ef8 d8 | ef8 bf4 bf8~ bf2 |
    \break
    r4 ef8 ef8 ef8 d8 d8 c8 | d8 bf4 bf8~ bf2 |
    r8 bf8 bf8 d8 bf8 bf4 bf8~ | bf2. r4 |
    \break
  }
  \alternative {
    {
      \sect "Solo"
      \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
      \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
      \break
      }
    {
      \sect "Coda"
      r8 bf8^\markup \italic "rit." bf8 d8 bf8 bf4 bf8~ | bf2\fermata r2 |
      }
  }

  \bar "|."
  \pageBreak
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\score {
  <<
    { \context ChordNames 
      {
	\override ChordName.font-size = #+3
	\override ChordName.font-series = #'bold
	\set chordChanges = ##f
	\transpose bf \whatKey {
	  \verseChords
	  \verseChords
	  \bridgeChords
	  \verseChords
	  \verseChords
	  \codaChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \override Score.Clef.break-visibility = #all-invisible
      \override Score.KeySignature.break-visibility = #all-invisible
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose bf \whatKey {
	  \refrainMelody
	}
      }
    }
  >>
   \midi{} \layout { }
}

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Bridge 1 } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Bridge 2 } }
   \vspace #4
   \line { \large { Verse 4 } }
   \vspace #4
   \line { \large { Coda } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { When the rain is blowing in your face } }
   \line { \large { And the whole world is on your case } }
   \line { \large { I could offer you a warm embrace } }
   \line { \large { To make you feel my love } }
   \vspace #1
   \line { \large { When the evening shadows and the stars appear } }
   \line { \large { And there is no one there to dry your tears } }
   \line { \large { I could hold you for a million years } }
   \line { \large { To make you feel my love } }
   \vspace #1
   \line { \large { I know you haven't made your mind up yet } }
   \line { \large { But I will never do you wrong } }
   \line { \large { I've known it from the moment that we met } }
   \line { \large { No doubt in my mind where you belong } }
   \vspace #1
   \line { \large { I'd go hungry, I'd go black and blue } }
   \line { \large { I'd go crawling down the avenue } }
   \line { \large { No, there's nothing that I wouldn't do } }
   \line { \large { To make you feel my love } }
   \vspace #1
   \line { \large { The storms are raging on the rolling sea } }
   \line { \large { And on the highway of regret } }
   \line { \large { The winds of change are blowing wild and free } }
   \line { \large { You ain't seen nothing like me yet } }
   \vspace #1
   \line { \large { I could make you happy, make your dreams come true } }
   \line { \large { Nothing that I wouldn't do } }
   \line { \large { Go to the ends of the Earth for you } }
   \line { \large { To make you feel my love } }
   \vspace #1
   \line { \large { To make you feel my love } }
   }
}
