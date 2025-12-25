%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Baby, It's Cold Outside"
  subtitle = \instrument
  poet = ""
  composer = "Frank Loesser"
  copyright = \markup \small { \now " " "© 1948 Frank Music Corp." }
}

refrainLyrics = \lyricmode {
I real -- ly can't stay, __ I've got to go 'way, __
This eve -- ning has been __ so ver -- y nice. __
My moth -- er will start to wor -- ry
and fath -- er will be pac -- ing the floor.
So real -- ly I'd bet -- ter scur -- ry. Well, may -- be just a half a drink more.

The

least I'm gon -- na say that I've tried.
I real -- ly can't stay, __
Ah, but it's cold __ out -- side.
(I)

_ Ah, but it's cold __ out -- side.
}

refrainLyricsTwo = \lyricmode {
_ neigh -- bors might think, __
Say, what's in that drink? __
I wish I knew how __ to break the spell. __
I ought to say, “No, no, no, sir.”
at

}

refrainLyricsVoiceTwo = \lyricmode {
_ But ba -- by it's cold out -- side. __
But ba -- by it's cold out -- side. __
Been hop -- ing that you'd drop in, __
I'll hold your hands __ they're just like ice.
Beau -- ti -- ful what's your hur -- ry?
Lis -- ten to the fi -- re -- place roar.
Beau -- ti -- ful please don't hur -- ry?
Put some re -- cords on while I pour.

clo -- ser?
What's the sense of hurt -- ing my pride? __
Oh ba -- by don't hold __ out.
Ba -- by, it's cold __ out -- side.

_ out. Ba -- by it's cold
}

refrainLyricsTwoVoiceTwo = \lyricmode {
_ But ba -- by it's bad __ out there, __
No cabs to be had __ out there, __
Your eyes are like star -- light now, __
I'll take your hat __ your hair looks swell.
Mind if I move in
}

refrainChords = \chordmode {
  s4
  
  ef1:6 ef2:6 c2:m7 f2:m7 bf2:7 f2:m7 bf2:7
  ef1:6 ef2:6 c2:m7 bf1:m7 ef1:7
  
  af2 af2:6 af2:maj7 af2:6
  
  af2:m af2:m6 af2:m7 df2:9 ef1:6 c1:m7 f1:7 bf4:7 r2.
  
  c2:m7 f2:7 f2:m7 bf2:7 ef1:6 g2:m7.5- c2:7 f2:7 bf2:7 ef2:6 \chordInsideParens{ bf2:7 }
  
  g2:m7.5- c2:7 f1:7 f1:7 af1:m6 df1:9 ef1:6
  
  f2:m7 fs4.:dim7 f8:m7
  \tuplet 3/2 { s4 d4:7.9+.5+ g4:13 } \tuplet 3/2 { c4:7.9+.5+ f4:13 bf4:7.9+.5+ } ef1:6.9
}

refrainKey = ef

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
  \tempo "Medium Slow Swing [Ray Charles & Betty Carter 1961]" 4 = 78

  \partial 4 \invisEighth bf,8 |

  \sectStart "A1,A2"
  
  \repeat volta 2 {
  g'8 f8 ef8 bf'8~ bf2~ | bf2 r4 r8 bf,8 | af'8 g8 f8 bf8~ bf2~ | bf2 r4 r8 bf,8 |
  g'8 f8 ef8 bf'8~ bf2~ | bf4 bf4 g4 ef4 | f1~ | f2 r4 r8 ef8 |

  \sectNoBreak "B,C"
  
  c'8 ef,8 ef4 ef4 ef4 | ef8 ef4. r4 r8 ef8 |
  
  \alternative { \volta 1 {

  cf'8 ef,8 ef8 ef8 ef8 ef8 ef4 | ef2. r8 ef8 | 

  \xPageBreak
  
  c'8 ef,8 ef4 ef4 ef4 | ef8 ef4. r4 r8 ef8 | c'8 f,8 f8 f8 f8 f8 f4 | f2. r8 bf,8 |

  } \volta 2 {
  
  c'8 f,8 f8 f8 f8 f8 f4 | f2. r8 bf,8 |
  g'8 f8 ef8 bf'8~ bf2~ \textToCodaLastTime | bf2 g8 af8 bf8 c8~ | c2 d,2 | ef2. r8
  \override Parentheses.font-size = #5
  \parenthesize bf8 |
  } } }
  
  \textCodaBreak
  \bar "||-|."
  
  bf'2\repeatTie g8 af8 bf8 a8~ | <a c>1~ | <a c>1 | <af cf>1~ | <af cf>1 | <g bf>1 |
  \break  
  ef4-. ef8 a8~ \tuplet 3/2 { a8 af8 gf8 } ef8 ef8 |
  \tuplet 3/2 { r4 bf'4 a4 } \tuplet 3/2 { af4 g4 df4 } | f1\fermata |

  \bar "|."
}

