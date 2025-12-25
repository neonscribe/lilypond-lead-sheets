%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

genderTitle = 
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  "Hallelujah I Love Him So"
  "Hallelujah I Love Her So")

\header {
  title = \genderTitle
  subtitle = \instrument
  poet = ""
  composer = "Ray Charles"
  copyright = \markup \small { \now " " "© 1956 Hill & Range Songs, Inc." }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Well, let me tell you 'bout a girl I know. __
She is my ba -- by and she lives next door. __
Ev -- 'ry morn -- ing 'fore the sun comes up __
she brings my cof -- fee in my fav -- 'rite cup. __
That's why I know, __ yes I know, __
hal -- le -- lu -- jah, I just love her so. __

When I'm in trou -- ble and I have no friends, __
I know she'll go with me un -- til the end. __
Ev -- 'ry bod -- y asks me how I know. __
I smile at them and say she told me so. __
That's why I know, __ yes I know, __
hal -- le -- lu -- jah, I just love her so. __

Now if I call her on the tel -- e -- phone
and tell her that I'm all a -- lone, __
by the time I count from one to four, __
I hear her _ _ _ _ on my door. __

In the eve -- ning when the sun goes down, __
when there is no -- bod -- y else a -- round, __
she kiss -- es me __ and she holds me tight, __
she tells me “Ba -- by ev -- 'ry -- thing's all right.” __
That's why I know, __ yes I know, __
hal -- le -- lu -- jah, I just love her so. __
}

refrainObjectGenderMaleLyrics = \lyricmode {
Well, let me tell you 'bout a boy I know. __
He is my ba -- by and he lives next door. __
Ev -- 'ry morn -- ing 'fore the sun comes up __
he brings my cof -- fee in my fav -- 'rite cup. __
That's why I know, __ yes I know, __
hal -- le -- lu -- jah, I just love him so. __

When I'm in trou -- ble and I have no friends, __
I know he'll go with me un -- til the end. __
Ev -- 'ry bod -- y asks me how I know. __
I smile at them and say he told me so. __
That's why I know, __ yes I know, __
hal -- le -- lu -- jah, I just love him so. __

Now if I call him on the tel -- e -- phone
and tell him that I'm all a -- lone, __
by the time I count from one to four, __
I hear him _ _ _ _ on my door. __

In the eve -- ning when the sun goes down, __
when there is no -- bod -- y else a -- round, __
he kiss -- es me and he holds me tight, __
he tells me “Ba -- by ev -- 'ry -- thing's all right.” __
That's why I know, __ yes I know, __
hal -- le -- lu -- jah, I just love him so. __
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainHLChords = \chordmode {
  f2 f2/a bf2 b4:dim7 c4:7 f2 f2/a bf2 b4:dim7 c4:7
  f1 f2.:7 f4:7.5+ bf1 b1:dim7
  f2 a2:7 d2:m bf2:7
  
  g2:7 c2:sus7 f2 c2:7
  
  f2 f2/a bf2 b4:dim7 c4:7 f2 f2/a bf2 b4:dim7 c4:7
  f1 f2.:7 f4:7.5+ bf1 b1:dim7
  f2 a2:7 d2:m bf2:7
  
  g2:7 c2:sus7 f2 f2:7.5+

  bf1 b1:dim7 f1 f1:7
  bf1:9 af1:9 g1:7 c1:7

  f2 f2/a bf2 b4:dim7 c4:7 f2 f2/a bf2 b4:dim7 c4:7
  f1 f2.:7 f4:7.5+ bf1 b1:dim7
  f2 a2:7 d2:m bf2:7 g2:7 c2:sus7 f2 bf2:7 f2
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
}

refrainNicoChords = \chordmode {
  f2 f2/a bf2 b4:dim7 f4/c f2 f2/a bf2 b4:dim7 f4/c
  f1 f2 f4:7 f4:7.5+ bf1 b1:dim7
  f2/c a2:7 d2:m bf2:7
  
  g2:7 c2:sus7 f2 c2:7
  
  f2 f2/a bf2 b4:dim7 f4/c f2 f2/a bf2 b4:dim7 f4/c
  f1 f2 f4:7 f4:7.5+ bf1 b1:dim7
  f2/c a2:7 d2:m bf2:7
  
  g2:7 c2:sus7 f2 f2:7.5+

  bf1 b1:dim7 f1 f4. f8*5:7
  bf1:9 af1:9 g1:7 c2.:7 c4:7.5+

  f2 f2/a bf2 b4:dim7 f4/c f2 f2/a bf2 b4:dim7 f4/c
  f1 f2 f4:7 f4:7.5+ bf1 b1:dim7
  f2/c a2:7 d2:m bf2:7 g2:7 c2:sus7 f1 f2
  \chordInsideParens{ c2:sus7 }
}

refrainChords = \refrainNicoChords

refrainKey = f

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
  \tempo "Medium Gospel [Ray Charles 1955]" 4 = 148

  \sectStart "A1"
  
  r8 c'8 d8 c8 af8 g8 f8 d8 | f4 f8 af8~ af8 r8 r4 | r8 c8 d8 c8 af8 g8 f8 d8 | f4 f8 d8~( d8 c8) r4 |
  \break
  r4 d'8 c8 af8 g8 f8 d8 | f4 f8 f8~ f8 r8 r4 | r8 d8 f8 d8 f8 d8 f8 d8 | f4 f8 f8~ f8 c8 d8 f8 |
  \break
  a4( c4) r4 a8 a8 | g8( f4.) r4 af8 g8 |

  af8 g8 f8 d8 f4 f8 f8~ | f8 r8 r4 r2 |

  \sect "A2"
  
  r8 c'8 d8 c8 af8 g8 f8 d8 | f4 f8 af8~ af8 r8 r4 | r8 c8 d8 c8 af8 g8 f8 d8 | f4 f8 d8~( d8 c8) r4 |

  r4 d'8 c8 af8 g8 f8 d8 | f4 f8 f8~ f8 r8 r4 | r8 d8 f8 d8 f8 d8 f8 d8 | f4 f8 f8~ f8 c8 d8 f8 |

  \bar "|o"
  \xPageBreak

  a4( c4) r4 a8 a8 | g8( f4.) r4 af8 g8 |


  af8 g8 f8 d8 f4 f8 f8~ | f8 r8 r4 r2 |

  \sect "B"
  
  r8 d8 f8 d8 f8 d8 f8 d8 | f8 f8 f4 r2 | r4 a4 d8 c8 a8 f8 | a4 f8 g8~ g4 r4 |
  \break
  r4 f8 d8 f8 d8 f8 d8 | f4 f8 f8~ f8 r8 r4 | r8 d8 g8 d8
  \override NoteHead.style = #'cross
  g8 g8 g8 g8 |
  \revert NoteHead.style
  g8 a4 d8~( d4 c4) |
  
  \sect "A3"

  r4 d8 c8 af8 g8 f8 d8 | f4 f8 af8~ af8 r8 r4 |
  \break
  r4 d8 c8 af8 g8 f8 d8 | f4 f8 d8~ d8( c8) r4 |
  \break
  r8 c'8 d8 c8 af8( g8) f8 d8 | f4 f8 f8~ f8 r8 r4 | r8 d8 f8 d8 f8 d8 f8 d8 | f4 f8 f8~ f8 c8 d8 f8 |
  \break
  a8( c4.) r4 a8 a8 | g8( f4.) r4 af8 g8 | af8 g8 f8 d8 f4 f8 f8~ | f1~ | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
