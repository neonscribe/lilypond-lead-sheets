%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "All the Things You Are"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Jerome Kern"
  copyright = \markup \small "© 1939 T.B. Harms Co."
}

verseLyrics = \lyricmode {
Time and a -- gain I've longed for ad -- ven -- ture,
some -- thing to make my heart beat the fast -- er.
What did I long for? I nev -- er real -- ly knew.
Find -- ing your love, I've found my ad -- ven -- ture,
touch -- ing your hand, my heart beats the fast -- er,
all that I want in all of this world is you.
}

verseChords = \chordmode {
  g2:maj7 d2:sus7 g2:maj7 d2:sus7 a2:m7 d2:7 a2:m7 d2:13
  g2:maj7 f2:7.11+ e1:7.5+ a1:13 a2:m7 d2:7
  a2:m7 d2:sus7 g2:maj7 d2:sus7 e1:m7 fs2:m7.5- b2:7.5+
  a1:m7 d2:sus7 d2:7 g1:6
  g4:6 c4:7 bf4:/d c4:/e
}

verseKey = g
refrainKey = af

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Freely"

  \xTextMark \markup { \bold \box "Verse" }
  
  d8 d8 d4 g4 a4 | b4 c8 b8 a4 g4 | d8 d8 d4 a'4 b4 | c4 d8 c8 b4 a4 |
  d,8 d8 d4 b'4 c4 | d4 e8 d8 c4 b4 | a1 | r1 |
  d,8 d8 d4 g4 a4 | b4 c8 b8 a4 g4 | b,8 b8 b4 fs'4 g4 | a4 b8 a8 g4 fs4 |
  d8 d8 d4 g4 d4 | d8 d8 d4 a'4 d,4 | g1 | r4 e4 f4 g4 |
  
  \bar "||-||"

  \key \refrainKey \major
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  s8
  s4 s8 df8*9:7.9+ s2
  s4 s8 c8*9:7.9+ s2
  s4 s8 df8*9:7.9+ s2
  s4 s8 c8*9:7.9+ s2
}

introKicksOverTime = {
  \partial 8 s8 |
  r4 r8 df8~ df2~ | df2 r2 | r4 r8 c8~ c2~ | c2 r2 |
  r4 r8 df8~ df2~ | df2 r2 | r4 r8 c8~ c2~ | c2 r2 |
}

introKey = af

introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef

  \xTextMark \markup{ \bold \box "Intro" }
  
  \partial 8 a8 |
  af8 df,8~ df2~ df8 a'8 | af8 df,4 a'8 af8 df,4 af'8 | g8 c,8~ c2~ c8 af'8 | g8 c,4 af'8 g8 c,4 a'8 |
  \break
  af8 df,8~ df2~ df8 a'8 | af8 df,4 a'8 af8 df,4 af'8 | g8 c,8~ c2~ c8 af'8 | g8 c,4 af'8 g8 c,4 r8 |

  \bar "|."
}

outroLyrics = \lyricmode {
}

outroChords = \chordmode {
  s8
  s4 s8 df8*9:7.9+ s2
  s4 s8 c8*9:7.9+ s2
  s4 s8 df8*9:7.9+ s2
  s4 s8 c8*5:7.9+ s1
}

outroKicksOverTime = {
  \time 4/4
  \partial 8 s8 | r4 r8 df8~ df2~ | df2 r2 | r4 r8 c8~ c2~ | c2 r2 |
  r4 r8 df8~ df2~ | df2 r2 | r4 r8 c8~ c2\fermata | r1 |
}

outroKey = af

outroMelody = \relative f' {
  \time 4/4
  \key af \major
  \clef \whatClef

  \xTextMark \markup{ \bold \box "Outro" }
  
  \partial 8 a8 |
  af8 df,8~ df2~ df8 a'8 | af8 df,4 a'8 af8 df,4 af'8 | g8 c,8~ c2~ c8 af'8 | g8 c,4 af'8 g8 c,4 a'8 |
  \break
  af8 df,8~ df2~ df8 a'8 | af8 df,4 a'8 af8 df,4 af'8 | g8 c,8~ c2\fermata r4 | r1 |

  \bar "|."
  
  \xPageBreak
}