refrainMelodyTwo = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \partial 4 \invisEighth r8 |
  
  \override Parentheses.font-size = #5
  \parenthesize ef4\repeatTie
  r8 bf8 g'8 f8 ef8 g8~ | g8 ef4 ef8~ ef4 r4 | r4 r8 bf8 af'8 g8 f8 af8~ | af8 f4 f8~ f4 r4 |

  r4 r8 bf,8 g'8 f8 ef8 g8~ | g8 ef4 ef8~ ef2 | r8 c'4. bf4 f8 c'8~ | c4 bf4 f4 g4 |
  
  af2. r4 | c8 ef,8 ef4 ef4 ef4 |

  ef8 ef4. r2 | cf'8 ef,8 ef8 ef8 ef8 ef8 ef4 |
  ef2 r2 | c'8 ef,8 ef4 ef4 ef4 | ef8 ef4. r2 | c'8 c,8 c8 bf8 c8 bf8 c8 ef8\laissezVibrer |

  ef8 ef4. r2 | c'8 c,8 c8 bf8 c8 bf8 c8 ef8~ |
  ef4 r8 bf8 g'8 af8 bf8 df8~ | df8 c4. g8 af8 bf8 a8~ | a2 af2 | g2. r4 |
  
  df'8\repeatTie c4. g8 af8 bf8 c8\laissezVibrer |
  
  r8 c,8 ef8 g8 ef4-. ef8 g8 | ef4-. ef4-. ef8 g8 ef4-. |
  r8 cf8 ef8 g8 ef4-. ef8 g8 | ef4-. ef4-. ef8 g8 ef4-. | r8 c8 ef8 g8 ef4-. ef8 g8 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column 
  {
    \vspace #2
    \line { \large { I really can't stay } }
    \line { \large { I've got to go 'way } }
    \line { \large { This evening has been } }
    \line { \large { So very nice } }
    \line { \large { My mother will start to worry } }
    \line { \large { And father will be pacing the floor } }
    \line { \large { So really I'd better scurry } }
    \line { \large { Well, maybe just a half a drink more } }
    \line { \large { The neighbors might think } }
    \line { \large { Say, what's in this drink? } }
    \line { \large { I wish I knew how } }
    \line { \large { To break the spell } }
    \line { \large { I ought to say no, no, no sir } }
    \line { \large { At least I'm gonna say that I've tried } }
    \line { \large { I really can't stay } }
    \line { \large { Ah, but it's cold outside } }
    \vspace #1
    \line { \large { I simply must go } }
    \line { \large { The answer is no } }
    \line { \large { The welcome has been } }
    \line { \large { So nice and warm } }
    \line { \large { My sister will be suspicious } }
    \line { \large { My brother will be there at the door } }
    \line { \large { My maiden aunt's mind is vicious } }
    \line { \large { Well, maybe just a cigarette more } }
    \line { \large { I've got to get home } }
    \line { \large { Say, lend me a comb } }
    \line { \large { You've really been grand } }
    \line { \large { But don't you see } }
    \line { \large { There's bound to be talk tomorrow } }
    \line { \large { At least there will be plenty implied } }
    \line { \large { I really can't stay } }
    \line { \large { Ah, but it's cold outside } }
  }
  \column
  {
    \hspace #4
    }
  \column 
  {
    \vspace #2
    \line { \large { But baby, it's cold outside } }
    \line { \large { But baby, it's cold outside } }
    \line { \large { Been hoping that you'd drop in } }
    \line { \large { I'll hold your hands, they're just like ice } }
    \line { \large { Beautiful, what's your hurry? } }
    \line { \large { Listen to that fireplace roar } }
    \line { \large { Beautiful, please don't hurry } }
    \line { \large { Put some records on while I pour } }
    \line { \large { But baby, it's bad out there } }
    \line { \large { No cabs to be had out there } }
    \line { \large { Your eyes are like starlight now } }
    \line { \large { I'll take your hat, your hair looks swell } }
    \line { \large { Mind if I move in closer? } }
    \line { \large { What's the sense of hurting my pride? } }
    \line { \large { Oh baby, don't hold out } }
    \line { \large { Baby, it's cold outside } }
    \vspace #1
    \line { \large { But baby, it's cold outside } }
    \line { \large { But baby, it's cold outside } }
    \line { \large { How lucky that you dropped in } }
    \line { \large { Look out that window at that storm } }
    \line { \large { Gosh, your lips look delicious } }
    \line { \large { Waves upon a tropical shore } }
    \line { \large { Gosh, your lips are delicious } }
    \line { \large { Never such a blizzard before } }
    \line { \large { But baby, you'd freeze out there } }
    \line { \large { It's up to your knees out there } }
    \line { \large { I thrill when you touch my hand } }
    \line { \large { How can you do this thing to me? } }
    \line { \large { Think of my lifelong sorrow } }
    \line { \large { if you caught pneumonia and died } }
    \line { \large { get over that old doubt, } }
    \line { \large { Baby, it's cold outside } }
  }
}
