%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "(Ghost) Riders in the Sky (A Cowboy Legend)"
  subtitle = \instrument
  poet = "Lyricist"
  composer = "Composer"
  copyright = \markup \small { \now " " "© 1949 Edwin H. Morris & Company, Inc." }
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4
  
  e1:m g1 g1 e1:m
  e1:m e1:m e1:m c1
  c1 a2:m e1:m e1:m
  
  g1 g1 e1:m e1:m
  c1 a1:m 
  
  e1:m e8*3:m7 e8*5:m6
  
  e1:m e4:m/b a4:m e4:m/g b4:m/fs
  
  e1:m e1:m
}

refrainKey = e

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium" 120

  \partial 4 \invisEighth b,8 |

  \sectStart "Verse"
  
  \bar ".|:-||"
  
  b8 e8 e8 s8 g8 g8 g8 e8 | d8 d8 d8 b8 d2 | r2 r4 r8 b8 | b8 e16 e16~ e8 fs8 g8 g16 g16~ g8 a8 |
  b8 b16 b16~ b8 g8 b4 r8 b8 | b8 b8 e8 e8 e8 b16 b16~ b8 b8 |
  b16 b8. a8 g8 e4 r8 b8 | c8 c8 c8 c8 g'16 g8 g16~ g4 |
  r2 r4 r8 fs8 |
  \time 2/4
  g8 e8 e8 d8 |
  \numericTimeSignature
  \time 4/4
  e1 |
  
  \sect "Chorus"
  
  r2 <b' \har g \har e>8 <b \har g \har e>8 <b \har g \har e>4 |
  <d \har b \har g>1~ | <d \har b \har g>2  <e \har b \har g>8 <e \har b \har g>8 <e \har b \har g>4 |
  <e \har b \har g>2( <b \har g \har e>2~ | <b \har g \har e>2) r2 |
  <c, \har e \har g >2 <c \har e \har g >4( <c \har e \har g >4) |
  <g' \har e \har c'>2. <g \har e \har c'>4 |

  <e \har g \har b>1 |
  r2 r4 r8 b8 |  
  
  <e \har g \har b>1 |
  r2 r4 r8 b8 |  
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
