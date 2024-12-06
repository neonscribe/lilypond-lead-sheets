%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Coquette"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Carmen Lombardo and John Green"
  copyright = "© 1928 Leo Feist Inc."
}

refrainFHLyrics = \lyricmode {
Tell me why you keep fool -- ing, lit -- tle co -- quette?
Mak -- ing fun of the ones who love you.
Break -- ing hearts you are rul -- ing, lit -- tle co -- quette.
True hearts ten -- der -- ly dream -- ing of you.
Some day you'll fall in love as I fell in love with you.
May -- be some -- one you love will just be fool -- ing.
And when you're all a -- lone with on -- ly re -- gret.
You'll know, lit -- tle co -- quette, I loved you.
}

refrainDFBLyrics = \chordmode {
}

refrainDFBChords = \chordmode {
  d1 d1 e1:m7 a1:7 e1:m7 a1:7 d2 b2:7 e2:m7 a2:7
  d1 d1 e1:m7 a1:7 e1:m7 a1:7 d1 d1
  a1:m7 d1:7 g1 g1 b1:m7 e1:7 e1:m7 a1:7
  d1 d1 e1:m7 a1:7 e1:m7 a1:7 d2 
  \chordOpenParen{ b2:7 }
  e2:m7
  \chordCloseParen{ a2:7 }
}

refrainRNChords = \chordmode {
  d1:6.9 d1:6.9 e1:m7 a1:13.9-
  e1:m7 a1:13.9- fs2:m7 b2:13.9- e2:m7 a2:13.9-

  d1:6.9 d1:6.9 e1:m7 a1:13.9-
  e1:m7 a1:13.9- d1:6.9 d1:6.9
  
  a1:m7 d1:7 g2:maj7 a2:7 as2:dim7 g2/b
  b1:m7 e1:7 e1:m7 a1:13.9-
  
  d1:6.9 d1:6.9 e1:m7 a1:13.9-
  e1:m7 a1:13.9- fs2:m7 b2:13.9- e2:m7 a2:13.9-
}

refrainFHChords = \chordmode {
  ef1 ef2 e2:dim7 bf2:7/f bf2:7 bf1:7
  bf1:7 bf1:7 ef1 f2:7 bf2:7

  ef1 ef2 e2:dim7 bf2:7/f bf2:7 bf1:7
  bf1:7 bf1:7 ef1 ef1

  ef1:7 ef1:7 af1 af2. gf4:7
  f1:7 f1:7 bf1:7 bf2:7 bf2:7.5+

  ef1 ef2 e2:dim7 bf2:7/f bf2:7 bf1:7
  bf1:7 bf1:7 ef1 ef1
}

refrainFHKey = ef

refrainDFBKey = d

refrainFHMelody = \relative f'' {
  \time 4/4
  \key ef \major
  \clef \whatClef
  \tempo "Medium-Up Swing" 4 = 180

  \xTextMark \markup{ \bold \box "A1" }
  
  ef4. c8~ c2 | ef8 c8 ef8 c8~ c8 g4. | bf8 g8 bf8 g8~ g2~ | g2. r4 |
  \break
  bf4. g8~ g2 | bf8 g8 bf8 g8~ g8 bf,4. | c8 g'8~ g2.~ | g4 r4 r2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  ef'4. c8~ c2 | ef8 c8 ef8 c8~ c8 g4. | bf8 g8 bf8 g8~ g2~ | g2. r4 |
  \break
  bf4. g8~ g2 | bf8 g8 bf8 g8~ g8 bf,4. | c8 ef8~ ef2.~ | ef4 r4 r2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  ef4. f8~ f2 | f8 g8 bf8 ef8~ ef8 c4. | bf8 g8 bf8 g8~ g8 ef4. | f2. r4 |
  \break
  f4. g8~ g2 | g8 a8 c8 f8~ f8 d4. | c4. b8~ b2 | c8( bf8 c8 bf8 c8) d4. |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  ef4. c8~ c2 | ef8 c8 ef8 c8~ c8 g4. | bf8 g8 bf8 g8~ g2~ | g2. r4 |
  \break
  bf4. g8~ g2 | bf8 g8 bf8 g8~ g8 bf,4. | c8 ef8~ ef2.~ | ef4 r4 r2 |
  
  \bar "|."
}

refrainDFBMelody = \relative f'' {
  \time 4/4
  \key d \major
  \clef \whatClef
  \tempo "Medium-Up Swing" 4 = 180

  \xTextMark \markup{ \bold \box "A1" }
  
  d2 b2 | d8 b8 d8 b8~ b8 fs8 g8 gs8 | a4 a8 fs8~ fs2 | r2 r8 fs8 g8 gs8 |
  \break
  a4 a8 fs8~ fs2 | a8 fs8 a8 fs8~ fs8 a,8 as8 b8~ | b1 | r1 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d'2 b2 | d8 b8 d8 b8~ b8 fs8 g8 gs8 | a4 a8 fs8~ fs2 | r2 r8 fs8 g8 gs8 |
  \break
  a4 a8 fs8~ fs2 | a8 fs8 a8 fs8~ fs8 a,8 as8 b8~ | b1 | r1 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d4. e8~ e2 | \tuplet 3/2 { e4 fs4 a4 } d4 b4 | \tuplet 3/2 { d4 b4 d4 } b4 d,8 e8~ | e1 |
  \break
  e4. fs8~ fs2 | \tuplet 3/2 { fs4 gs4 b4 } e4 cs4 | b2 a2 | b2 cs2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  d2 b2 | d8 b8 d8 b8~ b8 fs8 g8 gs8 | a4 a8 fs8~ fs2 | r2 r8 fs8 g8 gs8 |
  \break
  a4 a8 fs8~ fs2 | a8 fs8 a8 fs8~ fs8 a,8 as8 b8~ | b1 | r1 |

  \bar "|."
}

refrainLyrics = ##t
refrainChords = ##t
refrainKey = ##t
refrainMelody = ##t

$(cond ((and (defined? 'useDFBVersion) useDFBVersion)
	(set! refrainLyrics refrainDFBLyrics)
	(set! refrainChords refrainDFBChords)
	(set! refrainKey refrainDFBKey)
	(set! refrainMelody refrainDFBMelody))
  (#t
	(set! refrainLyrics refrainFHLyrics)
	(set! refrainChords refrainFHChords)
	(set! refrainKey refrainFHKey)
	(set! refrainMelody refrainFHMelody)))

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
