%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "The Way You Look Tonight"
  subtitle = \instrument
  poet = "Dorothy Fields"
  composer = "Jerome Kern"
  copyright = "© 1936 T.B. Harms Co."
}

refrainLyricsOne = \lyricmode {
Some -- day, when I'm aw -- f'ly low,
When the world is cold,
I will feel a glow just think -- ing of you
And the way you look to -- night.
Oh but you're

With each word your ten -- der -- ness grows,
Tear -- ing my fear a -- part,
And that laugh that wrink -- les your nose
Touch -- es my fool -- ish heart.

Love -- ly,
nev -- er, nev -- er change,
Keep that breath -- less charm,
Won't you please ar -- range it,
'Cause I love you,
Just the way you look to -- night,
}

refrainLyricsTwo = \lyricmode {
love -- ly, with your smile so warm,
And your cheek so soft,
There is noth -- ing for me but to love you,
Just the way you look to -- night.
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  f2:6 d2:m7 g2:m9 c2:7 f2:maj7 d2:m7 g2:m9 c2:7
}

introKey = f

introMelody = \relative g' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef

  \tempo "Med.-Up Swing"

  \xTextMark \markup{ Intro }
  \bar ".|:"

  \repeat volta 2 {
    r4 c4 d2 | r4 a'4 g2 | r4 e4 d2 | r4 a4 g2 |
    \break
  }
}

refrainChords = \chordmode {
  f1:maj7 d1:m7 g1:m7 c1:7
  f2:maj7 ef2:13 d1:7 g1:m7 c1:7
  c1:m7.11 f1:7 bf1:maj7 g2:m7 c2:7
  f2:6 d2:m7 g2:m9 c2:7 f2:maj7 d2:m7

  g2:m9 c2:7

  bf2:m7 ef2:7

  af1:maj7 a1:dim7 bf1:m7 ef1:7 
  af1:maj7 c2:m7 b2:dim7 bf1:m7 ef1:9
  af1:maj7 a1:dim7 bf1:m7 ef1:13
  af1:maj7 df1:maj7 g1:m7.11 c1:7
  
  f1:maj7 d1:m7 g1:m7 c1:7
  f2:maj7 ef2:13 d1:7 g1:m7 c1:7
  c1:m7.11 f1:7 bf1:maj7 g2:m7 c2:7
  f2:6 d2:m7 g2:m9 c2:7 f2:maj7 d2:m7 g2:m9 c2:7
}

refrainKey = f

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \sectStart "A1,A2"

  \bar ".|:"

  \repeat volta 2 {
    c1 | f,1 | g4 a4 bf4 a4 | g1 |
    \break
    a4 bf4 c4 bf4 | a1 | bf4 c4 d4 c4 | bf4 c4 d4 e4 |
    \break
    f1 | f,1 | g4 a4 c4 bf4 | a2 g2 |
    
    <<
      \new Voice
      { \voiceTwo
	\magnifyMusic 1.0 {
	  \override Stem.direction = #UP
	  d'4\rest c4 d2 | d4\rest a'4 g2 | d4\rest e4 d2 |
	}
      }
      { \voiceOne
	\override Stem.direction = #DOWN
	f,1 | e1\rest | e1\rest |
	\revert Stem.direction
      }
      >>
    \oneVoice
  }
  \alternative {
    {
     <<
      \new Voice
      { \voiceTwo
	\magnifyMusic 1.0 {
	  \override Stem.direction = #UP
	  d'4\rest a4 g2 |
	}
      }
      { \voiceOne
	\override Stem.direction = #DOWN
	e4\rest d4 e4 g4 |
	\revert Stem.direction
	}
      >>
     \oneVoice
      }
    {
     <<
      \new Voice
      { \voiceTwo
	\magnifyMusic 1.0 {
	  \override Stem.direction = #UP
	  d'4\rest af4 g2 |
	}
      }
      { \voiceOne
	\override Stem.direction = #DOWN
	e1\rest |
	\revert Stem.direction
	}
      >>
     \oneVoice
     }
  }

  \sect "B"

  c'2 c2 | c2 c2 | c4 ef4 df4 bf4~ | bf1 |
    \break
  bf4 c4 af4 g4~ | g2 af2 | f'1~ | f2. r4 |
    \break
  ef2 ef2 | ef2 ef2 | ef4 f4 df4 c4~ | c1 |
    \break
  bf4 c2 af4 | g2 af2 | c1~ | c2. r4 |

  \sect "C"

  c1 | f,1 | g4 a4 bf4 a4 | g1 |
    \break
  a4 bf4 c4 bf4 | a1 | bf4 c4 d4 c4 | bf4 c4 d4 e4 |
    \break
  f1 | f,1 | g4 a4 c4 bf4 | a2 g2 |
  
    <<
      \new Voice
      { \voiceTwo
	\magnifyMusic 1.0 {
	  \override Stem.direction = #UP
	  d'4\rest c4 d2 | d4\rest a'4 g2 | d4\rest e4 d2 | d4\rest a4 g2 |
	}
      }
      { \voiceOne
	\override Stem.direction = #DOWN
	f1 | e1\rest | e1\rest | e1\rest |
	\revert Stem.direction
      }
      >>
     \oneVoice

  \textToCodaLastTime
  \bar "|."
}

codaLyrics = \lyricmode {
Just the way you look to -- night.
}

codaChords = \chordmode {
  g1:m7 c1:7 f1:6 f1:6
}

codaKey = f

codaMelody = \relative g' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  \tempo "Slow"

  \textCoda
   g4 a4 c4 bf4 | a2 g2 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

\include "../Include/refrain-two-verses-no-note-names.ily"

\markup {
  \vspace #2
}

\include "../Include/coda.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { Intro: band } }
    \line { \huge { Vocal complete form } }
    \line { \huge { Guitar A1 clarinet A2 } }
    \line { \huge { Vocal B C and Coda } }
  }
}

\include "../Include/notes.ily"
