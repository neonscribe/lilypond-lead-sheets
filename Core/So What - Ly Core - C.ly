%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:50.64598Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "So What"
  subtitle = \subtitle
  poet = ""
  composer = "Miles Davis"
  copyright = \markup \small { \now " " "© 1959 Jazz Horn Music" }
}

chordSize = #-1

refrainChords = \chordmode {
  s1

  s2 <e a d' g' b'>4. <d g c' f' a'>8 s1
  s2 <e a d' g' b'>4. <d g c' f' a'>8 s1
  s2 <e a d' g' b'>4. <d g c' f' a'>8 s1
  s2 <e a d' g' b'>4. <d g c' f' a'>8

  s1

  s1

  s2 <f bf ef' af' c''>4. <ef af df' gf' bf'>8 s1
  s2 <f bf ef' af' c''>4. <ef af df' gf' bf'>8 s1
  s2 <f bf ef' af' c''>4. <ef af df' gf' bf'>8 s1
  s2 <f bf ef' af' c''>4. <ef af df' gf' bf'>8 s1

  s2 <e a d' g' b'>4. <d g c' f' a'>8 s1
  s2 <e a d' g' b'>4. <d g c' f' a'>8 s1
  s2 <e a d' g' b'>4. <d g c' f' a'>8 s1
  s2 <e a d' g' b'>4. <d g c' f' a'>8

  s1

  d1*16:m7 ef1*8:m7 d1*8:m7
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass
  \tempoFour "Medium [Miles Davis 1959]" 137

  d,8\rest d8 a'8 b8 c8 d8 e8 c8 |

  \sectNoBarNoBreak "A1, A2"

  \bar ".|:"
  \repeat volta 2 {
  d1 |
  d,8\rest d8 a'8 b8 c8 d8 e8 c8 | d8 a4.~ a2 |
  d,8\rest d8 a'8 b8 c8 d8 e8 c8 | d1 |
  d,8\rest e'4. e4 e4 | d4. a8~ a2 |
  \alternative { \volta 1 {
  d,8\rest d8 a'8 b8 c8 d8 e8 c8 |
  } \volta 2 {
  ef,8\rest ef8 bf'8 c8 df8 ef8 f8 df8 |
  } } }

  \sect "B"

  ef1 |
  ef,8\rest ef8 bf'8 c8 df8 ef8 f8 df8 | ef8 bf4.~ bf2 |
  ef,8\rest ef8 bf'8 c8 df8 ef8 f8 df8 | ef1 |
  ef,8\rest ef8 bf'8 c8 df8 ef8 f8 df8 | ef8 bf4.~ bf2 |
  d,8\rest d8 a'8 b8 c8 d8 e8 c8 |

  \sectPageBreak "A3"

  d1 |
  d,8\rest d8 a'8 b8 c8 d8 e8 c8 | d8 a4.~ a2 |
  d,8\rest d8 a'8 b8 c8 d8 e8 c8 | d1 |
  d,8\rest e'4. e4 e4 | d4. a8~ a2 | r1 |

  \sect "Solos"

  \bar ".|:-|."
  \override MultiMeasureRest.expand-limit = 2
  \repeat volta 2 { \compressMMRests
   { R1*16^\markup{ \bold \box "A1" \bold \box "A2" } R1*8^\markup{ \bold \box "B" } R1*8^\markup{ \bold \box "A3" } } }
}

refrainKicksOverTime = \relative f' {
  s1 |

  r2 d'4. d8 | s1 | r2 d'4. d8 | s1 | r2 d'4. d8 | s1 | r2 d'4. d8 |

  s1 |

  s1 |

  r2 d'4. d8 | s1 | r2 d'4. d8 | s1 | r2 d'4. d8 | s1 | r2 d'4. d8 |

  s1 |

  r2 d'4. d8 | s1 | r2 d'4. d8 | s1 | r2 d'4. d8 | s1 | r2 d'4. d8 |

}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"

chordDiagrams = {
  <e a d' g' b'>1
  <d g c' f' a'>
  <f bf ef' af' c''>
  <ef af df' gf' bf'>
}

\include "../Include/chord-diagrams.ily"
