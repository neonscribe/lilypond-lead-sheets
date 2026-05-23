%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Maiden Voyage"
  subtitle = \subtitle
  poet = ""
  composer = "Herbie Hancock"
  copyright = \markup \small { \now " " "© 1965 Hancock Music Inc." }
}

refrainChords = \chordmode {
  s4

  d1:sus7 d1:sus7 d1:sus7 d1:sus7
  f1:sus7 f1:sus7 f1:sus7

  f1:sus7

  f1:sus7

  ef1:sus7 ef1:sus7 ef1:sus7 ef1:sus7
  df1:sus7 df1:sus7 df1:sus7 df1:sus7
  d1:sus7 d1:sus7 d1:sus7 d1:sus7
  f1:sus7 f1:sus7 f1:sus7 f1:sus7
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Herbie Hancock 1966]" 125

  \partial 4 a8 d8 |

  \sectNoBarNoBreak "A1, A2"

  \bar ".|:"
  \repeat volta 2 {
  d1~ | d1~ | d1 | r2 r4 c8 d8 |
  \break
  ef8 f8 c2.~ | c1~ | c1 |
  \alternative {
    \volta 1 {
  r2 r4 a8 d8 |
  } \volta 2 {
  r2 r4 c8 f8 |
  } } }

  \sect "B"

  f1~ | f1~ | f1 | r2 r4 ef8 ff8 |
  \break
  ff8 gf8 df2.~ | df1~ | df1 | r2 r4 a8 d8 |

  \sect "A3"

  d1~ | d1~ | d1 | r2 r4 c8 d8 |
  \break
  ef8 f8 c2.~ | c1~ | c1 | r1 |

  \bar "|."
}

refrainBass = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass

  \partial 4 s4 |

  \improvisationOn
  d,4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. _"(bass continue similar)" d8~ d8
  \improvisationOff
  a8 d8 a8 |

  %{
  \bar ".|:"
  \repeat volta 2 {
  \improvisationOn
  d,4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  c8 f8 c8 |
  \improvisationOn
  d4 d4~ d8 d4.~ |
  \alternative {
    \volta 1 {
  d4. d8~ d8
  \improvisationOff
  c8 f8 c8 |
  }
    \volta 2 {
  \improvisationOn
  d4. d8~ d8
  \improvisationOff
  bf8 ef8 bf8 |
  } } }

  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  bf8 d!8 bf8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  af8 df8 af8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  af8 df8 af8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a!8 d8 a8 |

  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  c8 f8 c8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  c8 f8 c8 |
  \improvisationOn
  d4 d4~ d8 d4.~ |
  d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |

  \bar "|."
  %}
}


\include "../Include/paper.ily"

\include "../Include/refrain.ily"

\markup { "Use chords and bass of " \bold \box "A" " for intro and outro." }