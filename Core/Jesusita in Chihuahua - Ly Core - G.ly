%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Jesusita en Chihuahua"
  subtitle = "aka J.C. Polka, Jess(i)e Polka, Cactus Polka"
  subsubtitle = \instrument
  poet = ""
  composer = "Quirino Mendoza y Cortés"
  copyright = \markup \small "1916"
}

straightEighths = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2.

  g1 g1 g1 a1:m
  a1:m d1:7 d1:7 g2 d2:7
  g1 g1 g1 c1
  c2 cs2:dim7 g2/d e2:7 a2:m d2:7

  g1
  
  g1
  
  c1 c1 f1 f1
  g1:7 g1:7 c1 c1
  
  c1 c1 f1 f1
  g1:7 g1:7
  
  c1 c1

  c2 cs2 d1

  g1 g1 d1:7 g1
  g1 g1 a2:m d2:7
  
  g1
  
  g1
  
  g1 g1 g1 a1:m
  a1:m d1:7 d1:7 g2 d2:7
  g1 g1 g1 c1
  c2 cs2:dim7 g2/d e2:7 a2:m d2:7
  
  g1
  
  g1
  
  a1:7 d1 a1:7 d1
  a1:7 d1 a1:7
  
  d1
  
  d2 d2:7

  g1 g1 g1 a1:m
  a1:m d1:7 d1:7 g2 d2:7
  g1 g1 g1 c1
  c2 cs2:dim7 g2/d e2:7 a2:m d2:7

  g1
}

refrainKey = g

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Mexican Polka" 2 = 135

  \xTextMark \markup{ \bold \box "A" }
  
  \partial 2. d4-.\upbow df4-. c4-. |
  
  \bar ".|:"
  \repeat volta 2 {

  b2 c4-.( e4)-. | d2 cs4-.( d4)-. | g4 r8 d8( cs4 d4) | fs4-. e4-. ds4-. e4-. |
  \break
  a2 \appoggiatura{ g16 a16 } g4-.( e4)-. | g2 fs4-.( c4)-. |
  fs4 r8 \appoggiatura{ c16 d16 } c8( b4 c4)-. | e4-. d4-. df4-. c4-. |
  \break
  b2 c4-.( e4)-. | d2 cs4-.( d4)-. | b'4 r8 \appoggiatura{ g16 a16 } g8( fs4-. g4)-. |
  a4-. e4-. ds4-. e4-. |
  \break
  a4 r8 g8 fs4-. e4-. |
  g4-. d4-. cs4-. d4-. | 
  e8 g8 fs8 e8 d8 c8 b8 a8 |
  } \alternative {{
  g4 d'4-. df4-. c4-. |
  }{
  g4 }}
  \bar "!"
  e4( f4 fs4) |
  \bar ".|:-||"
  \break
  \key c \major
  \xTextMark \markup{ \bold \box "B" }
  \repeat volta 2 {
  g1~\downbow_\markup \italic { "Repeat 8va" } | g4 e4( f4 g4) | a1~ | a4 f4( g4 a4) |
  \break
  b1 | a2( b2) | a4 r8 g8( fs4 a4) | g4-. e4( f4 fs4) |
  \break
  g4-. g8( fs8 g4)-. g8( f8 | g4)-. e4( f4 g4) | a4-. a8( gs8 a4)-. a8( g8 | a4)-. f4( g4 a4) |
  \break
  b1 | a2( b2) |
  } \alternative {{
    d4 r8 c8 b4-. d4-. | c4-. \ottava #1 e4( f4 fs4) \ottava #0 |
    }{
    d4 r8 c8 b4 d4 | c4 r4 r2 |
    }}
  \bar ".|:-||"
  \break
  \key g \major
  \xTextMark \markup{ \bold \box "C" }
  \repeat volta 2 {
  d,8\downbow e8 fs8 g8 a8 b8 c8 d8 | e8 d8 b8 g8 d4 g'4 | fs8 e8 c8 a8 fs4 fs'4 | e8 d8 b8 g8 d4 r4 |
  \break
  d8\downbow e8 fs8 g8 a8 b8 c8 d8 | e8 d8 b8 g8 d4 g'4 | fs8 e8 c8 a8 e'8 d8 c8 a8 |
  } \alternative {{
    g2 r2 |
    }{
    g2 r4 \bar "!" d'4\upbow |
    }}
  \bar ".|:-||"
  \xPageBreak
  \xTextMark \markup{ \bold \box "A'" }
  \repeat volta 2 {
    b'8\downbow d,8 d8 d8 a'8 d,8 d8 d8 | g8 d8 d8 d8 d8 d8 d8 d8 |
    g8 d8 d8 d8 fs8 d8 d8 d8 | e8 d8 d8 d8 d8 d8 d8 d8 |
    \break
    a'8 c,8 c8 c8 g'8 c,8 c8 c8 | fs8 c8 c8 c8 c8 c8 c8 c8 | 
    fs8 c8 c8 c8 e8 c8 c8 c8 | d8 b8 b8 b8 b8 b8 b8 b8 |
    \break
    b'8 d,8 d8 d8 a'8 d,8 d8 d8 | g8 d8 d8 d8 d8 d8 d8 d8 |
    g4. a16( g16 fs8 g8) fs8 g8 | a4 e2 ds8 e8 |
    \break
    a2 \appoggiatura{ g16 a16 } fs4-.( e4)-. | g4-. d4-. cs4-. d4-. |
    e8 g8 fs8 e8 d8 c8 b8 a8 |
  } \alternative {{
    g2 r4 d'4\upbow |
    }{
      g2 r2 |
  }}
  \bar ".|:-||"
  \break
  \key d \major
  \xTextMark \markup{ \bold \box "D" }
  \repeat volta 2 {
  a4\downbow r4 g4 r4 | fs4 e8 fs8 g4-.( fs4)-. | e4 d8 e8 fs4-.( e4)-. | d8 a8 fs8 a8 d8 e8 fs8 g8 |
  \break
  a4 r4 g4 r4 | fs4 e8 fs8 g4-.( fs4)-. | e4 d8 e8 fs4-.( e4)-. |
  } \alternative {{
    d2 r2 |
    }{
    d4 d4-. df4-. c4-. |
    }}

  \sect "A"
  
  b2 c4-.( e4)-. | d2 cs4-.( d4)-. | g4 r8 d8( cs4 d4) | fs4-. e4-. ds4-. e4-. |
  \break
  a2 \appoggiatura{ g16 a16 } g4-.( e4)-. | g2 fs4-.( c4)-. |
  fs4 r8 \appoggiatura{ c16 d16 } c8( b4 c4)-. | e4-. d4-. df4-. c4-. |
  \break
  b2 c4-.( e4)-. | d2 cs4-.( d4)-. | b'4 r8 \appoggiatura{ g16 a16 } g8( fs4-. g4)-. |
  a4-. e4-. ds4-. e4-. |
  \break
  a4 r8 g8 fs4-. e4-. |
  g4-. d4-. cs4-. d4-. |
  e8 g8 fs8 e8 d8 c8 b8 a8 |
  g4 r4 g4 r4 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
