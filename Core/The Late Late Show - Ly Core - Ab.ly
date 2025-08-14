%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "The Late Late Show"
  subtitle = \instrument
  poet = "Roy Alfred"
  composer = "Murray Berlin"
  copyright = \markup \small "© 1956 Kahl Music"
}

refrainLyrics = \lyricmode {
Gee, it's co -- zy in the park to -- night, __
when you cud -- dle up and hold me tight, __
stars a -- bove, __ they seem __ to know __
we're put -- ting on the late, late show.

_ _ _

Birds that should be dream -- ing,
start in chirp -- ing a song; __
While fire -- flies are gleam -- ing, __
we kissed, we kissed all night long.

Then we am -- ble back to my front door, __
say good -- night and then we kiss some more; __
guess you know __ I like you so, __
it start -- ed at the late, late show. __
}

refrainLyricsTwo = \lyricmode {
Hear the cra -- zy mu -- sic in the trees, __
see the flow -- ers danc -- ing in the breeze; __
Old Man Moon __ be -- gins to glow, __
he's join -- ing in the _ _ _ late, late show.
}

refrainChords = \chordmode {
  ff1:7 ef1:7 ff1:7 ef1:7
  af2:7 g2:7 gf2:7 f2:7 bf1:7
  
  ff2:7 ef2:7
  
  ef2:7 af2:7
  
  df1:6 d1:dim7 af1/ef ef2:m7 af2:7
  df1:6 d1:dim7 c2:m7 f2:7 bf2:7 ef2:7

  ff1:7 ef1:7 ff1:7 ef1:7
  af2:7 g2:7 gf2:7 f2:7 bf1:7 ef2:7 af2:6
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Catherine Russell 2006]" 4 = 138

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 ff4 gf8 af8 cf8 df8 cf8 | ef4 c8 f,8~ f4 r4 |
  r8 ff4 gf8 af8 cf8 df8 cf8 | ef4 c8 f,8~ f4 r4 |
  \break
  ef'4 f4 eff4 ff4 | df4 ef8 c8~ c4 r4 | r8 c4. f,8 g8 af8 bf8 |
  \alternative { \volta 1 {
  cf8 af4 bf8~ bf4 r4 |
  } \volta 2 {
  c4 c4 af2 |
  } } }
  \sect "B"
  
  r4 r8 cf8~ cf8 af8 bf8 af8 | f'4. cf8~ cf4 r4 |
  c4 c4 c8 df8 eff8 ef8~ | ef2 r2 |
  \break
  cf4 bf8( af8) bf4 af8 f'8~ | f4. cf8~ cf4 r8 c8~ |
  c8 ef4 c8 ef4 r8 f8~ | f4 cf4~ cf8 ef,4. |
  
  \sect "A3"
  
  r8 ff4 gf8 af8 cf8 df8 cf8 | ef4 c8 f,8~ f4 r4 |
  r8 ff4 gf8 af8 cf8 df8 cf8 | ef4 c8 f,8~ f4 r4 |
  \break
  ef'4 f4 d4 ff4 | df4 ef8 c8~ c4 r4 | r8 c4. f,8 g8 af8 bf8 | c8 c4 af8~ af4 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
