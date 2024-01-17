%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

straightEighths = ##t

\header {
  title = "Steel Guitar Rag"
  subtitle = \instrument
  poet = "Merle Travis and Cliff Stone"
  composer = "Leon McAuliffe"
  copyright = "© 1941 Bourne Co."
}

refrainLyrics = \lyricmode {
  Been run -- nin' a -- round, __ seen man -- y a town __
  So may -- be you'll find I'm the kind of guy to brag. __
  But lis -- ten to me and see if you don't a -- gree,
  no mel -- o -- dy rolls like that steel gui -- tar rag. __
  
  And when they slide that thing a -- long the strings
  it sounds so dog -- gone heav -- en -- ly,
  You hear an -- gels sing an' when you start your feet,
  your heart will beat the rhy -- thm to that steel gui -- tar rag. __
  
  You may be kind -- a choos -- y 'bout the kind of songs you hear.
  You may like songs that's blues -- y so you cry right in your beer.
  But if you like a tune that's bound to drive a -- way your care,
  make hap -- py your soul with that steel gui -- tar rag. __
}

refrainChords = \chordmode {
  s2.
  
  f1:6 f1:6 f1:6 f1:6
  f1:6 c1:7 f1:6 f1:6
  
  f1:6 f1:7 bf1:9 f1:6
  f1:6 c1:7 f1:6 f1:7
  
  bf1 bf1 f1 f1
  g1:7 g1:7 c1:7 c1:7
  
  bf1 bf2. bf4:m f1 f1
  g1:7 c1:7 f1 f1
  
  f1 f1 f1 f1
  f1 f1 c1:7 c1:7

  f1 f1 bf1 bf1:m6
  f1:6 c1:6 f1:6 f1:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo 2 = 110

  \partial 2. c4 c8 d8 f4 |
  \bar "||"

  \mark \markup{ \box "A" }
  
  a1~ | a4 c,4 c8 d8 f4 | a1~ | a4 c,4 c8 d8 f4 | a2 a4 g4 | f4 d4 c4 a4 | f1~ | f4 c'4 c8 d8 f4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  a2. a4 | c2. a4 | af2 af4 g4 | f4 c4 c8 d8 f4 | a2 a4 g4 | f4( d4) c4 a4 | f1~ | f2. a'4 |

  \bar "||"
  \break

  \mark \markup{ \box "C" }

  bf4 bf4 g4 f4 | d2. bf'4 | a2 f4( d4) | c2. c4 | b4 g'4 d4 b4 | g'4( d4) b2 | e4 c'4 g4 e4 | c'4 g4 e4 a4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "D" }
  
   bf2 g4( f4) | d2. bf'4 | a2 f4( d4) | c2. c4 | b4 g'4 d4 b4 | c'4 g4 e4 c4 | f1~ | f2. gs4 |
  
  \bar "||"

  \mark \markup{ \box "E" }
  \break
  
  a4 f'4 c4 a4 | f'4 c4 a4 gs4 | a4 f'4 c4 c4 | f2. gs,4 | a4 f'4 c4 a4 | f'4 c4 a4 ds,4 | e4 c'4 g4 e4 | c'2. gs4 |

  \bar "||"

  \mark \markup{ \box "F" }
  \break
  
  a4 f'4 c4 a4 | f'4 c4 a4 cs,4 | d4 bf'4 f4 d4 | bf'4 bf4 bf8 bf8 bf4 | a2 a4 a4 | c2 c4 c4 | f1~ | f2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
