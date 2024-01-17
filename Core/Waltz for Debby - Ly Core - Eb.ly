%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Waltz for Debby"
  subtitle = \instrument
  poet = "Gene Lees"
  composer = "Bill Evans"
  copyright = "© 1964 Acorn Music Corp."
}

refrainLyricsPre = \lyricmode {
}

refrainLyricsOne = \lyricmode {
In her own sweet world, __
pop -- u -- lat -- ed by dolls and clowns
and a
}

refrainLyricsRepOne = \lyricmode {
prince and a big pur -- ple bear, __
}

refrainLyricsTwo = \lyricmode {
Lives my fav -- 'rite girl, __
un -- a -- ware of the wor -- ried frowns
that we
}

refrainLyricsRest = \lyricmode {
wear -- y grown -- ups all wear. __
In __ the sun, __ she danc -- es to si -- lent mu -- sic,
songs that are spun of gold
some -- where in her own lit -- tle head. __
}

refrainLyricsThree = \lyricmode {
One day all too soon __
she'll grow up and she'll leave her dolls
and her
prince and her sil -- ly old
}

refrainLyricsCoda = \lyricmode {
bear. __
When she goes they will cry __
as they whis -- per “good -- bye.”
They __ will miss her I fear
but then so will I. __
}

refrainChords = \chordmode {
  g2.:m7 c2.:m7 f2.:m7 bf2.:7 g2.:7 g2:m7.5- c4:7 f2.:7 bf2.:7 ef2.:7 af2.:maj7
  
  f2.:m7.5- bf2:7 bf4:7/af g2.:m7 c2.:7 f2.:m7 bf2.:7
  
  a2.:m7 d2:7 d4:7/c b2.:m7 a2.:m7 g2.:maj7 fs2.:m7
  
  f2.:m7 bf2.:7
  g2.:m7 c2:7.5- c4:7 f2.:m7 g2.:7 c2.:m7 bf2.:m7/ef af2.:maj7 g2.:7 c2.:m7 f2.:9
  g2.:m7 gf2.:7 f2.:m7 bf2.:7
  
  g2.:m7 c2:7.5- c4:7 a2.:m7 d2.:7 g2.:m7 ef2:11 ef4:7 af2.:maj7
  df2.:9 c2.:m c2.:m7/bf f2.:7/a af2.:dim7 ef2.:6/g gf2.:dim7 f2.:m7 bf2:9 bf4:7.9- ef2. ef2.:6.9
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Jazz Waltz"

  \set Score.repeatCommands = #'(start-repeat)

  bf2. | ef,2. | af2. | d,2. | g2.~ | g2. | r4 f4 ef4 | d4 ef4 f4 | g2 f4 | ef4 f4 g4 |
  
  \set Score.repeatCommands = #'((volta "1, 3"))
  af4 af g4 | f4 g4 af4 | 
  \textToCoda
  bf2.~ | bf2.~ | bf2.~ | bf2. |
  \set Score.repeatCommands = #'(end-repeat)
  \break
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  a2 g4 | fs4 g4 a4 |
  \set Score.repeatCommands = #'((volta #f))
  
  b2.~ | b2.~ | b2.~ | b2. | c2.~ | c2 bf4 |
  c2.~ | c2 bf4 | c4 bf4 af4 | g2 d4 | f2 ef4 | c'4 bf4 af4 |
  g2 af4 | g2 d4 | ef4 g4 bf4 | d4 ef4 c4 |
  bf2.~ | bf2.~ | bf2.~ |
  \mark \markup { \small \italic "D.C. al Coda" }
  bf2. |

  \bar "||"
  \break
  \textCoda
  c2. ~ | c2. | r4 d4 c4 | d4 c4 d4 | bf2.~ | bf2. | r4 bf4 af4 |
  bf4 af4 bf4 | g2.~ | g2.~ | g2. | r4 f4 ef4 | f4 ef4 f4 | ef4 f4 ef4 |
  c'2. | d,2. | ef2.( | bf'2.) |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-three-coda.ily"
