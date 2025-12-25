%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Lullaby of Birdland"
  subtitle = \instrument
  poet = "B. Y. Forster"
  composer = "George Shearing"
  copyright = \markup \small { \now " " "© 1952 Patricia Music Publishing Corp." }
}

%%% Sarah Vaughan intro

introLyrics = \lyricmode {
  Ba- ba- ba- ba- bweep, bweep, deep, dee- ah, ba- ba- doop- boo- deep, bee- ya.
}

introChords = \chordmode {
  f2:m bf2:6 bf2:sus7 ef2:1.3.5.9 af2:sus7 df4.:6.9 gf8*9:9.11+
}

introKey = af

introMelody = \relative c' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  
  \xTextMark \markup{ "Sarah Vaughan Intro" }
  f8 f8 f8 f8 g4 g4 | ef4 ef8 f8~ f4 r4 | df8 df8 df8 df8 ef4 ef8 c8~ | c2. r4 |
  
  \bar "||"
}

refrainLyrics = \lyricmode {
  Lul -- la -- by of Bird -- land that's what I al -- ways hear when you sigh.
  Nev -- er in my word -- land could there be ways to re -- veal, in a phrase, how I feel!
  Have you ev -- er heard two tur -- tle doves bill and coo when they love?
  That's the kind of mag -- ic mu -- sic we make with our lips when we kiss!
  And there's a weep -- y old wil -- low; He real -- ly knows how to cry!
  That's how I'd cry in my pil -- low if you should tell me fare -- well and good -- bye!
  Lul -- la -- by of Bird -- land, whis -- per low, kiss me sweet and we'll go
  fly -- in' high in Bird -- land, high in the sky up a -- bove, we're in love.
}

%%% Real Book 6th chords

refrainChords = \chordmode {
  f2:m d2:m7.5- g2:7.9- c2:7 f2:m d2:m7.5- bf2:m7 ef2:7
  af2:maj7 f2:m7 bf2:m7 ef2:7 af1:maj7 g2:m7.5- c2:7
  
  f2:m d2:m7.5- g2:7.9- c2:7 f2:m d2:m7.5- bf2:m7 ef2:7
  af2:maj7 f2:m7 bf2:m7 ef2:7 af2:maj7 ef2:7 af1:maj7
  
  f1:7 bf1:m7 bf2:m7 ef2:7 af1:maj7
  f1:7 bf1:m7 bf2:m7 ef2:7 af2:maj7 c2:7
  
  f2:m d2:m7.5- g2:7.9- c2:7 f2:m d2:m7.5- bf2:m7 ef2:7
  af2:maj7 f2:m7 bf2:m7 ef2:7 af2:maj7 ef4.:7 af8:6 af1:6
  }

refrainKey = af

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative c' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Sarah Vaughan 1954]" 4 = 116
  
  \sectStart "A1"

  c'8 c8 bf8 af8 g8 f4. | df4 f8 e8~ e2 | c4 g'8 f8~ f2 | df4 c'8 bf8~ bf2 |
  ef8 ef8 df8 c8 bf8 af4 f8~ | f8 c'8 bf8 e,8~ e8 c'8 bf8 ef,8~ |
  ef2 r8 bf'8 af8 df,8~ | df8 af'8 g8 c,8~ c2 |

  \sect"A2"

  c'8 c8 bf8 af8 g8 f4. | df4 f8 e8~ e2 | c4 g'8 f8~ f2 | df4 c'8 bf8~ bf2 |
  ef8 ef8 df8 c8 bf8 af4 f8~ | f8 c'8 bf8 e,8~ e8 c'8 bf8 ef,8~ |
  ef2 r8 ef8 g8 af8 | r1 |

  \sect "B"

  c4 df8 d8 ef8 c8 ef8 df8 | r8 bf4.~ bf4 r4 |
  bf4 b8 c8 df8 bf8 df8 c8~ | c2 r2 |
  c4 df8 d8 ef8 c8 ef8 df8 | r8 bf4.~ bf4 r4 |
  bf4 b8 c8 df8 bf8 df8 c8~ | c8 df8 c8 bf8 r2 |
  
  \sect "A3"

  c8 c8 bf8 af8 g8 f4. | df4 f8 e8~ e2 | c4 g'8 f8~ f2 | df4 c'8 bf8~ bf2 |
  ef8 ef8 df8 c8 bf8 af4 f8~ | f8 c'8 bf8 e,8~ e8 c'8 bf8 ef,8~ |
  ef2 r8 ef8 g8 af8 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"
\pageBreak
\include "../Include/refrain.ily"
