%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Starting A Rumor"
  subtitle = "Steve Mackey's bass line from Delbert McClinton's 2009 album Acquired Taste"
  composer = "Delbert McClinton / Gary Nicholson / Guy Clark"
  copyright = \markup \small "© 2009 EMI April Music Inc., Sony/ATV Cross Keys Publishing, Gary Nicholson Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  e1:m b1:m c2. g4 g1

  g1 b1:m c1 g1
  g1 b1:m c1 d1
  e1:m b1:m c1 g2 d2/fs
  e1:m b1:m c1 g1

  g1 b1:m c1 g1
  g1 b1:m c1 d1
  e1:m b1:m c1 g2 d2/fs
  e1:m b1:m c2. g4 g1
  
  c1 c1 c1 c1
  g1 d1/fs e1:m e1:m
  a1:7 a1:7 a1:7 a1:7
  c1 c1 d1 d1

  g1 b1:m c1 g1
  g1 b1:m c1 d1
  e1:m b1:m c1 g2 d2/fs
  e1:m b1:m c2. g4 g1
  
  c1 c1 c1 c1
  g1 d1/fs e1:m e1:m
  a1:7 a1:7 a1:7 a1:7
  c1 c1 d1 d1

  g1 b1:m c1 g1
  g1 b1:m c1 d1
  e1:m b1:m c1 g2 d2/fs
  e1:m b1:m c1 g2 d2/fs
  e1:m b1:m c2. g4 g1
  
  g1 b1:m c1 g1
  g1 b1:m c1 g1
  g1 b1:m c1 g1
  g1 b1:m c1 g1
  g1 b1:m c1 g1
  g1 b1:m c1 g1
  g1 b1:m c1 g1
}

refrainKey = g

refrainMelody = \relative g, {
  \time 2/2
  \key \refrainKey \major
  \clef bass
  \tempo 2 = 72

  \xTextMark \markup { "Intro" }
  
  e4 e4 g4 a4 | b4 b2. | c4 c2 g4~ | g1 |
  
  \bar "||-||"
  \break

  \xTextMark \markup { "Verse 1" }
  
  g1 | b1 | c1 | g1 | g1 b1 | c1 | d1 |

  \break

  e1 | b1 | c1 | g'2 fs2 | e1 | b1 | c2. d8( e8) | g2. d4 |
  
  \bar "||-||"
  \break

  \xTextMark \markup { "Verse 2" }
  
  g,1 | b1 | c1 | g1 | g1 | b1 | c2. g8( b8) | d2. c8( d8) |

  \break

  e1 | b1 | c1 | g'2 fs2 | e2.. e8 | b1 | c2. g4~ | g4 g4 a4 b4 |
  
  \bar "||-||"
  \break

  \xTextMark \markup{ "Chorus 1" }
  
  c4 c2 c4~ | c8 \xNote { c8 } a'4 g4 a4 | c,4 c2 c4~ | c4 d8 e8 g4 e4 |
  g1 | fs4 fs2 d4 | e2.. b8 | e8 \xNote { b8 } e2 b4 |
  \break
  a1 | a8 e8 a2 e'4 | a1 | a8 e8 a,2 b8 g8 | c2. c4~ | c8 g8 c2 c4 | d4 d2 d4~ | d4 d2 d4 |
  
  \bar "||-||"
  \break

  \xTextMark \markup{ "Solo" }
  
  g,4 g2. | b2.. \xNote { b8 } | c4 c2~ c8 b8 | g4 g2 d'4 |
  g,4 g2~ g8 \xNote { g8 } | b4 b2~ b8 \xNote { b8 } | c4 c2. | d8 d8 d8 d8 a8 b8 d4 |
  \break
  e4 e2. | b4 b2. | c2 d8 e8 a4 | g2 fs2 |
  e1 | b4 b2~ b8 \xNote { b8 } | c2 c4 g4~ | g8 e8 g2 a8 b8 |

  \bar "||-||"
  \break

  \xTextMark \markup{ "Chorus 2" }
  
  c4 c2 c4~ | c8 \xNote { c8 } a'4 g4 a4 | c,4 c2 c4~ | c4 d8 e8 g4 e4 |
  g1 | fs4 fs2 d4 | e4 e2~ e8 b8 | e4 e4. fs8 g4 |
  \break
  a4 a2 a4~ | a8 e8 a2 b8 c8 | d2.. c8 | a4. e8 a,4 b4 |
  c4 c2 c4~ | c8 g8 a8 b8 c4 a4 | d4 d8 d8 d4 d4~ | d4 d8 a8 d2 |

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ "Verse 3" }
  
  g,4 g2. | b4 b2. | c4 c2. | g4 g2 d'4 | g,4 g2. | b4 b2. | c4 c2. | d4 d2 b4 |
  \break
  e4 e2. | b4 b2. | c2 c8 b8 a4 | g2 fs2 |
  \break
  e4 e2 g4 | b4 b2. | c2. d8 e8 | g2 fs4 d4 |
  e4 e2. | b4 b2. | c4 e,4( a4) g4~ | g4 d'2 d4 |

  \bar "||-||"
  \break

  \xTextMark \markup{ "Outro Solo" }
  
  g,4 g2~ g8 \xNote { g8 } | b4 b2. | c4 c2. | g4 g2. |
  g4 g2. | b4 b2. | c4 c2~ c8 e,8 | g8 e8 g4 b8 c8 d4 |
  \break
  g4 g2. | b,4 b2. | c8 g8 c2~ c8 d8 | g4 g4 g4 d4 |
  g,4 g2~ g8 g8 | b4 b2~ b8 g8 | c8 g8 e4. e8 a8 e8 | g8 g8 g8 g8 d'8 e8 d4 |
  \break
  g,4^"begin slow fade out" g2. | b4 b2. | c4 c2~ c8 e,8 | g4 b4 d4 e4 |
  g,4 g2. | b4 b2. | c2 d4 e8 fs8 | g2 d8 e8 g8 e8 |
  \break
  g4 g2 d4 | b4 b2. | c8 g8 c2~ c8 e,8 | g8 a8 g2. |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
