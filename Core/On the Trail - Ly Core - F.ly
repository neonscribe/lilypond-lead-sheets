%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "On the Trail"
  subtitle = "Arrangement by Donald Byrd, for Jimmy Heath's 1964 album"
  subsubtitle = \instrument
  poet = ""
  composer = "Ferde Grofé"
  copyright = "© 1932 Robbins Music Corporation"
}

verseLyrics = \lyricmode {
}

verseChords = \chordmode {
}

verseKey = f

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130
  
  \mark \markup{ "Intro" }
  
  \tuplet 3/2 { c4 r4 c'4 } \tuplet 3/2 { c,4 r4 c'4 } | \tuplet 3/2 { c,4 r4 c'4 } \tuplet 3/2 { d,4 e4 f4 } |
  \tuplet 3/2 { c4 r4 c'4 } \tuplet 3/2 { c,4 r4 c'4 } | \tuplet 3/2 { c,4 r4 c'4 } \tuplet 3/2 { d,4 e4 f4 } |
  \break
  \tuplet 3/2 { c4 r4 c'4 } \tuplet 3/2 { d,4 e4 f4 } | \tuplet 3/2 { c4 r4 c'4 } \tuplet 3/2 { d,4 e4 f4 } |
  \tuplet 3/2 { c4 d4 e4 } \tuplet 3/2 { f4 g4 a4 } | \tuplet 3/2 { c4 a4 g4 } \tuplet 3/2 { f4 e4 a4 } |
  
  \bar "|."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4

  f1:maj7 f1:maj7 f1:maj7 f1:maj7
  f2:maj7 g2:m7 a2:m7 d2:m7 g1:m7 c1:7

  af1:m7 af1:m7 af1:m7 af1:m7
  g1:m7 c1:7

  f2:maj7
  \chordOpenParen{ d2:7.9- }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelodyOne = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130
  
  \partial 4 a4 |
  \bar "||"

  \mark \markup{ "Refrain" \box "A" }

  c1 | r2 r4 a4 | c,1 | r2 r4 a'4 |
  \break
  c4 f8 d8~ d2~ | d4. c8 a8 f8 d8 g8~ | g1 | r2 r4 b4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  df1 | r2 r4 b4 | af1 | r2 r4 a4 |
  \break
  c1 | r4 r8 a8 g8 f8 d8 f8~ | f1 | r2 r4 \parenthesize a4 |
  
  \bar "|."
}

refrainMelodyTwo = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  
  \partial 4 r4 |

  r4 r8 <f d>8 <e c>16 <f d>16 <e c>16 <d bf>16 <e c>4 | <d bf>4 <f d>4 <e c>2 |
  r4 r8 <f d>8 <e c>16 <f d>16 <e c>16 <d bf>16 <e c>4 | <d bf>4 <f d>4 <e c>2 |

  r4 r8 <f d>8 <e c>16 <f d>16 <e c>16 <d bf>16 <e c>4 | <d bf>4 <f d>4 <e c>2 |
  r4 r8 <f d>8 <e c>16 <f d>16 <e c>16 <d bf>16 <e c>4 | <d bf>4 <f d>4 <e c>2 |
  
  r4 r8 <gf ef>8 <f df>16 <gf ef>16 <f df>16 <ef cf>16 <f df>4 | <ef cf>4 <gf ef>4 <f df>2 |
  r4 r8 <gf ef>8 <f df>16 <gf ef>16 <f df>16 <ef cf>16 <f df>4 | <ef cf>4 <gf ef>4 <f df>2 |

  r4 r8 <f d>8 <e c>16 <f d>16 <e c>16 <d bf>16 <e c>4 | <d bf>4 <f d>4 <e c>2 |
  r4 r8 <f d>8 <e c>16 <f d>16 <e c>16 <d bf>16 <e c>4 | <d bf>4 <f d>4 <e c>2 |

}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-parts.ily"
