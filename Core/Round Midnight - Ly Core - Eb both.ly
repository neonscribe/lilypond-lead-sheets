\include "../Include/lead-sheets.ily"

\header {
  title = "'Round Midnight"
  subtitle = \instrument
  poet = "Bernie Hanighen"
  composer = "Cootie Williams and Thelonious Monk"
  copyright = "© 1944 Advanced Music Corporation"
}

refrainLyricsPre = \lyricmode {
}

refrainLyricsOne = \lyricmode {
  It be -- gins to tell 'round mid -- night, 'round mid -- night,
  I do pret -- ty well 'til af -- ter sun -- down;
  Sup -- per -- time I'm feel -- in' sad,
  But it
}

refrainLyricsRepOne = \lyricmode {
  real -- ly gets bad 'round mid -- night.
}

refrainLyricsTwo = \lyricmode {
  Mem -- 'ries al -- ways start, 'round mid -- night, 'round mid -- night,
  Have -- n't got the heart to stand those mem -- 'ries
  When my heart is still with you
  And old
}

refrainLyricsRest = \lyricmode {
  mid -- night knows it too, When some

  quar -- rel we had needs mend -- ing
  Does it mean that our love is end -- ing?
  Dar -- ling I need you, late -- ly I find
  You're out of my arms and I'm out of my mind!
}

refrainLyricsThree = \lyricmode {
  Let our love take wing, some mid -- night, 'round mid -- night
  Let the an -- gels sing for your re -- turn -- ing,
  Let our love be safe and sound 
  When old
}

refrainLyricsCoda = \lyricmode {
  mid -- night comes a -- round.
}

monkFakeBookRefrainChords = \chordmode {
  ef4:m ef4:m/d ef2:m/df c2:dim7 af4:m9 df4:7
  c1:m7.5-
  b4:m7 e4:7 bf4:m7 ef4:7
  af2:m7 df2:7 ef2:m af2:7.5-

  c2:m7.5- b2:7.5- bf1:7.5-.9-

  c4:m7.5- b4:7.5- bf4:7sus4 ef4:6 ef1:6

  c2:m7.5- b2:7.5- bf1:7.5-
  c2:m7.5- b2:7.5- bf1:7.5-
  af2:m7 f4:1.3-.7 bf4:7 c2:m7.5- f2:7
  df2:9 cf2:9 af2:m7 f4:1.3-.7 bf4:7
  
  c4:m7.5- b4:7.5- bf4:7sus4 ef4:6 ef1:6
}

halLeonardRefrainChords = \chordmode {
  ef4:m ef4:m/d ef2:m/df c2:m7.5- af4:m7 df4:7
  c1:m7.5-
  b4:m7 e4:7 bf4:m7 ef4:7
  af2:m7 df2:7 ef2:m af2:7.5-

  c2:m7.5- b2:7.5- bf1:7.5-.9-

  c4:m7.5- b4:7.5- bf2:7sus4 ef1:6

  c2:m7.5- f2:7.5- bf1:7.5-
  c2:m7.5- f2:7.5- bf1:7.5-
  af2:m7 f4:m7 bf4:7 c2:m7.5- f2:7.5-
  df2:9 cf2:9 af2:m7 f4:m7.11 bf4:7.5-
  
  c4:m7.5- b4:7.5- bf2:7sus4 ef1:6
}

ethanHeinRefrainChords = \chordmode {
  ef4:m ef4:m/d ef2:m/df
  c2:m7.5- af4:m7 df4:7
  c2:m7.5- f2:7
  b4:m7 e4:7 bf4:m7 ef4:7
  af2:m7 df2:7
  gf2:maj7 af2:7.11+
  
  c2:m7.5- f2:7 bf1:7.11+
  
  c4:m7.5- f4:7 af4:m/bf bf4:7 ef1:maj7
  
  c2:m7.5- f2:7.9-  bf1:7
  c2:m7.5- f2:7.9-  bf1:7
  af2:m7 f2:m7.5- c2:m7.5- f2:7.9-
  bf4:m7 ef4:7 af4:m7 df4:7
  gf4:m7 b4:7 f4:m7.5- bf4:7.9-
  
  c4:m7.5- f4:7 af4:m/bf bf4:7 ef1:maj7
}

refrainChords = \monkFakeBookRefrainChords

refrainKey = ef

refrainMelody = \relative c' {
  \time 4/4
  \key \refrainKey \tonality
  \clef \whatClef
  \tempo "Slowly"

  \mark \markup { \box "A" }
  \bar ".|:"
  \repeat volta 2 {
    r4 bf16 ef16 f16 bf16 gf4. bf,8 | ef8 ef4 ef8 bf'8 af4. |
    \break
    r4 ef16 gf16 bf16 df16 c4. gf8 | a4 af4 af4 g4 |
    \break
    r4 af16 cf16 ef16 gf16 f4. cf8 | bf2 r4 ef,8
    \mark \markup { \musicglyph #"scripts.coda" }
    f8 |
    \break
  }
  \alternative {
    {
      \tuplet 3/2 { gf8 f8 gf8 } f4~ f4. ef8 | d8 <bf' bf,>8~ <bf bf,>2. |
    }
    {
      gf4 f4 ef4 d4 | ef2 r4 ef8 f8 |
    }
  }
  \bar "||"
  \break
  \set Score.currentBarNumber = #17
  \mark \markup { \box "B" }
  \tuplet 3/2 { gf8 f8 gf8 } f4~ f4. ef8 | d8 bf8~ bf2 ef8 f8 |
  \tuplet 3/2 { gf8 f8 gf8 } f4~ f4. ef8 | d8 bf'4. r2 |
  \break
  cf4 cf8 cf8 bf8 bf4. | gf8 gf4 gf8 f4. bf8 |
  \break
  ef4 ef8 ef8 df4 df8 df8 | cf4 df8 cf8
  \mark \markup { \small \italic "D.C. al Coda" }
  bf2 |
  \bar "||"
  \break
  \set Score.currentBarNumber = #31
  \mark "Coda"
  gf4 f4 ef4 d4 | ef1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-three-coda.ily"
