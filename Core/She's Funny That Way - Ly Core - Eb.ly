%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

genderTitle = 
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  "He's Funny That Way"
  "She's Funny That Way")

\header {
  title = \genderTitle
  subtitle = \instrument
  poet = "Richard A. Whiting"
  composer = "Neil Moret"
  copyright = \markup \small "© 1928 Robbins Music Corporation"
}

refrainObjectGenderFemaleLyricsOne = \lyricmode {
I'm not much to look at, noth -- in' to see, just glad I'm liv -- in' and luck -- y to be.
I got a wo -- man, cra -- zy for me, she's fun -- ny that way.

I can't save a dol -- lar, ain't worth a cent, she does -- n't holl -- ler, she'd live in a tent.
I got a wo -- man, cra -- zy for me, she's fun -- ny that way.

Tho' she loves to work and slave for me ev -- 'ry day,
she'd be so much bet -- ter off if I went a -- way.

But why should I leave her, why should I go, she'd be un -- hap -- py with -- out me I know.
I got a wo -- man, cra -- zy for me, she's fun -- ny that way. (I)
}

refrainObjectGenderMaleLyricsOne = \lyricmode {
I'm not much to look at, noth -- in' to see, just glad I'm liv -- in' and luck -- y to be.
I got a man, _ cra -- zy for me, he's fun -- ny that way.

I can't save a dol -- lar, ain't worth a cent, he does -- n't holl -- ler, he'd live in a tent.
I got a man, _ cra -- zy for me, he's fun -- ny that way.

Tho' he loves to work and slave for me ev -- 'ry day,
he'd be so much bet -- ter off if I went a -- way.

But why should I leave him, why should I go, he'd be un -- hap -- py with -- out me I know.
I got a man, _ cra -- zy for me, he's fun -- ny that way. (I)
}

refrainLyricsOne =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyricsOne
  refrainObjectGenderFemaleLyricsOne)

refrainObjectGenderFemaleLyricsTwo = \lyricmode {
_ nev -- er had noth -- in', no one to care, that's why I seem to have more than my share.
I got a wo -- man, cra -- zy for me, she's fun -- ny that way.

When I hurt her feel -- ings, once in a while, her on -- ly ans -- wer is one lit -- tle smile.
I got a wo -- man, cra -- zy for me, she's fun -- ny that way.

I can see no oth -- er way and no bet -- ter plan,
end it all and let her go to some bet -- ter man.

But I'm on -- ly hu -- man, cow -- ard at best, I'm more than cer -- tain she'd fol -- low me west.
I got a wo -- man, cra -- zy for me, she's fun -- ny that way.
}

refrainObjectGenderMaleLyricsTwo = \lyricmode {
_ nev -- er had noth -- in', no one to care, that's why I seem to have more than my share.
I got a man, _ cra -- zy for me, he's fun -- ny that way.

When I hurt his feel -- ings, once in a while, his on -- ly ans -- wer is one lit -- tle smile.
I got a man, _ cra -- zy for me, he's fun -- ny that way.

I can see no oth -- er way and no bet -- ter plan,
end it all and let him go to some bet -- ter gal.

But I'm on -- ly hu -- man, cow -- ard at best, I'm more than cer -- tain he'd fol -- low me west.
I got a man, _ cra -- zy for me, he's fun -- ny that way.
}

refrainLyricsTwo =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyricsTwo
  refrainObjectGenderFemaleLyricsTwo)

refrainChords = \chordmode {
  s4

  ef2:6 bf2:7.5+ ef2:6 bf2:7.5+ ef2:6 d2:7.5+  g2:m7.5- c2:7.5+
  f1:7 df1:7 c2:m7 f2:7 bf2:sus7 bf2:7

  ef2:6 bf2:7.5+ ef2:6 bf2:7.5+ ef2:6 d2:7.5+  g2:m7.5- c2:7.5+
  f1:7 df1:7 ef2:6 bf4:sus7 bf4:7 ef2:6 a2:7.5-
  
  af1:m6 df1:7 ef2:6 bf2:7.5+ ef2:6 a2:7.5+
  af2:m6 df2:7 g2:m7 c2:m7 f2:sus7 f2:7 f2:m7 bf2:7.5+

  ef2:6 bf2:7.5+ ef2:6 bf2:7.5+ ef2:6 d2:7.5+  g2:m7.5- c2:7.5+
  f1:7 df1:7 ef2:6 bf4:sus7 bf4:7 ef2:6
  \chordInsideParens{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 120

  \partial 4 bf4 |

  \sectNoBreak "A1"
  
  c8 d8 c8 d8~ d4. d8 | c8 d8 c8 d8~ d2 | c8 d8 c8 d8~ d8 c8 d4 | c8 d8 c8 d8~ d2 |
  f,8 g8 f8 g8~ g4. g8 | f8 g8 f8 g8~ g2 | r8 ef4. g8 ef8 g8 bf8~ | bf2. bf4 |
  
  \sect "A2"
  
  c8 d8 c8 d8~ d4. d8 | c8 d8 c8 d8~ d2 | c8 d8 c8 d8~ d8 c8 d4 | c8 d8 c8 d8~ d2 |
  f,8 g8 f8 g8~ g4. g8 | f8 g8 f8 g8~ g2 | r8 ef4. f8 ef8 f8 ef8~ | ef1 |
  
  \sect "B"

  ef4. f8 g4. af8 | bf4. cf8 df4. d8 | ef2 bf8 af4. | g1 |
  ef4. f8 g4. af8 | bf4. c8 d4. ef8 | f2 d4 c8 bf8~ | bf2. bf4 |

  \sect "A3"

  c8 d8 c8 d8~ d4. d8 | c8 d8 c8 d8~ d2 | c8 d8 c8 d8~ d8 c8 d4 | c8 d8 c8 d8~ d2 |
  f,8 g8 f8 g8~ g4. g8 | f8 g8 f8 g8~ g2 | r8 ef4. f8 ef8 f8 ef8~ | ef2 r4
  \override Parentheses.font-size = #5
  \parenthesize bf'4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
