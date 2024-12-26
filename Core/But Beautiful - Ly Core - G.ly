%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "But Beautiful"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Jimmy Van Heusen"
  copyright = "© 1947 Burke & Van Heusen"
}

refrainLyrics = \lyricmode {
  Love is fun -- ny or it's sad,
  Or it's qui -- et or it's mad,
  It's a good thing or it's bad,
  but beau -- ti -- ful. __

  Beau -- ti -- ful to take a chance
  and if you fall you fall;
  And I'm think -- ing I would -- n't mind at all. __
  
  Love is tear -- ful or it's gay,
  It's a prob -- lem or it's play,
  It's a heart -- ache ei -- ther way,
  but beau -- ti -- ful. __
  
  And I'm think -- ing if you were mine
  I'd nev -- er let you go;
  And that would be but beau -- ti -- ful I know. __
}

refrainChords = \chordmode {
  s4 g1:maj7 b2:m7.5- e2:7.9- a1:m7 cs2:m7.5- fs2:7.9-
  g1:maj7 b4:m7.5- \chordSlash 2 e4:7 a1:7 a1:7

  d2:7 d2:7/c b2:m7 e2:m7 a2:m7 d2:7 g1:maj7

  e1:m7 a1:7 a1:m7/d d1:7

  g1:maj7 b2:m7.5- e2:7.9- a1:m7 cs2:m7.5- fs2:7.9-
  g1:maj7 b4:m7.5- \chordSlash 2 e4:7 a1:7 a1:7

  d2:7 d2:7/c b2:m7 e2:m7 a4:m7 \chordSlash 1 fs4:m7.5- b4:7 e2:m7 f2:7
  b2:m7 bf2:7 a2:m7 d2:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Med. Ballad" 4 = 70
  
  \partial 4 cs8 d8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A" }
  
  a'4 a2 g8 fs8 | f2. ds8 e8 | b'4 b2 a8 af8 | g2. fs8 g8 |
  \break
  d'4 d2 b8 bf8 | a2. gs4 | b8 b8 b2.~ | b1 |
  \break
  b8 b8 b2 a4 | d4 b4 a4. g8 | c4 a4 g4 fs4 | b2. d,8 ds8 |
  \break
  e4 e2 g4 | b4 g4 fs4 e4 | a1~ | a2. cs,8 d8 |
  
  \sect "B"
  
  a'4 a2 g8 fs8 | f2. ds8 e8 | b'4 b2 a8 af8 | g2. fs8 g8 |
  \break
  d'4 d2 b8 bf8 | a2. gs4 | b8 b8 b2.~ | b2. e,8 es8 |
  \break
  fs4 fs2 a4 | d4 b4 a4. g8 | e'4 c4 b4 a4 | g2. g4 |
  \break
  d'8 d8 d2 g,4 | c8 c8 c2 fs,4 | g1~ | g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
