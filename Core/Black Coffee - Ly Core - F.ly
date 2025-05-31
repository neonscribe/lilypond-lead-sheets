%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Black Coffee"
  subtitle = \instrument
  poet = ""
  composer = "Paul Francis Webster and Sonny Burke"
  copyright = \markup \small "© 1948 Webster Music Co. and Sondot Music Corporation"
}

refrainLyrics = { \lyricmode {
I'm feel -- in' might -- y lone -- some,
have -- n't slept a wink,
I walk the floor from nine to four,
and in be -- tween I drink
black cof -- fee. __
Love's a hand -- me -- down broom. __
I'll nev -- er know a Sun -- day,
_ in this week -- day room. __

I'm talk -- in' to the shad -- ows,
one o' -- clock to four.
And Lord, how slow the mo -- ments go
and all I do is pour
black cof -- fee __
since the blues caught my eye. __
I'm hang -- in' out on Mon -- day
my Sun -- day dreams to dry. __
}

#(if (and (defined? 'maleSinger) maleSinger)
  #{
\lyricmode {
Now a man is born to love a wo -- man __
to work and slave to pay her debts. __
Just be -- cause he's on -- ly hu -- man, __
to drown his past re -- grets
In cof -- fee and cig -- a -- rettes.
} #}
  #{
\lyricmode {
Now a man is born to go a lov -- in', __
a wo -- man's born to weep and fret. __
To stay at home and tend her ov -- en, __
And drown her past re -- grets
In cof -- fee and cig -- a -- rettes.
} #} )

\lyricmode {
I'm moon -- in' all the morn -- in',
and mourn -- in' all the night,
and in be -- tween it's nic -- o -- tine
and not much heart to fight.
Black cof -- fee.
Feel -- in' low as the ground.
It's driv -- in' me cra -- zy,
This wait -- in' for my ba -- by,
to may -- be come a -- round. __
} }

refrainHLChords = \chordmode {
  s4

  f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ b2:13
  bf1:9 bf1:9 f2:7.9+ gf2:7.9+ f2:7.9+ d2:7.9+
  g1:m7 c1:7.5+

  f2:7.9+ d2:7.9+ g2:m7 c2:7.9+

  f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ b2:13
  bf1:9 bf1:9 f2:7.9+ gf2:7.9+ f2:7.9+ d2:7.9+
  g1:m7 c1:7.5+

  f2:7.9+ gf2:7.9+ f2 b2:7.5-

  bf2:m7 ef2:7 f1:m g2:m7.5- c2:7.9- f1:maj7
  af2:m7 df2:7 gf2:maj7 ef2:m7 af2:m7 df2:7 g2:m7 c2:7
  
  f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ b2:13
  
  bf1:9 bf1:9 f2:maj7 g2:m7 a2:m7 af2:7
  g1:m7 g1:m7/c f2:7.9+ gf2:7.9+ f2:7.9+
  \chordInsideParens{ gf2:7.9+ }
}

refrainNicoChords = \chordmode {
  s4

  f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ b2:13
  bf1:9 bf1:9 f2:7.9+ gf2:7.9+ f2:7.9+ d2:7.9+
  g1:m7 c1:7.5+

  f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+

  f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ b2:13
  bf1:9 bf1:9 f2:7.9+ gf2:7.9+ f2:7.9+ d2:7.9+
  g1:m7 c1:7.5+

  f2:7.9+ gf2:7.9+ f2 b2:7.5-

  bf2:m7 ef2:7 f1:m g2:m7.5- c2:7.9- f1:maj7
  af2:m7 df2:7 gf2:maj7 ef2:m7 af2:m7 df2:7 g2:m7 c2:7
  
  f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ gf2:7.9+ f2:7.9+ b2:13
  
  bf1:9 bf1:9 f2:maj7 g2:m7 a2:m7 af2:7
  g1:m7 g1:m7/c f2:7.9+ gf2:7.9+ f2:7.9+
  \chordInsideParens{ gf2:7.9+ }
}

refrainChords = \refrainNicoChords

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Sarah Vaughan 1949]" 4 = 70
  
  \partial 4 \invisEighth c8 |

  \sectNoBreak "A1"
  
  f8 f8 f8 c8 ef8 c4. | f8 f8 f8 c8 ef4. c8 | 
  f8 f8 f8 c8 ef8 ef8 ef8 c8 | f8 f8 f8 c8 ef4 f4 |
  \break
  af8 d,4.~ d2 | \tuplet 3/2 { r4 c'4 bf4 } \tuplet 3/2 { af4 f4 d4 } |
  c1~ | c2. r8 c8 |
  \break
  g'8 a8 bf8 c8 a8 f4. | r8 d8 d8 af'8 g4 f8 f8~ |

  f1~ | f2. r8 c8 |

  \sect "A2"
  
  f8 f8 f8 c8 ef8 c4. | f8 f8 f8 c8 ef4. c8 | 
  f8 f8 f8 c8 ef8 ef8 ef8 c8 | f8 f8 f8 c8 ef4 f4 |
  \break
  af8 d,4.~ d2 | \tuplet 3/2 { r4 c'4 bf4 } \tuplet 3/2 { af4 f4 d4 } |
  c1~ | c2. r8 c8 |
  \break
  g'8 a8 bf8 c8 a8 f4. | r8 d8 d8 af'8 g4 f8 f8~ |

  f1~ | f2 r4 f8 f8 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "B"

  bf8 c8 bf8 af8 bf4. c8 | af8 f4.~ f4. f8 | bf8 c8 bf8 c8 df4 ef4 | c2~ c4. c8 |
  \break
  df8 df8 df8 df8 df4. f8 | df8 df4.~ df4. bf8 |
  df8 df8 df8 df8 df,4. df'8 | \tuplet 3/2 { c8 c8 c8 } c8 c8 c,4. c8 |
  
  \sect "A3"

  f8 f8 f8 c8 ef8 c4 c8 | f8 f8 f8 c8 ef4. c8 | 
  f8 f8 f8 c8 ef8 ef8 ef8 c8 | f8 f8 f8 c8 ef4 f4 |
  \break
  af8 d,4.~ d2 | \tuplet 3/2 { r4 c'4 bf4 } \tuplet 3/2 { af4 f4 d4 } |
  c1 | r8 d8 \tuplet 3/2 { f8 a8 c8 } ef8 d4 a8 |
  \break
  bf8 a8 bf8 c8 a8 f4. | r8 d8 f8 af8 g4 f8 f8~ | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
