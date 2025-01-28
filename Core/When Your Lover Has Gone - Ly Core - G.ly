%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "When Your Lover Has Gone"
  subtitle = \instrument
  poet = ""
  composer = "E.A. Swan"
  copyright = "© 1931 Warner Bros. Inc."
}

refrainLyrics = \lyricmode {
When you're a -- lone who cares for star -- lit skies?
When you're a -- lone the ma -- gic moon -- light dies.
At break of dawn there is no sun -- rise when your lov -- er has gone. __

What lone -- ly hours the eve -- ning shad -- ows bring.
What lone -- ly hours, with mem -- 'ries lin -- ger -- ing.

Like fad -- ed flow'rs, life can't mean any -- y -- thing
when your lov -- er has gone. __
}

refrainChords = \chordmode {
  g1:maj7 g1:6 c1:9.11+ c1:7
  a1:7 a1:7 f1:9.11+ f1:9
  
  g1:maj7 e1:m7 a1:7 bf1:dim7
  b2:m7 e2:7.5+ a2:m7 d2:9 b2:m7 e2:7.5+ a2:m7 d2:7.5+

  g1:maj7 g1:6 c1:9.11+ c1:7
  a1:7 a1:7 f1:9.11+ f1:9
  
  g1:maj7 e1:m7 g2:maj7 f2:9 e1:7
  a1:m7 ef2:7 d2:7.5+ g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 124

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 fs4 fs4 f4 | e2. r4 | r4 fs4 fs4 f4 | f4 e4 e2 |
  \break
  r4 b'4 b4 bf4 | a2. r4 | r4 b4 b4 bf4 | bf4 a4 a2 |
  
  \sect "B"
  
  r4 d4 d4 b4 | g2. r4 | r4 b4 b4 g4 | fs2 e2 |
  \break
  r2 d4 e4 | fs4 d4 fs2 | d1~ | d2. r4 |
  
  \sect "A2"
  
  r4 fs4 fs4 f4 | e2. r4 | r4 fs4 fs4 f4 | f4 e4 e2 |
  \break
  r4 b'4 b4 bf4 | a2. r4 | r4 b4 b4 bf4 | bf4 a4 a2 |
  
  \sect "C"

  r4 d4 d4 b4 | g2. r4 | r4 d'4 d4 ds4 | ds4 e4 e2 |
  \break
  r2 g,4 a4 | bf4 g4 bf2 | g1~ | g2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
