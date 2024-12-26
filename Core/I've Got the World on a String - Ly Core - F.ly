%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "I've Got the World on a String"
  subtitle = \instrument
  poet = "Ted Koehler"
  composer = "Harold Arlen"
  copyright = "© 1932 Ted Koehler Music and S.A. Music Co"
}

refrainLyrics = \lyricmode {
  I've got the
  world on a string,
  sit -- tin' on a rain -- bow,
  Got the string a -- round my fin -- ger,
  What a world, what a life, I'm in
  love.
  I've got a
  song that I sing,
  I can make the rain go,
  an -- y time I move my fin -- ger,
  Luck -- y me, can't you see, I'm in
  love.
  Life is a beau -- ti -- ful thing,
  as long as I hold the string,
  I'd be a sil -- ly so -- and -- so
  if I should ev -- er let go.
  I've got the
  world on a string,
  sit -- tin' in a rain -- bow,
  Got the string a -- round my fin -- ger,
  What a world, what a life, I'm in love.
}

refrainChords = \chordmode {
  s4.
  
  f4:6 ef4:7 d2:7 g2:m7 c2:7 f2:maj7 bf2:7 a2:m7 af2:m7
  g2:m7 c2:7 g2:m7 c2:7
  f2:6 d2:m7 g2:m7 c2:7
  
  f4:6 ef4:7 d2:7 g2:m7 c2:7 f2:maj7 bf2:7 a2:m7 af2:m7
  g2:m7 c2:7 g2:m7 c2:7
  f2:6 bf2:7 f1:6

  a1:7 a1:7 d1:7 d1:7
  g1:7 g1:7 g1:m7 c1:7

  f4:6 ef4:7 d2:7 g2:m7 c2:7 f2:maj7 bf2:7 a2:m7 af2:m7
  g2:m7 c2:7 g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Med.-Slow Swing" 4 = 124
  
  \partial 4. c8 f8 a8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  d8 c8 ef8 d8~ d2 | c8 bf8 f'8 bf,8 a8 g4. |
  g8 f8 c'8 f,8 e8 f4 e8~ | e2 ef2 |
  \break
  d4 d4 c4 d8 d8~ | d8 c4. a'4 a4 |
  f1 | r2 r8 c8 f8 a8 |
  \sect "A2"

  d8 c8 ef8 d8~ d2 | c8 bf8 f'8 bf,8 a8 g4. |
  g8 f8 c'8 f,8 e8 f4 e8~ | e2 ef2 |
  \break
  d4 d4 c4 d8 d8~ | d8 c4. a'4 a4 |
  f1~ | f8 a8 a8 a8 a8 a8 a8 b8~ |
  \sect "B"

  b1 | r8 a8 a8 a8 a8 a8 a8 b8~ | b1 | r8 a8 a8 a8 a8 a8 b8 e8 |
  b1 | r8 g8 g8 g8 g8 g8 g8 a8~ | a1~ | a2 r8 c,8 f8 a8 |
  
  \sect "A3"

  d8 c8 ef8 d8~ d2 | c8 bf8 f'8 bf,8 a8 g4. |
  g8 f8 e8 f8 a8 c4 e8~ |
  \break
  e2 ef2 |
  f4 f4 d4 f8 f8~ | f8 d4. c4 a4 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
