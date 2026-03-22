%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "You're a Heavenly Thing"
  subtitle = \instrument
  poet = ""
  composer = "Joe Young and Little Jack Little"
  copyright = \markup \small { \now " " "© 1935 Shapiro, Bernstein & Co. Inc." }
}

refrainLyrics = \lyricmode {
They took the moon -- light out of the skies
and put the moon -- light right in your eyes.
Like a June night, you're a heav -- en -- ly thing. __

They took the frag -- rance out of the dew
and sprink -- led ro -- ses all ov -- er you.
Like a gar -- den, you're a heav -- en -- ly thing. __

They made a cling -- ing vine your em -- brace,
stars that shine light your face.
To com -- bine ev -- 'ry -- thing,
on your lips they put a breath of spring.

And then they fin -- ished, called it a day.
They took the mo -- del, threw it a -- way.
Like an an -- gel, you're a heav -- en -- ly thing. __
}

refrainChords = \chordmode {
  c1 c1 a1:7 a1:7
  d1:7 g1:7 c2 cs2:dim7 d2:m7 g2:7

  c1 c1 a1:7 a1:7
  d1:7 g1:7 c2 f2 c2 d2:7
  
  g1:m7 c1:7 f1 f1
  a1:m7 d1:7 g1:7 g2:7 g2:7.5+

  c1 c1 a1:7 a1:7
  d1:7 g1:7 c2 f2 c2
  \chordInsideParens{ g2:7 }
}

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
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Mel Tormé 1951]" 118

  \sectStart "A1"
  
  r8 e'8 e8 d8 c8 a4. | e'8 d8 c8 a8~ a2 | r8 b8 b8 a8 g8 e4. | b'8 a8 g8 e8~ e2 |
  \break
  r4 e8 e8 a4 e4 | r4 g8 g8 d'8 ds8 e4 | a,1~ | a4 r4 r2 |
  
  \sect "A2"

  r8 e'8 e8 d8 c8 a4. | e'8 d8 c8 a8~ a2 | r8 b8 b8 a8 g8 e4. | b'8 a8 g8 e8~ e2 |
  \break
  r4 e8 e8 a4 e4 | r4 g8 g8 d'8 ds8 e4 | c1~ | c4 b4 c4 cs4 |
  
  \sect "B"
  
  d8 cs4 d8~ d2 | e,8 ds4 e8~ e2 | d'8 cs4 d8~ d2 | f,8 e4 f8~ f2 |
  \break
  e'8 ds4 e8~ e2 | fs,8 es4 fs8~ fs2 | g4 g4 g8 a8 b8 c8 | d8 d4 ds8~ ds2 |
  
  \sect "A3"

  r8 e8 e8 d8 c8 a4. | e'8 d8 c8 a8~ a2 | r8 b8 b8 a8 g8 e4. | b'8 a8 g8 e8~ e2 |
  \break
  r4 e8 e8 a4 e4 | r4 g8 g8 d'8 ds8 e4 | c1~ | c4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
