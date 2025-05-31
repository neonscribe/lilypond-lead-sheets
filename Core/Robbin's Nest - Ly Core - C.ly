%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Robbin's Nest"
  subtitle = \instrument
  poet = ""
  composer = "Illinois Jacquet and Sir Charles Thompson"
  copyright = \markup \small "© 1947 Atlantic Music Corp."
}

refrainChords = \chordmode {
  s2
  
  c1:6 c1:6 af1:7 af1:7
  e2:m7 ef2:dim7 d2:m7 g2:7
  
  c2:6 ef2:dim7 d2:m7 g2:7
  
  c1:6 df2:6 c2:6
  
  e1:7 e1:7 a1:7 a1:7
  d1:7 d1:7 g1:7 d2:m7 g2:7
  
  c1:6 c1:6 af1:7 af1:7
  e2:m7 ef2:dim7 d2:m7 g2:7 c1:6 df2:6 c2:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 104

  \partial 2 \invisEighth ds8 \tuplet 3/2 { e8 g8 b8 } |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  d8 c8 g8 e8 d'8 c4.~ | c2 r8 b,8 \tuplet 3/2 { c8 e8 g8 } |
  bf8 af8 ef8 c8 bf'8 af4.~ |
  \break
  af2. r8 g8~ | g4 e8 g8 gf8 ef8 c8 f8~ | f4 d8 f8 e8 e8 e8 c8~ |
  \break
  \alternative { \volta 1 {
  c1~ | c2 r8 ds8 \tuplet 3/2 { e8 g8 b8 } |
  } \volta 2 {
  c,1\repeatTie | r2 r4 e4 |
  } } }
  \sect "B"
  
  f8 e8 ds8 e8 b'2 | r2 r8 e,8 g8 a8 | bf4. a8~ a2 | r2 r4 c8 d8 |
  \break
  ef8 d8 c8 d8~ d2 | r2 r4 c8 d8 | ef4. d8~ d4 r4 | r2 r8 ds,8 \tuplet 3/2 { e8 g8 b8 } |

  \sect "A3"
  
  d8 c8 g8 e8 d'8 c4.~ | c2 r8 b,8 \tuplet 3/2 { c8 e8 g8 } |
  bf8 af8 ef8 c8 bf'8 af4.~ | af2. r8 g8~ |
  \break
  g4 e8 g8 gf8 ef8 c8 f8~ | f4 d8 f8 e8 g8 a8 c8~ | c1~ | c2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column {
\line { \large { Give me something gentle. Make it sentimental. } }
\line { \large { Whatever you do suggest, I'll take Robbin's Nest. } }
\vspace #1
\line { \large { Make it sweet and tender so I must surrender. } }
\line { \large { You know I'd like nothing but the best, so I'll take Robbin's Nest. } }
\vspace #1
\line { \large { For when I get that feeling goin' round 'n' round. } }
\line { \large { Something brings me down. Way down, way down. } }
\vspace #1
\line { \large { Give me something sweet and gentle. Make it sentimental. } }
\line { \large { Whatever you could suggest, I'll take Robbin's Nest. } }
} }