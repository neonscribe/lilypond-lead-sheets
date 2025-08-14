%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Lullaby in Rhythm"
  subtitle = \instrument
  poet = ""
  composer = "Benny Goodman, Edgar Sampson, Clarence Profit & Walter Hirsch"
  copyright = \markup \small "© 1938 Robbins Music Corporation"
}

refrainLyrics = \lyricmode {
Hear my lull -- a -- by in rhyth -- m. Dream your dreams and wan -- der with 'em.
Ev' -- ning drums will come and take you thru the night,
to my lull -- a -- by in rhyth -- m. All the breez -- es sigh in rhyth -- m.
Rest my love, let noth -- ing wake you till the light.
Stars dance while the sha -- dows creep.
_ The moon man's goin' to swing you up high, swing you to sleep. _ _
Hear my lull -- a -- by in rhyth -- m. Dream your dreams and wan -- der with 'em.
Sand -- man's goin' to come and make you sleep, good -- night.
}

refrainChords = \chordmode {
  ef1:maj7 ef2:maj7 bf2:7.9- ef1:maj7 gf2:m7 cf2:7 
  ff1:maj7 f2:m7 bf2:7 f2:m7 bf2:7.9- ef2:6 bf2:7

  ef1:maj7 ef2:maj7 bf2:7.9- ef1:maj7 gf2:m7 cf2:7 
  ff1:maj7 f2:m7 bf2:7 f2:m7 bf2:7.9- ef1:6
  
  af2:m7 df2:7 af2:m7 df2:7 ef1:maj7 ef2:maj7 g2:7
  b2:dim7/c c2:m7 f1:7 bf1:7 cf2:7 bf2:7

  ef1:maj7 ef2:maj7 bf2:7.9- ef1:maj7 gf2:m7 cf2:7 
  ff1:maj7 f2:m7 bf2:7 f2:m7 bf2:7.9- ef1:6
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Benny Goodman 1938]" 4 = 160

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 f8 r8 ef8 f4. ef8 | f4 ef8 f8 r8 g4. | r8 f8 r8 ef8 f4 ef4 | af8 gf8 r8 af8 r8 gf4. |
  r8 fs8 r8 e8 fs4. e8 | g4 f8 g8 r8 f4. | bf2 g4. bf8~ | bf2. r4 |
  
  \sect "A2"
  
  r8 f8 r8 ef8 f4. ef8 | f4 ef8 f8 r8 g4. | r8 f8 r8 ef8 f4 ef4 | af8 gf8 r8 af8 r8 gf4. |
  r8 fs8 r8 e8 fs4. e8 | g4 f8 g8 r8 f4. | bf2 g4. ef8~ | ef2. r4 |
  
  \sect "B"
  
  bf'4. af8~ af4 r4 | bf8 af8 r8 bf8 r8 af8 r8 g8~ | g2. r4 | r2 r8 fs8 g4 |
  f4. ef8~ ef4 r4 | f8 ef8 r8 f8 r8 g4. | f4. bf8~ bf4 r4 | cf8 df8 cf8 bf8 r8 bf8 r8 bf8 |
  
  \sect "A3"

  r8 f8 r8 ef8 f4. ef8 | f4 ef8 f8 r8 g4. | r8 f8 r8 ef8 f4 ef4 | af8 gf8 r8 af8 r8 gf4. |
  r8 fs8 r8 e8 fs4. e8 | g4 f8 g8 r8 f4. | bf2 g4. bf8~ | bf2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
