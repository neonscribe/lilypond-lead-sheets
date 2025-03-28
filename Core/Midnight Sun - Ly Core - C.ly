%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Midnight Sun"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Lionel Hampton & Sonny Burke"
  copyright = \markup \small "© 1947 Regent Music Corp & Crystal Music Publishers"
}

refrainLyrics = \lyricmode {
Your
lips were like a red and ru -- by cha -- lice,
warm -- er than the sum -- mer night. __
The clouds were like an al -- a -- bas -- ter pal -- ace
ris -- ing to a snow -- y height. __
Each star its own au -- ro -- ra bo -- re -- a -- lis,
sud -- den -- ly you held me tight, __
I could see the
mid -- night sun. __
I
can't ex -- plain the sil -- ver rain that found me,
or was that a moon -- lit vale? __
The mu -- sic of the un -- i -- verse a -- round me,
or was that a night -- in -- gale? __
And then your arms mi -- rac -- u -- lous -- ly found me,
sud -- den -- ly the sky turned pale, __
I could see the

mid -- night sun.

Was there such a night?
It's a thrill I still don't quite be -- lieve, __
But af -- ter you were gone, there was still some star -- dust on my sleeve. __
The
flame of it may dwin -- dle to an em -- ber, and the stars for -- get to shine. __
And we may see the mea -- dow in De -- cem -- ber, ic -- y white and crys -- tal -- line. __
But oh my dar -- ling al -- ways I'll re -- mem -- ber when your lips were close to mine, __
And we saw the
mid -- night sun. __
}

refrainNewRealChords = \chordmode {
  s4

  c1:maj7 c1:maj7 c2:m7 f2:9.11+ f1:9.11+
  bf1:maj7 bf1: maj7 bf2:m7 ef2:9.11+ ef1:9.11+
  af1:maj7 af1:maj7 af2:m7 df2:9.11+ df1:9.11+

  c2:maj7 a2:m7 d2:m7 g2:7

  c1:maj7 c1:maj7 c2:m7 f2:9.11+ f1:9.11+
  bf1:maj7 bf1: maj7 bf2:m7 ef2:9.11+ ef1:9.11+
  af1:maj7 af1:maj7 af2:m7 df2:9.11+ df1:9.11+

  c2:maj7 a2:m7 fs2:m7.5- b2:7

  e1:maj7 a2:m7 a2:7 d1:maj7
  \chordOpenParen{ e2:m7 }
  \chordCloseParen{ ef2:7.5- }
  d1:maj7 d2:m7 g2:7 e2:m7 ef2:7 d2:m7 df2:9.11+

  c1:maj7 c1:maj7 c2:m7 f2:9.11+ f1:9.11+
  bf1:maj7 bf1: maj7 bf2:m7 ef2:9.11+ ef1:9.11+
  af1:maj7 af1:maj7 af2:m7 df2:9.11+ df1:9.11+

  c2:maj7 a2:m7 d1:m7

}

refrainJazzFiftiesChords = \chordmode {
  s4

  c1:maj7 c1:maj7 c1:m7 f1:9.11+
  bf1:maj7 bf1: maj7 bf1:m7 ef1:9.11+
  af1:maj7 af1:maj7 af1:m7 df1:9.11+

  c2:maj7 a2:m7 d2:m7 g2:7

  c1:maj7 c1:maj7 c1:m7 f1:9.11+
  bf1:maj7 bf1: maj7 bf1:m7 ef1:9.11+
  af1:maj7 af1:maj7 af1:m7 df1:9.11+

  c1:maj7 fs2:m7.5- b2:7

  e1:maj7 e2:m7 a2:7 d1:maj7 e2:m7 a2:7
  d1:maj7 d2:m7 g2:7 e2:m7 a2:7 d2:m7 g2:7

  c1:maj7 c1:maj7 c1:m7 f1:9.11+
  bf1:maj7 bf1: maj7 bf1:m7 ef1:9.11+
  af1:maj7 af1:maj7 af1:m7 df1:9.11+

  c2:maj7 a2:m7 d1:m7

}

