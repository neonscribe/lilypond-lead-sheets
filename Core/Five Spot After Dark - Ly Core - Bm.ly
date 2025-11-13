%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Five Spot After Dark"
  subtitle = \instrument
  poet = ""
  composer = "Benny Golson"
  copyright = \markup \small { \now " " "© 1959 Time Step Music" }
}

refrainChords = \chordmode {
  b1:m7 b1:m7 b1:m7 b1:m7 
  e1:m7 e1:m7 b1:m7 b1:m7
  g1:7 fs1:7 b1:m7
  \chordOpenParen{ cs2:m7.5- }
  \chordCloseParen{ fs2:7.9- }
}

refrainKey = b

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Curtis Fuller's Quintet 1959]" 4 = 168

  \sectStart "Head"
  
  r8 b,8 d8 fs8 b4-. b4-. | b4 d8 b8 r2 | r8 b,8 d8 fs8 b4-. b4-. | b4 d8 b8 r2 |
  \break
  r8 e,8 g8 b8 cs4 b4-. | r8 e,8 g8 b8 cs4 b4-. | r8 b,8 d8 fs8 b4-. b4-. | b4 d8 b8 r4 fs8 e8 |
  \break
  f4. d'8~ d4 f,8 ds8 | e4. cs'8~ cs4 e,8 cs8 | d4. b'8~ b2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice, before and after solos." }
