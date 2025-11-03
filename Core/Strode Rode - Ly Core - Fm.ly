%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Strode Rode"
  subtitle = \instrument
  poet = ""
  composer = "Sonny Rollins"
  copyright = \markup \small "© 1956 Prestige Music"
}

refrainChords = \chordmode {
  f1:m7 g2:m7.5- c2:9.5+ f1:m7 g2:m7.5- c2:9.5+ 
  f1:m7 g2:m7.5- c2:9.5+ f1:m7 c2:7.5+ f2:m7
  bf1:m7 df2:7 c2:9.5+ f1:m7
  
  g2:m7.5- c2:7.5+
  
  \chordInsideParens{ f1:m7 }

  bf1:m7 ef1:7 af1:m7 df2:7 c2:7.5+

  f1:m7 g2:m7.5- c2:7.5+ f1:m7 g2:m7.5- c2:7.5+ 
  f1:m7 g2:m7.5- c2:7.5+ f1:m6 c2:7.5+ f2:m6
  bf1:m7 df2:7 c2:7.5+ f1:m7
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7.5+ }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Fast [Sonny Rollins 1956]" 4 = 256

  \sectStart "A1,A2"
  
  \bar ".|:"
  \repeat volta 2 {
  r4 c'4-^^"w/ drum rim shots" r8 c4-> r8 | c4.-> c8~-> c8 c4-^ r8 | 
  r8 c4-^ r8 r8 c4.-> | c4-> df4-> af4-> bf4-> | 
  c1_"Swing" |
  \break
  r1 | r1 | r2 r4 r8 f,8 | cf'4\repeatTie->( bf2) r8 f8 |
  \break
  \tuplet 3/2 { af4-> bf4( af4) } \tuplet 3/2 { f4( ef4 c4) } | \tuplet 3/2 { e4\repeatTie( f2~) } f2 |
  \alternative { \volta 1 {
  r1 |
  } \volta 2 {
  r1 |
  } } }
  \sect "B"
  
  r8^"ad lib. example" f8( a8) df8( f8 df8) a'8 c16( cf16 | bf8) af8( g8) f8( ef8) d8( df8) f8( |
  ef8) cf8( bf8 af8) bf8 g8( af8) bf8( | cf8) df8( ef8 df8) bf'8 g4-^ r8 |
  
  \sect "A3"

  r4 c,4-^^"w/ drum rim shots" r8 c4-> r8 | c4.-> c8~-> c8 c4-^ r8 | 
  r8 c4-^ r8 r8 c4.-> | c4-> df4-> af4-> bf4-> | 
  c1_"Swing" |
  \break
  r1 | r1 | r2 r4 r8 f,8 | cf'4\repeatTie->( bf2) r8 f8 |
  \tuplet 3/2 { af4-> bf4( af4) } \tuplet 3/2 { f4( ef4 c4) } | \tuplet 3/2 { e4\repeatTie( f2~) } f2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
