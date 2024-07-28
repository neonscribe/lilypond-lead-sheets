%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Can't Stop Loving You"
  subtitle = \instrument
  poet = ""
  composer = "Don Gibson"
  copyright = "© 1958 Acuff-Rose Publications, Inc."
}

refrainLyrics = \lyricmode {
I can't stop lov -- ing you, so I've made up my mind
to live in mem -- o -- ry of old lone -- some times.
I can't stop want -- ing you, It's use -- less to say
so I'll just live my life in dreams __ of yes -- ter -- day.
Those hap -- py hours that we once knew
though long a -- go __ still make me blue. __
They say that time heals __ a bro -- ken heart
but time has stood still since we've been a -- part.
I can't stop
-day. __
}

refrainChords = \chordmode {
  s2.
  e1:maj7 cs2:m7 fs2:7 b1:maj7 gs1:m7
  cs1:m7 fs1:7 b1:maj7 b1:7

  e1:maj7 cs2:m7 fs2:7 b1:maj7 gs1:m7
  cs1:m7 fs1:7
  
  b2 e2 b2 fs2:7
  
  b1:maj7 b1:7 e1:maj7 cs2:m7 fs2:7
  b1:6 gs1:m7 cs1:7 fs1:7

  b1:maj7 b1:7 e1:maj7 cs2:m7 fs2:7
  b1:maj7 cs2:m7 fs2:7 b2 e2 b2 b2:7

  b2 e2 b2  
  \chordInsideParens{ b2:7 }
}

refrainKey = b

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120
  
  \partial 2. ds'4 cs4 b4 |

  \xTextMark \markup{ \bold \box "A1" }
  
  \bar ".|:"
  \repeat volta 2 {
  b4. gs8 gs2 | r4 e8 e8 \tuplet 3/2 { fs4 gs4 gs4 } | fs1 | r4 fs4 gs4. gs8 |
  \break
  as4. fs8 e2 | r4 cs4 cs4 b8 cs8 | ds1 | r4 ds'4 cs4 b4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  b4. gs8 gs2 | r4 e4 \tuplet 3/2 { fs4 gs4 gs4 } | fs1 | r4 ds4 e4. es8 |
  \break
  fs2 \tuplet 3/2 { e4 e4 ds4 } | ds2~ ds8 cs8 cs8 b8 |
  \alternative { \volta 1 {
  b1 | r4 fs'2 \tuplet 3/2 { ds8( cs8) b8 } |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B1" }
  
  ds1 | r4 b'2 \tuplet 3/2 { gs8( fs8) e8 } | gs1 | r4 b4 b4. gs8 |
  \break
  \tuplet 3/2 { b8( gs8 fs8~ } fs2.) | r4 ds4 gs4. fs8 |
  \tuplet 3/2 { fs8( ds8 cs8~ } cs2.) | r4 fs2 \tuplet 3/2 { ds8( cs8) b8 } |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B2" }
  
  ds1 | r4 b'4~ b8 gs8 b8 e,8 | gs1 | r4 b4 b8 gs8 b4 |
  \break
  ds1 | r4 fs,4 fs4 as8 cs8 | b1 | r4 ds4 cs4 b4 |
  } \volta 2 {
  b1~ | b4 r4 r2 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
