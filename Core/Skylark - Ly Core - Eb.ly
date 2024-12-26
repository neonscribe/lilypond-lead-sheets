%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Skylark"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Hoagy Carmichael"
  copyright = "© 1942 Edwin H. Morris & Co."
}

refrainLyricsOne = \lyricmode {
  Sky -- lark, __
  Have you an -- y -- thing to say to me? __
  Won't you tell me where my love can be? __
  Is there a mead -- ow in the mist __
  where some -- one's wait -- ing to be kissed?
  
  _ _ _ _ _ _ _ _
  
  _ _ _ lone -- ly flight, __
  Have -- n't you heard the mu -- sic in the night,
  won -- der -- ful mu -- sic,
  Faint as a will -- 'o -- the -- wisp,
  cra -- zy as a loon,
  sad as a gyp -- sy ser -- e -- nad -- ing the moon,
  
  Oh, Sky -- lark, __
  I don't know if you can find these things, __
  But my heart is rid -- ing on your wings, __
  So if you see them an -- y -- where, won't you lead me there?
}

refrainLyricsTwo = \lyricmode {
  Sky -- lark, __
  Have you seen a val -- ley green with spring __
  where my heart can go a jour -- ney -- ing __
  o -- ver the sha -- dows and the _ _ _ _ _ _ _ _ _
  rain, to a blos -- som cov -- ered lane? __
  And in your
}

refrainNewRealChords = \chordmode {
  ef2:6 f2:m7 ef2/g af2:maj7 ef2:maj7 a2:7 af2:maj7 ef2/g
  af2:maj7 ef2/g f2:7 bf2:7

  ef2:6 c2:m7 af2:maj7 f4:m7 bf4:7

  ef2:6 bf2:7.9+ ef1:6

  c2:m7 b2:7 bf2:m7 ef2:7 af1:maj7 g2:m7.5- c2:7
  f2:m \chordInsideParens{ df2:7 } f4:m ef4:7.5+ af2:6
  g2:6 e2:m7 a4:7 d4:7 g4:6 bf4:7

  ef2:6 f2:m7 ef2/g af2:maj7 ef2:maj7 a2:7 af2:maj7 ef2/g
  af2:maj7 ef2/g f2:7 bf2:7 ef2:6 bf2:7 ef2:6
  \chordInsideParens{ bf2:7 }
}

refrainHLChords = \chordmode {
  ef2:6 f2:m7 g2:m7 af2:maj7 ef2:maj7 a2:7 af2:maj7 g2:m7
  c2:m7 f2:7 f2:m7 bf2:7
  
  ef2:6 c2:m7 f2:m7 bf2:7
  
  ef2:6 bf2:7 ef2:maj7 bf4:m7 ef4:7
  
  af2:maj7 f2:7 bf2:m7 ef2:7 af1:maj7 g2:m7.5- c2:7.9- 
  f2:m7 df2:7/f bf4:m7 ef4:7 af2:maj7 g2:maj7 e2:m7 a4:7 d4:7 g4:6 bf4:7

  ef2:6 f2:m7 g2:m7 af2:maj7 ef2:maj7 a2:7 af2:maj7 g2:m7
  c2:m7 f2:7 f2:m7 bf2:7 ef2:6 b4:7 bf4:7 ef2:6 \chordInsideParens{ bf2:7 }
}

refrainChords = \refrainHLChords

refrainKey = ef

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 90

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  c2 c2~ | c4 bf8 ef8 d8 c8 bf8 af8 | g8 g4 g8~ g2~ | g4 f8 c'8 bf8 g8 ef8 c8 |
  \break
  ef8 ef4 ef8~ ef2~ |
  ef4 \tuplet 3/2 { ef8 f8 ef8 } d8 af'8 c,8 d8 |
  \break
  \alternative { \volta 1 {
  ef2 r8 g8 bf8 ef8 | d8 c8 d8 ef8 bf2 |
  } \volta 2 {
  ef,4 g8 bf8 df8 c8 bf8 af8 | bf2 r8 ef,8 g8 bf8 |
  } } }

  \sect "B"
  
  ef8 ef4 ef8~ ef2~ | ef4 \tuplet 3/2 { f8 ef8 d8 } df8 ef,8 g8 df'8 |
  c8 c4 c8~ c2~ | c4 \tuplet 3/2 { df8 c8 bf8 } af8 g4. |
  \break
  f4 af8 c8 \tuplet 3/2 { cf8 bf8 af8 } f4 | c'8 ef8 f8 b,8 ef2 |
  b8 d8 e8 b8~ b8 g8 e8 d8 | b'8 bf8 af8 g8~ g8 bf4. |
  
  \sect "A3"

  c2 c2~ | c4 bf8 ef8 d8 c8 bf8 af8 | g8 g4 g8~ g2~ | g4 f8 c'8 bf8 g8 ef8 c8 |
  \break
  ef8 ef4 ef8~ ef2~ | ef4 \tuplet 3/2 { ef8 f8 ef8 } d8 af'8 c,8 d8 | ef4 g8 bf8 df4 d4 | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