refrainLyrics = \lyricmode {
You are the prom -- ised kiss of spring -- time
that makes the lone -- ly win -- ter seem long. __
You are the breath -- less hush of eve -- ning
That trem -- bles on the brink of a love -- ly song. __
You are the an -- gel glow that lights a star, __
The dear -- est things I know __ are what you are. __
Some day my hap -- py arms will hold you,
And some day I'll know that mo -- ment di -- vine,
When all the things you are, are mine.
}

refrainNewRealChords = \chordmode {
  f1:m7 bf1:m7 ef1:7 af1:maj7
  df1:maj7 g1:7 c1:maj7 c1:maj7
  
  c1:m7 f1:m7 bf1:7 ef1:maj7
  af1:maj7 a2:m7.5- d2:7 g1:maj7 g1:maj7
  
  a1:m7 d1:7 g1:maj7 g1:maj7
  fs1:m7.5- b1:7 e1:maj7 c1:7.5+
  
  f1:m7 bf1:m7 ef1:7 af1:maj7
  df1:maj7 gf1:13 c1:m7 b1:dim7
  
  bf1:m7 ef1:7 af1:6
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7 }
}

refrainRealBookSixthChords = \chordmode {
  f1:m7 bf1:m7 ef1:7 af1:maj7
  df1:maj7 g1:7 c1:maj7 c1:maj7
  
  c1:m7 f1:m7 bf1:7 ef1:maj7
  af1:maj7 a2:m7.5- d2:7 g1:maj7 g2:maj7 e2:7.9+
  
  a1:m7 d1:7 g1:maj7 g1:maj7
  fs1:m7.5- b1:7 e1:maj7 c1:7.5+
  
  f1:m7 bf1:m7 ef1:7 af1:maj7
  df1:maj7 gf1:13 c1:m7 b1:dim7
  
  bf1:m7 ef1:7 af1:maj7
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7.9- }
}

refrainChords = \refrainRealBookSixthChords

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Dizzy Gillespie 1945]" 4 = 126

  \xTextMark \markup{ "Refrain" \bold \box "A1" }
  
  af1 | df2. af4 | g4 g4 g4 g4 | g4 c2 g4 |
  \break
  f4 f4 f4 f4 | f4 b2 f4 | e1~ | e1 |

  \sect "A2"
  
  ef1 | af2. ef4 | d4 d4 d4 d4 | d4 g2 d4 |
  \break
  c4 c4 c4 c4 | c4 d8 ef8 d4 c4 | b1~ | b4 d4 g4 d'4 |

  \sect "B"
  
  d4. c8 c2~ | c4 ds,4 e4 c'4 | b1~ | b4 d,4 g4 b4 |
  \break
  b4. a8 a2~ | a4 bf,4 b4 a'4 | gs1~ | gs1 |
  
  \sect "A3"
  
  af1 | df2. af4 | g4 g4 g4 g4 | g4 c2 g4 |
  \break
  f1 | ef'2. df4 | ef,4 ef4 \tuplet 3/2 { ef4 ef4 ef4 } | g2. f4 |
  \break
  
  df4 df4 f4 af4 | f'2 g,2 | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\markup{ "Vocal performance is commonly optional verse, then refrain." }
\markup{ "Instrumental performance is commonly intro, refrain, solos, refrain, outro." }

\markup {
  \vspace #1
}

savedWhatKey = \whatKey
whatKey = \whatVerseKey
\include "../Include/verse.ily"
whatKey = \savedWhatKey

\include "../Include/intro.ily"

\include "../Include/outro.ily"

\include "../Include/refrain.ily"
