%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Bossa Dorado"
  subtitle = \instrument
  poet = ""
  composer = "Dorado Schmmitt"
  copyright = \markup \small "© 1986 Sterntaler Musikverlag GMBH"
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  d1:m d1:3-.5.6- d1:m6 d1:3-.5.6-
  d1:m d1:3-.5.6- d1:m6 e2:m7.5- a2:7
  
  d1:m7 d1:m7 e1:7.9- e1:7.9-
  e1:m7.5- a1:7.9- d1:m7 e2:m7.5- a2:7.9-

  d1:m7 d1:m7 e1:7.9- e1:7.9-
  e1:m7.5- a1:7.9- d1:m7 d1:m7
  
  a1:m7.5- d1:7.9- g1:m7 g1:m7
  e1:7 e1:7 e1:m7.5- a1:7.9-

  d1:m7 d1:m7 e1:7.9- e1:7.9-
  e1:m7.5- a1:7.9- d1:m7 e2:m7.5- a2:7.9-
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Gypsy Bossa [Stochelo Rosenberg 1989]" 4 = 170

  \xTextMark \markup{ \bold \box { "Intro/Outro" } }
  
  a4 f'4 a,8 f'8 a,8 as8~ | as8 f'4 as,8 as4 f'8 as,8 | b4 f'4 b,8 f'8 b,8 bf8~ | bf8 f'4 bf,8 bf4 f'8 bf,8 |
  \break
  a4 f'4 a,8 f'8 a,8 as8~ | as8 f'4 as,8 as4 f'8 as,8 | b4 f'4 b,8 f'8 b,8 bf8 | r8 g8 gs8 a8~ a2 |
  
  \bar "|."
  \break

  \xTextMark \markup{ \bold \box "A1" }
  
  a8 f'8 a,8 f'8~ f2 | r8 a,8 a'8 bf8 a8 f8 d8 a8 | gs8 f'8 gs,8 e'8~ e2 | r8 gs,8 f'8 gs,8 f'8 gs,8 f'8 gs,8 |
  \break
  g8 f'8 g,8 e'8~ e2 | r8 e8 f8 fs8 g8 e8 c8 a8 | g8 a8 g8 f8~ f2 | r1 |
  
  \sect "A2"
  
  a8 f'8 a,8 f'8~ f2 | r8 a,8 a'8 bf8 a8 f8 d8 a8 | gs8 f'8 gs,8 e'8~ e2 | r8 gs,8 f'8 gs,8 f'8 gs,8 f'8 gs,8 |
  \break
  g8 f'8 g,8 e'8~ e2 | r4 r8 e16 f16 g8 e8 f8 g8 | a1~ | a2 r4 r8 d,8 |
  
  \sect "B"
  
  c8 ef8~ ef2 r8 d8 | c8 ef4 ef8 c8 ef4 ef8 | bf8 d8~ d2.~ | d2 r4 r8 e8 |
  \break
  d8 f8~ f2 r8 e8 | d8 f4 f8 d8 f4 f8 | cs8 e8~ e2.~ | e2 r2 |
  
  \sect "A3"

  a,8 f'8 a,8 f'8~ f2 | r8 a,8 a'8 bf8 a8 f8 d8 a8 | gs8 f'8 gs,8 e'8~ e2 | r8 gs,8 f'8 gs,8 f'8 gs,8 f'8 gs,8 |
  \break
  g8 f'8 g,8 e'8~ e2 | r8 g8 g8 f8 g8 g8 f8 d8~ | d1-"play outro last time" | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
