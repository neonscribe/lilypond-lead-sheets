%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Blues March"
  subtitle = \instrument
  poet = ""
  composer = "Benny Golson"
  copyright = \markup \small { \now " " "© 1958 Ibbob Music, Inc." }
}

keepWeirdAccidentals = ##t

refrainChords = \chordmode {
  s4

  bf1:7 ef1:7 bf1:7 bf1:7
  ef2:7 af2:7 df2:7 gf2:7 g2:m7.5- af2:7 a2:7 bf4:7 g4:7
  c1:m7.5- f4:7 r2. bf2:7 df2:7 gf2:7 b2:7

  bf1:7 ef1:7 bf1:7 bf1:7
  ef2:7 af2:7 df2:7 gf2:7 g2:m7.5- af2:7 a2:7 bf4:7 g4:7
  c1:m7.5- f4:7 r2. bf2:7 df2:7 gf2:7 b2:7

  bf2:7 df2:7 gf2:7 bf2
  bf2:7 df2:7 gf2:7 bf2
  bf2:7 df2:7 gf2:7 b2:7
  bf1:7.9+ bf1:7.9+
}

refrainKey = bf

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium" 120

  \partial 4 \invisEighth f8 |
  \bar "||"

  bf2 \tuplet 3/2 { d8 bf8 r8 } r8 bf8 | df2 \tuplet 3/2 { ef8 df8 r8 } r8 f,8 |
  bf2. d8-. d8 | bf2 af4 r8 f8 |
  \break

  bf8-. bf8 df8-. df8 \tuplet 3/2 { ef8 ff8 ef8 } \tuplet 3/2 { df8 bf8 df8 } |
  bf8-. bf8 a8-. a8 gf8-. gf8 df8-. ef8 | f2~ f8 f8 \tuplet 3/2 { af8 f8 af8 } |
  gf2 r8 gf8 b8-. df8 |
  \break
  
  bf4~ \tuplet 3/2 { bf8 af8 gf8 } bf4~ \tuplet 3/2 { bf8 af8 gf8 } |
  a4-. f'8-. f8 \tuplet 3/2 { ef8 c8 a8 } f8-. ef8 | \acciaccatura cs8 d8 bf'4.~ bf2~ | bf2 r4 r8 f8 |
  \bar "||-||"
  \break

  bf2 \tuplet 3/2 { d8 bf8 r8 } r8 bf8 | df2 \tuplet 3/2 { ef8 df8 r8 } r8 f,8 |
  bf2. d8-. d8 | bf2 af4 r8 f8 |
  \break
  
  bf8-. bf8 df8-. df8 \tuplet 3/2 { ef8 ff8 ef8 } \tuplet 3/2 { df8 bf8 df8 } |
  bf8-. bf8 a8-. a8 gf8-. gf8 df8-. ef8 | f2~ f8 f8 \tuplet 3/2 { af8 f8 af8 } |
  gf2 r8 gf8 b8-. df8 |
  \break
  
  bf4~ \tuplet 3/2 { bf8 af8 gf8 } bf4~ \tuplet 3/2 { bf8 af8 gf8 } |
  a4-. f'8-. f8 \tuplet 3/2 { ef8 c8 a8 } f8-. ef8 \textToCodaLastTime |
  \acciaccatura cs8 d8 bf'4.~ bf2~ | bf2 r2 |
  \bar "||-|."

  \textCodaBreak

  \acciaccatura cs,8 d8 bf'4.~ bf2 |
  r4 f'8-. f8 \tuplet 3/2 { ef8 c8 a8 } f8-. ef8 |
  \acciaccatura cs8 d8 bf'4.~ bf2 |
  r4 f'8-. f8 \tuplet 3/2 { ef8 c8 a8 } f8-. ef8 |
  \break
  
  \acciaccatura cs8 d8 bf'4.~ bf2 |
  r4 f'8-. f8 \tuplet 3/2 { ef8 c8 a8 } f8-. ef8 |
  \acciaccatura cs8 d8 bf'4.~ bf2~ | bf1\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
