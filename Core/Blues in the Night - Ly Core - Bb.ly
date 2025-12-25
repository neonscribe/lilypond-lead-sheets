%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Blues in the Night"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Harold Arlen"
  copyright = \markup \small { \now " " "© 1941 Warner Bros. Inc." }
}

refrainLyrics = { \lyricmode {
My ma -- ma done tol' me __ when I was in }
#(if (and (defined? 'femaleSinger) femaleSinger)
  #{ \lyricmode { pig -- tails,
my ma -- ma done tol' me, __ Hon! __ A man's gon -- na sweet talk
and give ya the big eye, __ but when the sweet talk is done, __
a man is a two -- face, 
} #}
  #{ \lyricmode { knee -- pants,
my ma -- ma done tol' me, __ Son! __ A wo -- man -- 'll sweet talk
and give ya the big eye, __ but when the sweet talk is done, __
a wo-- man's a two -- face, 
} #} )
\lyricmode {
a wor -- ri -- some thing who'll leave ya t' sing
the blues in the night.

Now the rain's a -- fall -- in'. Hear the train a -- call -- in', whoo -- ee, __
(my ma -- ma done tol' me,) __
Hear that lone -- some whis -- tle blow -- in' 'cross the tres -- tle, whoo -- ee, __
(my ma -- ma done tol' me,) __
A  whoo -- ee -- duh -- whoo -- ee. __
Ol' click -- e -- ty clack's a -- ech -- o -- in' back th' blues __ in the night.

The eve -- nin' breeze -- 'll start the trees to cry -- in' and the moon -- 'll hide its light
when you get the blues __ in the night. __

Take my word, the mock -- in' -- bird -- 'll sing the sad -- dest kind o' song.
He knows things are wrong __ and he's right.

_ _ _ _ _ _

From Nat -- chez to Mo -- bile, __ from Mem -- phis to St. Joe, __
where -- ev -- er the four winds __ blow. __
I been in some big towns __ an' heard me some big talk, __
but there is one thing I know, __ }
#(if (and (defined? 'femaleSinger) femaleSinger)
  #{ \lyricmode {
a man is a two -- face, __
} #}
  #{ \lyricmode {
a wo-- man's a two -- face, __
} #} )
\lyricmode {
a wor -- ri -- some thing who'll leave ya t' sing
the blues __ in the night.

_ _ _ _ _ _

My ma -- ma was right, there's blues __ in the night.
} }

refrainChords = \chordmode {
  s4
  
  bf1:6 bf1:6 bf1:6 bf1:7
  ef1:9 ef1:9 c2:7 f2:7 bf1
  f1:7 c2:7 f2:7 bf1:6 bf1:6
  
  bf1:7 ef1:9 bf1:6 bf1:6
  ef1:9 c2:m7.5- f2:7 bf1:6 bf1:6
  f1:7 c2:7 f2:7 bf1:6 bf1:6
  
  ef1:9 c2:m7.5- f2:7 df1:9 c1:7.9-
  g1:7.9- c2:sus7.9- c2:7 f1:7 c2:m7 f2:7
  
  ef1:9 c2:m7.5- f2:7 df1:9 c1:7.9-
  g1:7.9- c2:sus7.9- c2:7 f2:7 g2:m7 af2:dim7 f2:7/a
  bf1:7 c2:7.9- f2:7
  
  bf1:6 bf1:6 bf1:6 bf1:7
  ef1:9 ef1:9 c2:7 f2:7 bf1
  f1:7 c2:7 f2:7 bf1:6
  bf1:6 bf1:7 c2:7.9- f2:7 c2:7.9- f2:sus7 bf1:6
}

