%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bei Mir Bist Du Schön (Means That You're Grand)"
  subtitle = \instrument
  poet = "Jacob Jacobs, translated by Sammy Cahn and Saul Chaplin"
  composer = "Sholom Secunda"
  copyright = \markup \small { \now " " "© 1932 J & J Kammen Music Company" }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Of all the girls I've known and I've known some,
un -- til I first met you I was lone -- some.
And when you came in sight dear, my heart grew light and this old world seemed new to me.

You're real -- ly swell I have to ad -- mit,
you de -- serve ex -- pres -- sions that real -- ly fit you.
And so I've racked my brain, hop -- ing to ex -- plain all the things that you do to me.

Bei mir bist du schön, please let me ex -- plain, bei mir bist du schön means that you're grand.

Bei mir bist du schön, A -- gain I'll ex -- plain, it means you're the fair -- est in the land.

I could say Bel -- la, Bel -- la, e -- ven say Voon -- der -- bar,
each lan -- guage on -- ly helps me tell you how grand you are.

I've tried to ex -- plain, bei mir bist du schön, so kiss me and say you un -- der -- stand.

(Bei)
}

refrainObjectGenderMaleLyrics = \lyricmode {
Of all the boys I've known and I've known some,
un -- til I first met you I was lone -- some.
And when you came in sight dear, my heart grew light and this old world seemed new to me.

You're real -- ly swell I have to ad -- mit,
you de -- serve ex -- pres -- sions that real -- ly fit you.
And so I've racked my brain, hop -- ing to ex -- plain all the things that you do to me.

Bei mir bist du schön, please let me ex -- plain, bei mir bist du schön means that you're grand.

Bei mir bist du schön, A -- gain I'll ex -- plain, it means you're the fair -- est in the land.

I could say Bel -- la, Bel -- la, e -- ven say Voon -- der -- bar,
each lan -- guage on -- ly helps me tell you how grand you are.

I've tried to ex -- plain, bei mir bist du schön, so kiss me and say you un -- der -- stand.

(Bei)
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  s2
  
  a1:m6 b2:m7.5- e2:7 a1:m6 b2:m7.5- e2:7 
  a1:m6 d1:m f1:7 e1:7

  a1:m6 b2:m7.5- e2:7 a1:m6 b2:m7.5- e2:7 
  a1:m6 d1:m f1:7 e2:7 r2
  
  a1:m a1:m a1:m a1:m
  e1:7 e1:7 a2:m g2:7 f2:7 e2:7

  a1:m a1:m a1:m a1:m
  e1:7 e1:7 a2:m e2:7 a1:m
  
  d1:m d1:m a1:m a1:m
  d1:m d1:m e1:7 e1:7

  a1:m a1:m a1:m a1:m
  e1:7 e1:7 a2:m
  \chordOpenParen{ g2:7 }
  f2:7
  \chordCloseParen{ e2:7 }
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up Swing [Andrews Sisters 1937]" 4 = 165
  
  \xTextMark "Verse"
  
  \partial 2 \invisEighth e8 a8 b8 |
  \bar "||"

  \sectStart "V1"
  
  c8 c4 c8~ c8 b4 a8 | d4 b4~ b8 e,8 a8 b8 | c8 c4 c8~ c8 b4 a8 | d4 b4~ b8 e,8 a8 b8 |
  \break
  c8 c4 c8~ c8 b4 a8 | d8 d4 d8~ d8 c4 b8 | c8 c4 c8~ c8 b4 a8 | b2 r8 e,8 a8 b8 |
  
  \sect "V2"
  
  c8 c4 c8~ c8 b4 a8 | d4 b4~ b8 e,8 a8 b8 | c8 c4 c8~ c8 b4 a8 | d4 b4~ b8 e,8 a8 b8 |
  \break
  c8 c4 c8~ c8 b4 a8 | d8 d4 d8~ d8 c4 b8 | ef8 ef4 ef8~ ef8 d4 c8 | e4 r4 r8 e,4. |
  \bar "||"
  
  \xPageBreak
  
  \xTextMark "Refrain"
  
  \sectNoBarNoBreak "A1"
  
  c'2 b8 a4 c8~ | c2 r8 e,4. | c'2 b8 a4 c8~ | c2 r8 c4. |
  \break
  b2 gs8 e4 b'8~ | b8 b4 c8~ c8 b4 a8~ | a1 | r2 r8 e4. |

  \sect "A2"

  c'2 b8 a4 c8~ | c2 r8 e,4. | c'2 b8 a4 c8~ | c2 r8 c4. |
  \break
  b2 gs8 e4 b'8~ | b8 b4 c8~ c8 b4 a8~ | a2 r2 | r4 r8 a8 b4 c4 |

  \sect "B"
  
  d2 a4 d4~ | d8 c8~ c4 b4 a4 | c2 c8 a4 c8~ | c4. a8 b4 c4 |
  \break
  d2 a4 d4~ | d8 c8~ c4 b4 a4 | e'2 e8 e4 e8~ | e2 r8 e,4. |

  \sect "A3"

  c'2 b8 a4 c8~ | c2 r8 e,4. | c'2 b8 a4 c8~ | c2 r8 c4. |
  \break
  b2 gs8 e4 b'8~ | b8 b4 c8~ c8 b4 a8~ | a1 | r2 r8 
  \override Parentheses.font-size = #5
  \parenthesize
  e4. |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
