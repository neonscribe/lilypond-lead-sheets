%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Belleville"
  subtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = "© 1942 Publications Francis Day S.A."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  d2 f2:dim7 e2:m7 a2:7 d2 f2:dim7 e2:m7 a2:7 
  d2 f2:dim7 e2:m7 a2:7 d2 a2:7 d1

  g1:m6 g1:m6 d1 d1 fs1 g1:dim7 gs2:m7 cs2:7 fs2 a2:7
  
  d2 f2:dim7 e2:m7 a2:7 d2 f2:dim7 e2:m7 a2:7 
  d2 f2:dim7 e2:m7 a2:7 d2 a2:7 d1

}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up Swing" 4 = 270s

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 d'8 cs4 c4 b4 | bf4 gs8 a8~ a4 r4 | r8 d8 cs4 c4 b4 | bf4 gs8 a8~ a4 r4 | 
  \break
  r8 d8 cs4 c4 b4 | bf4 gs8 a8~ a4 r4 | d,8 d8 r8 d8 fs4-. a4-. | d,4-. r8 d8 r2 |
  }
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r8 g4. bf4 d4 | e4. d8~ d4 r4 | r4 r8 f,8 fs4 a8 cs8~ | cs2 r2 |
  \break
  cs8 cs8 cs8 cs8~ cs4 r4 | cs8 cs8 cs8 cs8~ cs4 r4 | r8 cs4 cs8 b4 as4 | fs2 a2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  r8 d8 cs4 c4 b4 | bf4 gs8 a8~ a4 r4 | r8 d8 cs4 c4 b4 | bf4 gs8 a8~ a4 r4 | 
  \break
  r8 d8 cs4 c4 b4 | bf4 gs8 a8~ a4 r4 | d,8 d8 r8 d8 fs4-. a4-. | d,4-. r8 d8 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup "Solo over Rhythm Changes."