refrainKey = bf

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow Blues [Dinah Shore 1941]" 4 = 84

  \partial 4 \invisEighth f8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  \tuplet 3/2 { a8 bf8 f8 } a8 bf8~ bf4. f8 | \tuplet 3/2 { a8 bf8 f8 } a8 bf8~ bf4. f8 |
  \tuplet 3/2 { a8 bf8 f8 } a8 bf8~ bf2 | d,2~ d4. bf8 |
  \break
  \tuplet 3/2 { f'8 ef8 bf8 } f'8 ef8~ ef4. bf8 | \tuplet 3/2 { f'8 ef8 bf8 } f'8 ef8~ ef2 |
  r8 bf'8 af8 g8 f8 g8 cs,8 d8~ | d2~ d4. f8 |
  \break
  \tuplet 3/2 { b8 c8 f,8 } b8 c8~ c4. f,8 |
  \tuplet 3/2 { df'8 c8 df8 } bf8 bf8 \tuplet 3/2 { af8 g8 af8 } f8 f8 |
  a8( bf4.~ bf4~ \tuplet 3/2 { bf8) g8 f8 } | bf,1 |

  \sect "B"
  
  d'4. f8 d8 bf8 g8 f8 | df'4. f8 df8 bf8 g8 f8 | cs'8 d4.~ d4. f,8 |
  \tuplet 3/2 { a8 bf8 f8 } a8 bf8~ bf2 |
  \break
  df4. f8 df8 bf8 g8 f8 | ef'4. f8 ef8 df8 bf8 gf8 | cs8 d4.~ d4. f,8 |
  \tuplet 3/2 { a8 bf8 f8 } a8 bf8~ bf4. f8 |
  \break
  \tuplet 3/2 { e'8 f8 f,8 } e'8 f8~ f4. f,8 |
  \tuplet 3/2 { df'8 c8 df8 } bf8 bf8 \tuplet 3/2 { af8 g8 af8 } f8 f8 |
  a8( bf4.~ bf4~ \tuplet 3/2 { bf8) g8 f8 } | bf,2~ bf8 f'8 g8 bf8 |
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "C1" }
  
  c4. bf8 c4. bf8 | ef4. df8 ef8 df8 ef8 f8 | bf,4. af8 bf4. af8 | df1 |
  \break
  af4. g8 af4. g8 | c2~ c8 bf8 c8 c8~ | c1~ | c2 r2 |

  \sect "C2"
  
  c4. bf8 c4. bf8 | ef4. df8 ef8 df8 ef8 f8 | bf,4. af8 bf4. af8 | df1 |
  \break
  af4. g8 af4. g8 | c2~ c8 bf8 c8 d8~ | d1~ | d2. \tuplet 3/2 { r8 f,8 bf8 } |
  af2.~ \tuplet 3/2 { af8 g8 ef'8 } | df2~ df4. f,8 |

  \sect "A2"
  
  \tuplet 3/2 { a8 bf8 f8 } a8 bf8~ bf4. f8 | \tuplet 3/2 { a8 bf8 f8 } a8 bf8~ bf4. f8 |
  \tuplet 3/2 { a8 bf8 f8 } a8 bf8~ bf2 | d,2~ d4. bf8 |
  \break
  \tuplet 3/2 { f'8 ef8 bf8 } f'8 ef8~ ef4. bf8 | \tuplet 3/2 { f'8 ef8 bf8 } f'8 ef8~ ef2 |
  r8 bf'8 af8 g8 f8 g8 cs,8 d8~ | d2~ d4. f8 |
  \break
  \tuplet 3/2 { b8 c8 f,8 } b8 c8~ c4. f,8 |
  \tuplet 3/2 { df'8 c8 df8 } bf8 bf8 \tuplet 3/2 { af8 g8 af8 } f8 f8 |
  a8( bf4.~ bf4~ \tuplet 3/2 { bf8) g8 f8 } |

  bf,2. \tuplet 3/2 { r8 f'8 bf8 } | af2.~ \tuplet 3/2 { af8 g8 ef'8 } | df2~ df4. f,8 |
  \tuplet 3/2 { df'8 c8 df8 } bf8 bf8 f8( bf8~ \tuplet 3/2 { bf8) g8 f8 } | bf,1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
