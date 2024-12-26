%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Had the Craziest Dream"
  subtitle = \instrument
  poet = "Mack Gordon"
  composer = "Harry Warren"
  copyright = "© 1942 Twentieth Century Music Corporation"
}

verseLyrics = \lyricmode {
In a dream the strang -- est and the odd -- est things ap -- pear;
and what in -- sane and sil -- ly things we do.
Here is one I see be -- fore me viv -- id -- ly and clear.
As I re -- call it you were in it too.
}

verseChords = \chordmode {
c2:maj9 a2:7.9-.5+ d2:13 g4:13 f4:dim7 e2:m7 ef2:dim7 d2:m7 g2:7
c2:maj9 fs4:m7.5- b4:7.9- e2:m7 c2:m6/ef g2:6/d a4:9 d4:13 g2:sus9 g2:7
}

verseKey = c

verseMelody = \relative f' {
  \time 2/2
  \key \verseKey \major
  \clef \whatClef
  \tempo "Freely" 4 = 86
  
  \xTextMark \markup{ \bold \box "Verse" }
  
  d'8 c8 d8 c8 f,8 e8 f8 e8 | b'8 a8 b8 a8 e4. d8 |
  \break
  e8 g8 a8 b8 c8 b8 c8 d8 | g,1 |
  \break
  d'8 c8 d8 c8 b8 a8 b8 fs8 | a8 g8 a8 g8 a4. g8 |
  \break
  a8 g8 a8 g8 b8 b8 b8 b8 | g1 |

  \bar "|."
  \xPageBreak
}

refrainLyrics = { \lyricmode {
I had the craz -- i -- est dream __ last night, yes I did. __
I nev -- er dreamt __ it could be, __ yet there you were __ in love with me. __
I found your lips __ next to mine, __ so I kissed __ you,
and you did -- n't mind it at all. __
When I'm a -- wake __ such a break __ nev -- er hap -- pens,
how long can a }
#(if (and (defined? 'femaleSinger) femaleSinger)
  #{ \lyricmode { gal __ } #}
  #{ \lyricmode { guy __ } #} )
\lyricmode {
go on dream -- ing? __
If there's a chance __ that you care __ then, please say you do, ba -- by.
Say it and make __ my craz -- i -- est dream come true. __
} }

refrainChords = \chordmode {
  c1:maj7 e2:m7.5- a2:7.9-.5+ d2:m7 a2:7.9- d2:m7 a2:7.9-
  d1:m7 d2:sus9 f2:dim7 e2:m7 a2:7.5+ d2:m7 g2:7

  e2:m7.5- a2:7.9- e2:m7.5- a2:7.9- d2:m7 a2:7.9- d1:m7
  fs2:m7.5- b2:7.9- fs2:m7.5- b2:7.9- e2:m7 ef2:dim7 d2:m7 g2:7.5+

  c2:maj7 f2:9 e2:m7.5- a2:7.9-.5+ d2:m7 e2:m7 f2:m7 bf2:9
  e2:m7 a2:m7 d2:9 g4:sus9 g4:7.9- c2:6
  \chordOpenParen{ a2:7.9-.5+ }
  d2:m7
  \chordCloseParen{ g2:7.9-.5+ }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 86

  \xTextMark \markup{ \bold \box "A1" }
  
  e8 g8 b8 d8~ d8 df8 c8 e,8~ | e2~ e8 f4. | d2 e8 g4 f8~ | f1 |
  \break
  d8 f8 a8 e'8~ e8 ef8 d8 c8~ | c2~ c8 b4. | b8 a4 a8~ a4. b8 | a8 g4 g8~ g2 |
  
  \sect "B"
  
  g8 e8 f8 g8~ g8 e8 f8 g8~ | g8 e8 f8 g8~ g8 bf4 a8 | f4 f8 f8 e8 d8 e8 f8~ | f1 |
  \break
  a8 fs8 g8 a8~ a8 fs8 g8 a8~ | a8 fs8 g8 a8~ a8 c4 a8 | b8 b8 b8 b8~ b8 b8 b8 a8~ | a4. ds,8~ ds2 |

  \sect "A2"
  
  e8 g8 b8 d8~ d8 df8 c8 e,8~ | e2~ e8 f4. | d2 e8 g4. | f2 e8 d4. |
  \break
  e8 g8 a8 b8~ b8 c4 d8~ | d8 e8 d8 c8~ c8 d4 c8~ | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"
\include "../Include/refrain.ily"
