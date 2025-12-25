%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "No Regrets"
  subtitle = \instrument
  poet = "Harry Tobias"
  composer = "Roy Ingraham"
  copyright = \markup \small { \now " " "© 1936 Tobias Harry Music" }
}

refrainLyrics = \lyricmode {
No re -- rets, al -- though our love af -- fair has gone a -- stray.
No re -- rets, I know I'll al -- ways care though you're a -- way.
Some -- how our hap -- py ro -- mance end -- ed sud -- den -- ly.
Still in my heart you'll be for -- ev -- er mine.
No re -- rets, be -- cause some -- bod -- y new looks good to you.
No re -- rets, sweet -- heart, no mat -- ter what you say or do.
I know our love will lin -- ger when the oth -- er love for -- gets.
So I say “good -- bye” with no re -- rets.
}

refrainChords = \chordmode {
  s2

  g1 g1 b1:7 b1:7
  e1:m e1:m e1:7 e1:7
  
  a1:m7 d1:7 b1:7 e1:m 
  a1:7 a1:7 a1:m7 d1:7
  
  g1 g1 b1:7 b1:7
  e1:m e1:m e1:7 e1:7
  
  a1:m7 d1:7 g2 f2:7 e2.:7 e4:dim7
  a1:m7 a2:7 d2:7 g1
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

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
  \tempo "Medium" 4 = 120

  \partial 2 b4. b8 |

  \sectStart "A1"
  
  d1 | r4 b4 a8 g8 fs8 e8 | ds4. b'8 b4. bf8 | a2 g4. g8 |
  \break
  b1 | r4 g4 fs8 e8 d8 c8 | b4. fs'8 fs4. f8 | e2. b4 |

  \sect "B"
  
  c4 d4 ds4 e4 | b'4 b4 b4 fs4 | a4. af8 g2 | r4 g4 b4 g4 |
  \break
  fs4. f8 e2 | r4 e4 g4 b4 | a1~ | a4 r4 b4. b8 |

  \sect "A2"

  d1 | r4 b4 a8 g8 fs8 e8 | ds4. b'8 b4. bf8 | a2 g4. g8 |
  \break
  b1 | r4 g4 fs8 e8 d8 c8 | b4. fs'8 fs4. f8 | e2. b4 |

  \sect "C"
  
  c4 d4 ds4 e4 | b'4 b2 a8 a8 | fs4 g4 a4 b4 | d2. df4 |
  \break
  c2 ds,4 e4 | b'4. b8 b4. b8 | g1~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
