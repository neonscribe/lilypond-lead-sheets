%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Lullaby of the Leaves"
  subtitle = \instrument
  poet = "Joe Young"
  composer = "Bernice Petkere"
  copyright = \markup \small { \now " " "© 1932 Irving Berlin, Inc." }
}

refrainLyrics = \lyricmode {
  Cra -- dle me where south -- ern skies can watch me with a mil -- lion eyes, Oh
  sing me to sleep, Lul -- la -- by of the leaves. __
  
  Cov -- er me with heav -- en's blue and let me dream a dream or two, Oh
  sing me to sleep, Lul -- la -- by of the leaves. __ I'm
  
  breez -- ing a -- long, a -- long with the breeze,
  I'm hear -- ing a song, a song through the trees, Ooh,
  ooh, ooh ooh, ooh ooh.
  That pine mel -- o dy car -- ess -- ing the shore, Fa --
  mil -- iar to me, I've heard it be -- fore, Ooh ooh, ooh ooh.
  That's south -- land.
  
  Don't I feel it in my soul, and don't I know I've reached my goal, Oh
  sing me to sleep, Lul -- la -- by of the leaves. __
}

refrainNewRealTwoChords = \chordmode {
  c2:m a2:m7.5- d2:7 g2:7.5+ g2:m7 c2:7 f2:m7 ef2:9
  d1:m7.5- g1:7.5+ c1:m af2:7 g2:7

  c2:m a2:m7.5- d2:7 g2:7.5+ g2:m7 c2:7 f2:m7 ef2:9
  d1:m7.5- g1:7.5+ c1:m c1:m
  
  af1:7 af1:7 c2:6 g2:sus9 c2:6 c2:7
  af1:7 af1:7 c2:6 a2:7 d2:m7.5- g2:7.5+

  c2:m a2:m7.5- d2:7 g2:7.5+ g2:m7 c2:7 f2:m7 ef2:9
  d1:m7.5- g1:7.5+ c1:m
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7 }
}

refrainRalphAshmeadChords = \chordmode {
  c2:m a2:m7.5- d2:7 g2:7.13- g2:m7 c2:7 f2:m7 ef2:7
  d1:m7.5- g1:7.13- c1:m af2:7 g2:7.9-

  c2:m a2:m7.5- d2:7 g2:7.13- g2:m7 c2:7 f2:m7 ef2:7
  d1:m7.5- g1:7.13- c1:m c1:m
  
  af1:7 af1:7 c2:6 g2:sus9 c2:6 c2:7
  af1:7 af1:7 c2:6 a2:7 d2:m7.5- g2:7.13-

  c2:m a2:m7.5- d2:7 g2:7.13- g2:m7 c2:7 f2:m7 ef2:9
  d1:m7.5- g1:7.13- c1:m
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7.9- }
}

refrainChords = \refrainRalphAshmeadChords

refrainKey = c

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Slow [George Olsen 1932]" 4 = 106

  \xTextMark \markup{ \bold \box "A1" }
  
  c4. d8 ef4. f8 | fs4 g4 ef'4. d8 | c4. d8 c4. g8 | bf4 af4 ef4 f4 |
  \break
  \tuplet 3/2 { g4 g4 g4 } g2 | \tuplet 3/2 { g4 g4 g4 } g4 ef4 | c1~ | c2 r2 |
  
  \sect "A2"
  
  c4. d8 ef4. f8 | fs4 g4 ef'4. d8 | c4. d8 c4. g8 | bf4 af4 ef4 f4 |
  \break
  \tuplet 3/2 { g4 g4 g4 } g2 | \tuplet 3/2 { g4 g4 g4 } g4 ef4 | c1~ | c2. r8 c8 |
  
  \sect "B"
  
  \tuplet 3/2 { c8 cs8 d8 } ef8 ef8 \tuplet 3/2 { ef8 d8 df8 } c8 c8 |
  \tuplet 3/2 { c8 cs8 d8 } ef8 ef8 \tuplet 3/2 { ef8 d8 df8 } c8 c8 |
  g'4. e8 g4. e8 | g2. r8 c,8 |
  \break
  \tuplet 3/2 { c8 cs8 d8 } ef8 ef8 \tuplet 3/2 { ef8 d8 df8 } c8 c8 |
  \tuplet 3/2 { c8 cs8 d8 } ef8 ef8 \tuplet 3/2 { ef8 d8 df8 } c8 c8 |
  g'4. e8 g2 | r4 ef4 ef4 d4 |
  \sect "A3"

  c4. d8 ef4. f8 | fs4 g4 ef'4. d8 | c4. d8 c4. g8 | bf4 af4 ef4 f4 |
  \break
  \tuplet 3/2 { g4 g4 g4 } g2 | \tuplet 3/2 { g4 g4 g4 } ef'4 ef4 | c1~ | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
