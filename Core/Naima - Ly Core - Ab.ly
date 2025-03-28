%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Naima"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small "© 1959 Jowcol Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  df1:maj7/ef ef1:m9 a2:maj/ef g2:maj7/ef af1:maj7
  
  b1:maj7/bf bf1:13.9- b1:maj7/bf bf1:13.9-
  d1:maj7.5+/bf b1:maj7/bf af1:maj7/bf e1:maj7/bf
  
  df1:maj7/ef ef1:m9 a2:maj/ef g2:maj7/ef af1:maj7

  a2:maj7/ef g2:maj7/ef af1:maj7 a2:maj7/ef g2:maj7/ef af1:maj7
  a2:maj7/ef g2:maj7/ef af2:maj7 df2:maj7 af2:maj7 df2:maj7 af2:maj7 df2:maj7 af1:maj7
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [John Coltrane 1959]" 4 = 57

  \sectStart "A1,A2"
  
  \bar ".|:"
  \repeat volta 2 {
  c'2.~ \tuplet 3/2 { c8 bf8 ef8 } | f,1 | af2 gf4~ \tuplet 3/2 { gf8 ef8 gf8 } | ef1 |
  }
  \bar "||-:|."

  \sectNoBar "B"
  
  bf'2.~ \tuplet 3/2 { bf8 bf8 bf8 } | g2. \tuplet 3/2 { r8 ef8 f8 } |
  bf2.~ \tuplet 3/2 { bf8 bf8 bf8 } | g2. \tuplet 3/2 { r8 f8 ef8 } |
  \break
  df'2.~ \tuplet 3/2 { df8 bf8 df8 } | bf2. \tuplet 3/2 { r8 gf8 bf8 } |
  g2.~ \tuplet 3/2 { g8 ef8 g8 } | ef1 |
  
  \sect "C"
  
  c'2.~ \tuplet 3/2 { c8 bf8 ef8 } | f,1 | af2 gf4~ \tuplet 3/2 { gf8 ef8 gf8 } | ef1 \textToCodaLastTime |
  \bar "||-|."
  
  \textCoda
  
  af2 gf4~ \tuplet 3/2 { gf8 ef8 gf8 } | ef1 | af2 gf4~ \tuplet 3/2 { gf8 ef8 gf8 } | ef1 |
  \break
  af2 gf4~ \tuplet 3/2 { gf8 ef8 gf8 } | ef2 f2 | g2 af2 | bf2 c2 | ef1\fermata |

  \bar "|."
}

refrainBass = \relative f {
  \time 4/4
  \key \refrainKey \major
  \clef "bass"

  ef4~ \tuplet 3/2 { ef8 ef'8 ef8 } ef,2 | ef4~ \tuplet 3/2 { ef8 ef'8 ef8 } \tuplet 3/2 { ef8 ef,4~ } ef4 |
  ef4~ \tuplet 3/2 { ef8 ef'8 ef8 } ef,2 | af,4~ \tuplet 3/2 { af8 ef'8 ef8 } \tuplet 3/2 { ef8 af,4~ } af4 |

  bf'4~ \tuplet 3/2 { bf8 bf8 bf8 } bf4~ \tuplet 3/2 { bf8 bf8 bf8 } |
  bf4~ \tuplet 3/2 { bf8 bf8 bf8 } bf4~ \tuplet 3/2 { bf8 bf8 bf8 } |
  bf4~ \tuplet 3/2 { bf8 bf8 bf8 } bf4~ \tuplet 3/2 { bf8 bf8 bf8 } |
  bf4~ \tuplet 3/2 { bf8 bf8 bf8 } bf4~ \tuplet 3/2 { bf8 bf8 bf8 } |

  bf4~ \tuplet 3/2 { bf8 bf8 bf8 } bf4~ \tuplet 3/2 { bf8 bf8 bf8 } |
  bf4~ \tuplet 3/2 { bf8 bf8 bf8 } bf4~ \tuplet 3/2 { bf8 bf8 bf8 } |
  bf4~ \tuplet 3/2 { bf8 bf8 bf8 } bf4~ \tuplet 3/2 { bf8 bf8 bf8 } |
  bf4~ \tuplet 3/2 { bf8 bf8 bf8 } bf4.. bf16

  ef,4~ \tuplet 3/2 { ef8 ef'8 ef8 } ef,2 | ef4~ \tuplet 3/2 { ef8 ef'8 ef8 } \tuplet 3/2 { ef8 ef,4~ } ef4 |
  ef4~ \tuplet 3/2 { ef8 ef'8 ef8 } ef,2 | af,4~ \tuplet 3/2 { af8 ef'8 ef8 } \tuplet 3/2 { ef8 af,4~ } af4 |

  ef'4~ \tuplet 3/2 { ef8 ef8 ef8 } ef2 | af,4~ \tuplet 3/2 { af8 ef'8 ef8 } \tuplet 3/2 { ef8 af,4~ } af4 |
  ef'4~ \tuplet 3/2 { ef8 ef8 ef8 } ef2 | af,4~ \tuplet 3/2 { af8 ef'8 ef8 } \tuplet 3/2 { ef8 af,4~ } af4 |
  ef'2 ef2 | af,2 df2 | af2 df2 | af2 df2 | af1 |

}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-bass-chord-middle.ily"

\markup{ "Solo on form " \box \bold "A1" \box \bold "A2" \box \bold "B" \box \bold "C"
	 ". D.C. al Coda after solos. Bass line as written throughout." }
