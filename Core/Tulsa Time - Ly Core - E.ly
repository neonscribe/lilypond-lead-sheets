%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Tulsa Time"
  subtitle = \instrument
  poet = ""
  composer = "Danny Flowers"
  copyright = \markup \small { \now " " "© 1978 Universal Polygram International Publishing Inc." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _
I left O -- kla -- ho -- ma driv -- in' in a Pon -- ti -- ac
just a -- bout to lose __ my mind. __

I was go -- in' to Ar -- i -- zo -- na, may -- be on to Cal -- i -- for -- nia
where the peo -- ple all live __ so fine. __

My ba -- by said I's cra -- zy, my ma -- ma called me la -- zy,
I was gon -- na show 'em all __ this time. __

'Cause you know I ain't no fool an' I don't need no more school -- in',
I was born to just walk __ the line. __

Liv -- in' on Tul -- sa time. __
Liv -- in' on Tul -- sa time. __
Well, you know I've been through it when I set my watch back to it.
Liv -- in' on Tul -- sa time. __
}

refrainChords = \chordmode {
  r1 r1 e1 e1
  
  e1 e1 e1 b1
  b1 b1 b1 e1

  e1 e1 e1 b1
  b1 b1 b1 e1

  e1 e1 e1 b1
  b1 b1 b1 e1
}

refrainKey = e

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
  \tempo "Medium [Don Williams 1978]" 4 = 104

  \sectStart "Intro"
  
  \ambitusOff
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 1.0 {
	\revert Stem.direction
	e8-._"(Electric Guitar)" e8-. ds8-. d8~ d2 | cs8-. cs8-. c8-. b8~ b8 a8 g8( gs8) |
	e2 s2 | s1 |
	}
      }
      { \voiceOne
	\revert Stem.direction
	s1 | s1 |
	r8^"(Dobro)" g''8( gs8) b8 \acciaccatura g8 fs8 e8 \acciaccatura g8 fs8 e8 |
	\acciaccatura g8 fs8 e8 \acciaccatura g8 fs8 e8 \acciaccatura g8 fs8 e8 \acciaccatura g8 fs8 e8 |
      }
      >>
     \revert Stem.direction
     \oneVoice
  \ambitusOn
  
  \sect "Verse"  

  b8 b8 b8 a8 b8 gs4 as8( | b8) a8 b8 a8 b8 g8 gs8 r8 |
  b8 a8 b8 a8 b8( a8) g8 b8~ | b4 r4 r4 gs8 gs8 |
  \break
  a16 a16 a8 b8 b8 b8 fs8 gs8 a8 | a8 a8 a8 b8 b8 fs8 r8 b16 b16 |
  b8 b8 cs4 g8( fs8) e8 gs8~ | gs4 r4 r4 r8 b8 |
  \break
  b8 a8 b8 b8 a8 g8 r8 b8 | b8 a8 b8 b8 b8 gs8 r8 b16 b16 |
  b8 b8 b8 b8 b8( a8) gs8 b8~ | b4 r4 r4 gs8 a8 |
  \break
  a8 a8 a8 b8 b8 fs8 a8 a8 | a8 b4 b8 b8 fs8 r8 b16 b16
  b8 b8 cs4 g8( fs8) e8 e8~ | e4 r4 r2 |

  \sect "Chorus"
  
  b'8 b8 b4 b8( a8) gs8 b8~ | b4 r4 r2 | gs8 b8 b4 b8( a8) gs8 b8~ | b4 r4 r4 gs8 a8 |
  \break
  a8 b4 b8 b8 fs8 gs8 a8 | a8 a8 a8 b8 b8 fs8 r4 | b8 b8 cs4 g8( fs8) e8 e8~ | e4 r4 r2 |

  \bar "|."
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
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #7
   \line { \large { Chorus 1 } }
   \vspace #4
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Verse 2 } }
   \vspace #8
   \line { \large { Chorus 2 } }
   \vspace #4
   \line { \large { Chorus 3 } }
   \vspace #4
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #4
   \line { \large { I left Oklahoma, drivin' in a Pontiac, just about to lose my mind. } }
   \line { \large { I was goin' to Arizona, maybe on to California } }
   \line { \large { where the people all live so fine. } }
   \line { \large { My baby said I's crazy, my mama called me lazy, } }
   \line { \large { I was gonna show 'em all this time. } }
   \line { \large { 'Cause you know I ain't no foolin' and I don't need no more schoolin', } }
   \line { \large { I was born to just walk the line. } }
   \vspace #1
   \line { \large { Livin' on Tulsa time. } }
   \line { \large { Livin' on Tulsa time. } }
   \line { \large { Well, you know I've been through it when I set my watch back to it. } }
   \line { \large { Livin' on Tulsa time } }
   \vspace #1
   \line { \large { \italic { (Chorus form) } } }
   \vspace #1
   \line { \large { Well, there I was in Hollywood, wishin' I was doin' good, } }
   \line { \large { talkin' on the telephone line. } }
   \line { \large { But they don't need me in the movies and nobody sings my songs, } }
   \line { \large { guess I'm just a-wastin' time. } }
   \line { \large { Well, then I got to thinkin', man, I'm really sinkin' } }
   \line { \large { and I really had a flash this time. } }
   \line { \large { I had no business leavin', and nobody would be grievin' } }
   \line { \large { if I went on back to Tulsa time. } }
   \vspace #1
   \line { \large { Livin' on Tulsa time. } }
   \line { \large { Livin' on Tulsa time. } }
   \line { \large { Gonna set my watch back to it, 'cause you know I been through it. } }
   \line { \large { Livin' on Tulsa time } }
   \vspace #1
   \line { \large { Livin' on Tulsa time. } }
   \line { \large { Livin' on Tulsa time. } }
   \line { \large { Gonna set my watch back to it, 'cause you know I been through it. } }
   \line { \large { Livin' on Tulsa time } }
   \vspace #1
   \line { \large { \italic { (Chorus form, repeat) } } }
 }
}
