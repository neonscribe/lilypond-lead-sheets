%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Christmas Time Is Here"
  subtitle = \instrument
  poet = "Lee Mendelson"
  composer = "Vince Guaraldi"
  copyright = "© 1966 Lee Mendelson Film Productions, Inc."
}

refrainLyrics = \lyricmode {
Christ -- mas time is here, hap -- pi -- ness and cheer.
Fun for all that chil -- dren call their fa -- v'rite time of year.

Snow -- flakes in the air, car -- ols ev -- 'ry -- where.
Old -- en times and an -- cient rhymes of love and dreams to share.

Sleigh bells in the air, beau -- ty ev -- 'ry -- where.
Yule -- tide by the fi -- re -- side and joy -- ful mem -- 'ries there.

Christ -- mas time is here, we'll be draw -- ing near.
Oh, that we could al -- ways see such spir -- it through the year.
}

refrainChords = \chordmode {
  f2.:maj7 ef2.:9.11+ f2.:maj7 ef2.:9.11+
  b2:m7.5- bf4:m7 a2:m7 af4:m7 g2:m7 bf4/c f2.:maj9

  f2.:maj7 ef2.:9.11+ f2.:maj7 ef2.:9.11+
  b2:m7.5- bf4:m7 a2:m7 af4:m7 g2:m7 bf4/c f2.:maj9
  
  df2.:maj7 gf2.:9.11+ df2.:maj7 gf2.:9.11+
  a2:m7 ef4:9 d2:9 d4:7.9- g2:m7 df4:9 c2.:13

  f2.:maj7 ef2.:9.11+ f2.:maj7 ef2.:9.11+
  b2:m7.5- bf4:m7 a2:m7 af4:m7 g2:m7 bf4/c f2.:maj9
}

refrainKey = f

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 80

  \xTextMark \markup{ \bold \box "A1" }
  
  e'8 c8 c4. a8 | a2. | e'8 c8 c4. a8 | a2. |
  \break
  a8 f8 f4. e8 | g8 e8 e4. ef8 | d8 f8 d4 f4 | g2. |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  e'8 c8 c4. a8 | a2. | e'8 c8 c4. a8 | a2. |
  \break
  a8 f8 f4. e8 | g8 e8 e4. ef8 | d8 f8 d4 f4 | g2. |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c8 af8 af4. c8 | c2. | c8 af8 af4. c8 | c2. |
  \break
  c8 a8 a4. c8 | c8 a8 a4. bf8 | bf8 g8 g4 a4 | a2. |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  e'8 c8 c4. a8 | a2. | e'8 c8 c4. a8 | a2. |
  \break
  a8 f8 f4. e8 | g8 e8 e4. ef8 | d8 f8 d4 f4 | g2. |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
