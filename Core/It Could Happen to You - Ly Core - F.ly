%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "It Could Happen to You"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Jimmy Van Heusen"
  copyright = "© 1944 Famous Music Corp."
}

refrainLyrics = \lyricmode {
Hide your heart from sight,
Lock your dreams at night,
It could hap -- pen to you.
Don't count stars or you might stum -- ble.
Some -- one drops a sigh,
and down you tum -- ble.
Keep an eye on spring,
Run when church bells ring,
It could hap -- pen to you.
All I did was won -- der
How your arms would be,
And it hap -- pened to me!
}

refrainChords = \chordmode {
  f1:maj7 a2:m7.5- d2:7.9- g1:m7 b2:m7.5- e2:7.9-
  f1:maj7 bf1:7 a1:m7.5- d1:7.9-

  g1:m7 ef1:7
  
  f1:maj7 e2:m7.5- a2:7
  d1:m7 g1:7 g1:m7 c1:7

  f1:maj7 a2:m7.5- d2:7.9- g1:m7 b2:m7.5- e2:7.9-
  f1:maj7 bf1:7 a1:m7.5- d1:7.9-

  g1:m7 ef1:7
  
  f2:maj7 bf2:7 a2:m7.5- d2:7.9- g1:m7 c1:7
  
  f1:maj7
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 110

  \xTextMark \markup{ \bold \box "A1" }
  
  c2. d4 | ef4 d8 a'8~ a2 | d,2. e4 | f4 e8 b'8~ b2 |
  c2 c2 | c4 bf2 f4 | a1 | r1 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  a2 a2 | a4 bf4 f4 g8 a8~ | a2 a2 | r1 |
  \break
  f2 f2 f4 g4 d4 e8 f8~ | f2 g2 | d4. e8~ e2 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c2. d4 | ef4 d8 a'8~ a2 | d,2. e4 | f4 e8 b'8~ b2 |
  \break
  c2 c2 | c4 bf2 f4 | a1 | r1 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }

  a2 a2 | a4 bf4 f4 g8 a8~ | a4 e4 g4 f8 c'8~ |
  \break
  c1
  \textToCodaLastTime
  |
  c,2 c2 | bf'4 g2 a4 | f1 | r1 |

  \bar "|."
}

codaLyrics = \lyricmode {
And it hap -- pened to me!
And it hap -- pened to me!
}

codaChords = \chordmode {
 g1:m7 c1:7 a1:m7.5- d1:7.9-
 g1:m7 c1:7 f1:maj7 f1:maj7
}

codaKey = f

codaMelody = \relative f' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  \textCoda
  c2 c2 | bf'4 g2 a4 | c1 | r1 |
  c,2 c2 | bf'4 g2 a4 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  % Leave a gap before the coda
  \vspace #2
}

\include "../Include/coda.ily"
