%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "You Do Something to Me"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1929 Chappell & Co., Inc."
}

refrainLyrics = \lyricmode {
You do some -- thing to me. Some -- thing that sim -- ply mys -- ti -- fies me.
Tell me, why should it be you have the pow'r to hyp -- no -- tize me?
Let me live 'neath your spell,
Do do __ that voo -- doo __ that you do __ so well,
for you do some -- thing to me that no -- bod -- y else could do.
}

refrainChords = \chordmode {
  ef1:6 d1:7 ef1:6 f2:m7 bf2:7
  ef1:6 g2:m7 c2:7.9- f1:m7 bf2:7 c2:7.9-
  
  f1:m7 c1:7.9- f1:m7 c1:7.9-
  f1:7 f1:7 f1:m7 bf1:7
  
  g1:m7 gf1:dim7 f1:m7 e1:dim7
  fs2:m7 b2:7 f2:m7 bf2:7 fs2:m7 b2:7 f2:m7 bf2:7.9-

  ef1:6 d1:7 ef1:6 g2:m7 c2:7
  f1:9 bf2:sus9 bf2:13.9- ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \sectStart "A1"
  
  ef1 | d1 | ef4 f2 d4 | c1 |
  \break
  c4 d2 bf4 | c4 ef4 g4 bf4 | bf1 | d,1 |
  
  \sect "A2"
  
  af'1 | g1 | af4 c2 af4 | g1 |
  \break
  f4 g2 c,4 | f4 g4 a4 d4 | c1 | bf2. r4 |
  
  \sect "B"

  bf1 | ef1 | d2 af4 bf4 | c1 |
  \break
  b4. fs8~ fs4 gs4 | bf4. f8~ f4 g4 | gs4. ds8~ ds4 f4 | g2. f4 |

  \sect "A3"

  ef1 | d1 | ef4 f2 d4 | c2. c'4 |
  \break
  b4 c2 g4 | f2 g2 | ef1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