refrainHLChords = \chordmode {
  s4

  c1:maj7 c2:6 c2:maj7 c2:m7 f2:9.11+ f2:9.11+ \chordInsideParens{ b2:7 }
  bf1:maj7 bf2:6 bf2:maj7 bf2:m7 ef2:9.11+ ef2:9.11+ \chordInsideParens{ a2:7 }
  af1:maj7 af2:6 af2:maj7 af2:m7 df2:9.11+ df1:9.11+
  
  c1:maj7 d2:m7 g2:7

  c1:maj7 c2:6 c2:maj7 c2:m7 f2:9.11+ f2:9.11+ \chordInsideParens{ b2:7 }
  bf1:maj7 bf2:6 bf2:maj7 bf2:m7 ef2:9.11+ ef2:9.11+ \chordInsideParens{ a2:7 }
  af1:maj7 af2:6 af2:maj7 af2:m7 df2:9.11+ df1:9.11+
  
  c2:maj7 a2:m7 fs2:m7.5- b2:7
  
  e1:maj7 e2:m7 a2:7 d1:maj7 e2:m7 ef2:7
  d1:maj7 d2:m7 g2:7 e2:m7 ef2:7 d2:m7 df2:7

  c1:maj7 c2:6 c2:maj7 c2:m7 f2:9.11+ f2:9.11+ \chordInsideParens{ b2:7 }
  bf1:maj7 bf2:6 bf2:maj7 bf2:m7 ef2:9.11+ ef2:9.11+ \chordInsideParens{ a2:7 }
  af1:maj7 af2:6 af2:maj7 af2:m7 df2:9.11+ df1:9.11+
  
  c1:maj7 
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainChords = \refrainHLChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [June Christy 1954]" 4 = 74
  
  \partial 4 b4 |
  
  \sectNoBreak "A1"


  d8 df8 c8 b8 bf8 a8 af8 e8 | g8 e4. g8 gf8 f8 e8 | ef4 d'8 b8~ b2~ | b2 r4 a4 |
  c8 b8 bf8 a8 af8 g8 gf8 d8 | f8 d4. f8 e8 ef8 d8 | df4 c'8 a8~ a2~ | a2 r4 g4 |
  bf8 a8 af8 g8 gf8 f8 e8 c8 | ef8 c4. ef8 d8 df8 c8 | cf4 bf'8 g8~ g2~ | g2 bf8 g8 e8 f8 |

  g8 g4 g8~ g2~ |
  g2 r4 b4 |

  \sect "A2"


  d8 df8 c8 b8 bf8 a8 af8 e8 | g8 e4. g8 gf8 f8 e8 | ef4 d'8 b8~ b2~ | b2 r4 a4 |
  c8 b8 bf8 a8 af8 g8 gf8 d8 | f8 d4. f8 e8 ef8 d8 | df4 c'8 a8~ a2~ | a2 r4 g4 |
  bf8 a8 af8 g8 gf8 f8 e8 c8 | ef8 c4. ef8 d8 df8 c8 | cf4 bf'8 g8~ g2~ | g2 bf8 g8 e8 f8 |

  g8 g4 g8~ g2 | r1 |
  
  \bar "||"
  \xPageBreak
  \sectNoBar "B"

  b8 cs8 gs8 a8 b4 g8 a8 | b8 cs8 g8 a8 b4 c4 | a1~ | a2 r4 fs4 |
  a8 b8 fs8 g8 a4 fs8 g8 | a8 b8 f8 g8 a4 b8 g8~ | g1~ | g2 r4
  b4 |
  
  \sect "A3"


  d8 df8 c8 b8 bf8 a8 af8 e8 | g8 e4. g8 gf8 f8 e8 | ef4 d'8 b8~ b2~ | b2 r4 a4 |
  c8 b8 bf8 a8 af8 g8 gf8 d8 | f8 d4. f8 e8 ef8 d8 | df4 c'8 a8~ a2~ | a2 r4 g4 |
  bf8 a8 af8 g8 gf8 f8 e8 c8 | ef8 c4. ef8 d8 df8 c8 | cf4 bf'8 g8~ g2~ | g2 bf8 g8 e8 f8 |

  g8 g4 g8~ g2~ | g2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
