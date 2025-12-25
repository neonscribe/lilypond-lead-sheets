%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Act Naturally"
  subtitle = \instrument
  poet = ""
  composer = "Voni Morrison, Johnny Russell"
  copyright = \markup \small { \now " " "© 1963 Blue Book Music Co." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
They're gon -- na put me in the mo -- vies,
They're gon -- na make a big __ star out of me.
We'll make a film __ a -- bout a man that's sad and lone -- ly,
and all I got -- ta do is act nat -- 'ral -- ly.

Well, I

bet you I'm gon -- na be a big __ star,
might win an Os -- car, you can __ nev -- er tell. __
The mo -- vies gon -- na make me a big __ star
'cause I can play the part so well. __

Well, I
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
We'll
}

refrainCowboyChords = \chordmode {
  s2.
  
  d1:7 d1:7 g1 g1
  
  g1 g1 c1 c1
  g1 g1 d1:7 d1:7
  
  g1 g1 c1 c1
  d1:7 d1:7 g1 g4 r2.

  d1:7 d1:7 g1 g1
  d1:7 d1:7 g1 g1
  d1:7 d1:7 g1 g1
  a1:7 a1:7 d1:7 d1:7
  
  g4 r2. d1:7 d1:7 g1 g1
  d1:7 d1:7 g1 g1
}

refrainJazzChords = \chordmode {
  s2.
  
  d1:7 d1:7 g1 g1
  
  g2 g2:maj7 g1:7 c1 c1:6
  g2 g2:maj7 g2:6 gs2:dim7 a1:m11 d1:7 
  
  g2 g2:maj7 g1:7 c1 c1:6
  a1:m11 d1:7 g1 g4 r2.

  a1:m11 d1:7 g1 g1:maj7
  a1:m11 d1:7 g1 g1:maj7
  a1:m11 d1:7 g1 g2:maj7 gs2:dim7
  a1:7 a1:7 d1:sus7 d1:7
  
  g4 r2. d1:7 d1:7 g1 g1
  d1:7 d1:7 g1 g1
}

refrainChords =
   $(if (and (defined? 'useJazzChords) useJazzChords)
     refrainJazzChords
     refrainCowboyChords)

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [The Beatles 1964]" 4 = 186

  \sectNoBarNoBreak "Intro"
  
  \partial 2. g4 fs4 e4 |
  \bar "||"

  d4 d'8 g,8( a8) c4. | d4 fs8 d8 e8 fs4. |
  \acciaccatura d8 <e g>4 <e g>4 \acciaccatura e8 d4 b4 |
  g4. g,8( b8) e8 d4 |

  \sect "Verse"
  \segnoSign
  
  d'2. d8 b8 | d4 d4 d4 d8 e8~ | e4 c2. | r1 |
  \break
  d4 d8 d8 d4 d8 e8~ | e4 d4 d4 b4 | a2. r4 | r2 r4 r8 b8 |
  \break
  d4 d8 d8~ d8 d8 d8 d8 | d4 d4 d4 d8 e8~ | e4 c2. | r2 r4 r8 c8 |
  \break
  d8 cs8 d8 cs8 d8 d4 r8 | r8 d4 b8~( b8 a4) g8 | g2. r4 \textToCodaSecondAndFourthTime | r2 r8 b8 b4 |
  
  \sect "Bridge"
  
  a4 a4 r8 a4. | d4 d4 e4 d8 d8~ | d4 b2 r4 | r2 r8 b4. |
  \break
  a4 a8 a8~ a8 a4. | d4 e4~ e8 d8 c8 b8~ | b2 r2 | r2 r4 r8 a8 |
  \break
  a4 a4 a4 a4 | d2 e4 d8 d8~ | d4 b2 r4 | r2 r4 r8 b8 |
  \break
  a4 a4 a4 a8 cs8~ | cs2 r8 d4 d8~ | d1 | r2 r8 d4 b8 \dalSegnoFirstAndSecondTimes |
  \bar "||"
  
  \xPageBreak
  \textCodaBreak
  
  r4 g4 fs4 e4 |

  \sectNoBreak "Interlude/Outro"
  
  d4 d'8 g,8( a8) c4. | d,4 d'8 g,8( a8) c4. | g'4 g4 e8 d8 as8 b8 | g4 \textFine g4 fs4 e4 |
  \break
  d4 d'8 g,8( a8) c4. | d,4 d'8 g,8( a8) c4. | g'4 g4 e8 d8 as8 b8 | g4 r8 a,8( b8) e8 d8
  \autoBeamOff
  b'8
  \autoBeamOn
  \dalSegno
  |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Bridge } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Interlude } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Bridge } }
   \vspace #4
   \line { \large { Verse 4 (2) } }
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
   \line { \large { They're gonna put me in the movies } }
   \line { \large { They're gonna make a big star out of me } }
   \line { \large { We'll make a film about a man that's sad and lonely } }
   \line { \large { And all I gotta do is act naturally } }
   \vspace #1
   \line { \large { Well, I'll bet you I'm gonna be a big star } }
   \line { \large { Might win an Oscar, you can never tell } }
   \line { \large { The movies gonna make me a big star } }
   \line { \large { 'Cause I can play the part so well } }
   \vspace #1
   \line { \large { Well, I hope you'll come and see me in the movies } }
   \line { \large { Then I know that you will plainly see } }
   \line { \large { The biggest fool that ever hit the big time } }
   \line { \large { And all I gotta do is act naturally } }
   \vspace #3
   \line { \large { We'll make the scene about a man that's sad and lonely } }
   \line { \large { And begging down upon his bended knee } }
   \line { \large { I'll play the part and I won't need rehearsing } }
   \line { \large { All I have to do is act naturally } }
   \vspace #1
   \line { \large { Well, I'll bet you I'm gonna be a big star } }
   \line { \large { Might win an Oscar, you can never tell } }
   \line { \large { The movies gonna make me a big star } }
   \line { \large { 'Cause I can play the part so well } }
   \vspace #1
   \line { \large { Well, I hope you'll come and see me in the movies } }
   \line { \large { Then I'll know that you will plainly see } }
   \line { \large { The biggest fool that ever hit the big time } }
   \line { \large { And all I gotta do is act naturally } }
 }
}

