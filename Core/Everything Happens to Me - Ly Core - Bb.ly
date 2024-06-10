%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Everything Happens to Me"
  subtitle = \instrument
  poet = "Tom Adair"
  composer = "Matt Dennis"
  copyright = "© 1941 Dorsey Bros. Music"
}

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

refrainLyricsPre = \lyricmode {
I
}

refrainLyricsOne = \lyricmode {
make a date for golf, and you can bet your life it rains.
I try to give a par -- ty, and the guy up -- stairs com -- plains.
I guess I'll go through life, just catch -- ing colds and miss -- ing trains, __
}

refrainLyricsRepOne = \lyricmode {
Ev  -- 'ry -- thing hap -- pens to me. __ I
}

refrainLyricsTwo = \lyricmode {
nev -- er miss a thing. I've had the meas -- les and the mumps.
And ev -- 'ry time I play an ace, my part -- ner al -- ways trumps.
I guess I'm just a fool who nev -- er looks be -- fore he jumps.
}

refrainLyricsRest = \lyricmode {
Ev  -- 'ry -- thing hap -- pens to me. __
At first my heart thought you could break this jinx for me,
That love would turn the trick to end des -- pair.
But now I just can't fool this head that thinks for me.
I've mort -- gaged all my cas -- tles in the air.
I've
}

refrainLyricsThree = \lyricmode {
tel -- e -- graphed and phoned and sent an Air -- mail Spe -- cial, too.
Your ans -- wer was good -- bye and there was e -- ven post -- age due.
I fell in love just once, and then it had to be with you.
}

refrainLyricsCoda = \lyricmode {
Ev -- 'ry -- thing hap -- pens to me. __
}

refrainChords = \chordmode {
  s8

  c2:m7 f2:7 d2:m7 df2:dim7 c2:m7 f2:7 d2:m7.5- g2:7
  b2:dim7 c2:m7.5- d2:m7 g2:7
  
  c2:m7 f2:7 bf2:maj7 g2:7.9-
  
  c2:m7 f2:7 bf1:6
  
  f2:m7 bf2:7.9+ ef2:maj7 c2:7.9- f2:m7 bf2:7 ef1:maj7
  e2:m7 a2:7.9+ d1:maj7 g2:m7 c2:7 c2:m7 f2:7
  
  c2:m7 f2:7 bf2:6
  \chordInsideParens{ g2:7.9- }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 60
  
  \xTextMark \markup{ \bold \box "A" }

  \partial 8 g8 |

  \segnoSign
  
  \repeat volta 2 {
  d'8 d8 d8 ef8 c8 c8 bf8 a8 | c8 c8 c8 d8 bf4. g8 | bf8 bf8 bf8 c8 a8 a8 g8 f8 |
  af8 af8 af8 bf8 g4 r8 d8 | f8 f8 f8 g8 ef8 fs8 a8 bf8 |
  c8 c8 \tuplet 3/2 { c8 c8 a8~ } a2 \textToCoda |
  } \alternative { {
    g8 g8 g8 a8~ a8 a8 a8 f8~ | f2. r8 g8 |
  } {
    g8 g8 g8 a8~ a8 a8 a8 bf8~ |
  } }
    
  bf2. r8 bf8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "B" }
  
  bf8 bf8 bf8 bf8 df8 df8 cf8 df8 | bf8 bf8 bf2 r8 bf8 | bf8 bf8 bf8 bf8 cf8 gf8 f8 ef8 |
  bf'2. r8 bf8 | a8 a8 a8 a8 c8 c8 bf8 c8 | a8 a8 a2 r8 a8 |
  bf8 bf8 bf8 bf8 bf8 g8 a8 bf8 | c2. r8
  \dalSegno
  g8 |
  
  \bar "||"

  \textCodaBreak

  g8 g8 g8 d'8~ d8 d8 d8 bf8~ | bf1 |
  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-three-coda.ily"
