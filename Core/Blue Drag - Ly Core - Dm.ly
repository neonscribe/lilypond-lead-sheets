%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Blue Drag"
  subtitle = \instrument
  poet = ""
  composer = "Josef Myrow"
  copyright = "© 1932 EMI Mills Music Inc."
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  s1 s1
  d4:m c4:7 g4:m7 a4:7 d4:m c4:7 g4:m7 a4:7 
}

introKey = d

introMelody = \relative f {
  \time 4/4
  \key \introKey \minor
  \clef bass
  \tempo "Medium-Slow Swing" 4 = 115
  
  \mark \markup{ "Intro, bass only" }

  d4 c4 bf4 a4 | d4 c4 bf4 a4 | 

  \clef treble

  \mark \markup{ "guitars join" }

  d''4 c4 bf4 a4 | d4 c4 bf4 a4 |

  \bar "||"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  d2:m d2:m/c b2:m7.5- bf2:7 d2:m d2:m/c b2:m7.5- bf2:7
  d1:m e1:m7.5- bf2:7 a2:7 d2:m a2:7

  d2:m d2:m/c b2:m7.5- bf2:7 d2:m d2:m/c b2:m7.5- bf2:7
  d1:m e1:m7.5- bf2:7 a2:7 d1:m

  g1:m6 g1:m6 d1:m d1:m
  g1:m6 g1:m6 d2:m c2:7 bf2:7 a2:7

  d2:m d2:m/c b2:m7.5- bf2:7 d2:m d2:m/c b2:m7.5- bf2:7
  d1:m e1:m7.5- bf2:7 a2:7 d2:m a2:7
}

refrainKey = d

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef

  \mark \markup{ \box "A1" }
  
  f8 a8 r8 f8 a4 a4 | f2 d4 r4 | f8 a8 r8 f8 a4 a4 | f2 r2 |
  \break
  f8 a8 r8 f8 a4 a4 | g2 r4 d8 d8 | a'8 af8~ af4 g8 f8 d8 d8~ | d1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  f8 a8 r8 f8 a4 a4 | f2 d4 r4 | f8 a8 r8 f8 a4 a4 | f2 r2 |
  \break
  f8 a8 r8 f8 a4 a4 | g2 r4 d8 d8 | a'8 af8~ af4 g8 f8 d8 d8~ | d2 r4 bf'8 a8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  g8 g4 a8 f8 f4 g8 | e8 e4 f8 d8 e8 f8 g8 | a4. f8 a2~ | a4 r4 bf4. a8 |
  \break
  g8 g4 a8 f8 f4 g8 | e8 e4 f8 d8 e8 f8 g8 | a4. f8 a2 | r1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  f8 a8 r8 f8 a4 a4 | f2 d4 r4 | f8 a8 r8 f8 a4 a4 | f2 r2 |
  \break
  f8 a8 r8 f8 a4 a4 | g2 r4 d8 d8 | a'8 af8~ af4 g8 f8 d8 d8~ | d2 r2 |
  
  \bar "|."
}

outroLyrics = \lyricmode {
}

outroChords = \chordmode {
  d4:m c4:7 g4:m7 a4:7 d4:m c4:7 g4:m7 a4:7 
  s1 s1 s1
}

outroKey = d

outroMelody = \relative f {
  \time 4/4
  \key \outroKey \minor
  \clef treble
  
  \mark \markup{ "Outro, bass and guitars" }

  d''4 c4 bf4 a4 | d4 c4 bf4 a4 |

  \clef bass

  \mark \markup{ "bass only" }

  d,,4 c4 bf4 a4 | d4 c4 bf4 a4 | d1

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

$(if (defined? 'introKeyOverride)
  (set! whatKey introKeyOverride))

\include "../Include/intro.ily"

$(if (defined? 'refrainKeyOverride)
  (set! whatKey refrainKeyOverride))

\include "../Include/refrain.ily"

$(if (defined? 'outroKeyOverride)
  (set! whatKey outroKeyOverride))

\include "../Include/outro.ily"
