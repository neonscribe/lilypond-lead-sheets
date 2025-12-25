%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "You Belong to Me (vanilla arrangement)"
  subtitle = \instrument
  poet = ""
  composer = "Pee Wee King, Redd Stewart and Chilton Price"
  copyright = \markup \small { \now " " "© 1952 Ridgeway Music Company, Inc." }
}

refrainLyrics = \lyricmode {
See the pyr -- a -- mids a -- long the Nile. __
Watch the sun -- rise on a tro -- pic isle. __
Just re -- mem -- ber, dar -- ling, all the while, __
you be -- long to me.

See the mar -- ket -- place, in old Al -- giers. __
Send me pho -- to -- graphs and sou -- ve -- nirs. __
Just re -- mem -- ber, when a dream ap -- pears, __
you be -- long to me.

I'll be so a -- lone with -- out you, __
may -- be you'll be lone -- some too and blue.

Fly the o -- cean in a sil -- ver plane. __
See the jun -- gle when it's wet with rain. __
Just re -- mem -- ber, 'til you're home a -- gain, __
you be -- long to me.
}

refrainChords = \chordmode {
  bf1 bf1 ef1 ef2 g2:7 c2:m ef2:m6 bf1 c1:7 f1:7

  bf1 bf1 ef1 ef2 g2:7 c2:m ef2:m6 bf1 c2:7 f2:7 bf1

  bf1:7 bf1:7 ef1 ef1 c1:7 c1:7 f1:7 f1:7

  bf1 bf1 ef1 ef2 g2:7 c2:m ef2:m6 bf1 c2:7 f2:7 bf1
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
  \tempo "Ballad [Jo Stafford 1952]" 4 = 70

  \sectStart "A1"
  
  r4 bf8 c8 d8 c8 bf8 d8 | a4 a8 a8~ a2 | r4 g8 a8 bf8 a8 g8 bf8 | f4 f8 f8~ f2 |
  r4 ef8 f8 ef8 d8 c8 ef8 | d4 f8 bf8~ bf2 | r4 d8 c8 bf4. c8 | f,1 |
  
  \sect "A2"

  r4 bf8 c8 d8 c8 bf8 d8 | a4 a8 a8~ a2 | r4 g8 a8 bf8 a8 g8 bf8 | f4 f8 f8~ f2 |
  r4 ef8 f8 ef8 d8 c8 ef8 | d4 f8 bf8~ bf2 | r4 c8 bf8 a4. c8 | bf1 |
  
  \sect "B"
  
  bf4 f4 e4 f4 | c'2. bf4 | af2 g2~ | g1 | c4 g4 fs4 g4 | d'2. c4 | a2. c4 | g1 |
  
  \sect "A3"

  r4 bf8 c8 d8 c8 bf8 d8 | a4 a8 a8~ a2 | r4 g8 a8 bf8 a8 g8 bf8 | f4 f8 f8~ f2 |
  r4 ef8 f8 ef8 d8 c8 ef8 | d4 f8 bf8~ bf2 | r4 c8 bf8 a4. c8 | bf1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
