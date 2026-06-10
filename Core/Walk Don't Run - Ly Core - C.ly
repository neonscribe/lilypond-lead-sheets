%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:57.706579Z"

\include "../Include/lead-sheets.ily"

headerTitle =  "Walk, Don't Run (as recorded by The Ventures)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer =  "Johnny Smith"
headerCopyright = "© 1960 Peermusic Ltd. and Mesa Verde Music Co."

straightEighths = ##t

refrainChords =  \chordmode {
  s1*3

  a2 g2 f8*3 e8*5 a2 g2 f8*3 e8*5

  a2 g2 f2 e2 a2 g2 f1
  c1 g1 c8*7 e8*9

  a2 g2 f2 e2 a2 g2 f1
  c1 g1 c2 f8*3 c8*9

  c1 c1 a1:m a1:m
  f1 e1 a1:m a1:m

  a2 g2 f2 e2 a2 g2 f1
  c1

  g1 c2 f2 c2 g2 c8 r8*7

  g1 c2 f2 c1
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody =  \relative a' {
  \clef \whatClef
  \time 4/4
  \key \refrainKey \major
  \tempoFour "Straight Eights [The Ventures 1960]" 150

  \bar ".|:"
  \repeat volta 2 {

  \sectNoBarNoBreak "Intro"

  \override MultiMeasureRest.expand-limit = 2
  \compressMMRests { R1*3_"(Drums)" }

  r1 | r1 | r1 | r2 r8 e4 a8~ |

  \sect "A1"

  a8 a,8 b8 c8~ c8 d8 e8 f8~ | f8 g8 a8
  \once \override TrillSpanner.bound-details.left.text = ##f
  c8~\startTrillSpan c4 b4\stopTrillSpan |
  a8 a,8 b8 c8~ c8 d8 e8 <f a>8~ | <f a>8 <g b>8 <a c>4 <g b>4 <f a>4 |

  e8 ds8 r8
  \once \override TrillSpanner.bound-details.left.text = ##f
  <e g>8~\startTrillSpan <e g>2 | r8\stopTrillSpan d8 e8 f8 e4 d4 |
  c4 \tuplet 3/2 { d8 e8 d8 } c8 d8 r8 <e gs>8 | r8 <e gs>8 <e gs>8 <e gs>8 <e gs>8 <e gs>8 b8 a8 |

  \sect "A2"

  a'8 a,8 b8 c8~ c8 d8 e8 f8~ | f8 g8 a8
  \once \override TrillSpanner.bound-details.left.text = ##f
  c8~\startTrillSpan c4 b4\stopTrillSpan |
  a8 a,8 b8 c8~ c8 d8 e8 f8~ | f8 g8 <a c>8 <g b>8~ <g b>4 <f a>4 |

  e8 ds8 r8
  \once \override TrillSpanner.bound-details.left.text = ##f
  <e g>8~\startTrillSpan <e g>2 | r8\stopTrillSpan d8 e8 f8 e4 d4 |
  c4 \tuplet 3/2 { d8 e8 d8 } c8 d4 c8~ | c8 g8 a8 b8 c8 d8 e8 f8 |

  \sectPageBreak "B"

  g8( fs8 g8)
  \once \override TrillSpanner.bound-details.left.text = ##f
  g8~\startTrillSpan g2 |
  r8\stopTrillSpan <g c>8 r8 <g c>8 <g c>8 <g c>8 <g c>8 <g c>8 |
  e8 <a c>8 r8 e8 <a c>2 | <a c>4( <gs b>8
  \once \override TrillSpanner.bound-details.left.text = ##f
  <a c>8~\startTrillSpan <a c>2) |
  \break
  a8\stopTrillSpan f8 c8 a'8~ a8 f8 c4 | b'8 gs8 e8 b'8~ b8 gs8 e4 |
  \once \override TrillSpanner.bound-details.left.text = ##f
  <a c>2~\startTrillSpan <a c>4. e8~\stopTrillSpan | e4 d4 c4 b4 |

  \sect "A3"

  a'8 a,8 b8 c8~ c8 d8 e8 f8~ | f8 g8 a8
  \once \override TrillSpanner.bound-details.left.text = ##f
  c8~\startTrillSpan c4 b4\stopTrillSpan |
  a8 a,8 b8 c8~ c8 d8 e8 <f a>8~ | <f a>8 <g b>8 <a c>4 <g b>4 <f a>4 |

  e8 ds8 r8
  \once \override TrillSpanner.bound-details.left.text = ##f
  <e g>8~\startTrillSpan <e g>2 |

  \break

  \alternative { \volta 1 {

  r8\stopTrillSpan d8 e8 f8 e4 d4 |
  c4 \tuplet 3/2 { d8 e8 d8 } c2 | r8 <e g c>8 r4 <g b d>4 <g b d>4 |

  <e g c>8 r8 r4 r2 |

  \break

  } \volta 2 {

  r8 d8 e8 f8 e4 d4 |
  <e g c>4-. <e g c>4-. <a c f>4-. <a c f>4 |
  r8 <c e g c>8( <b ds fs b>8 <c e g c>8~ <c e g c>2) |
  } } }
  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s1*3

  a8 a8 a8 r8 g8 g8 g8 r8 | f8 f8 f8 e8~ e8 r8 r4 |
  a8 a8 a8 r8 g8 g8 g8 r8 | f8 f8 f8 e8~ e8 r8 r4 |
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
